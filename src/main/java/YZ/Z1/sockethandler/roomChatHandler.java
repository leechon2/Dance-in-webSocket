package YZ.Z1.sockethandler;

import java.util.ArrayList;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class roomChatHandler extends TextWebSocketHandler{
	
	private ArrayList<WebSocketSession> randomUserList = new ArrayList<>();
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		String nickName = (String) session.getAttributes().get("nickName");
		JsonObject msg = new JsonObject();
        msg.addProperty("type", "connect");
        msg.addProperty("message", "새로운 사용자" + nickName + "님이 접속하였습니다.");
        msg.addProperty("nickName", nickName);
        for (WebSocketSession user : randomUserList) {
            	user.sendMessage(new TextMessage(new Gson().toJson(msg)));
            }
        String existingUsers = existingUsers();
        Gson gson = new Gson();
        String userListJson = gson.toJson(existingUsers);
        JsonObject chatterList = new JsonObject();
        chatterList.addProperty("type", "list");
        chatterList.addProperty("list", userListJson);
        System.out.println(chatterList);
        System.out.println("제이슨타입 리스트 : \n"+userListJson);
        
	    // 닉네임 중복 확인
	    if(randomUserList.size()!=0) {
	    	for (WebSocketSession user : randomUserList) {
	    		String userNickName = (String) user.getAttributes().get("nickName");
	    		// 이미 사용중일 경우
	    		if (userNickName.equals(nickName)) {
	    			JsonObject doublenickName = new JsonObject();
	    			doublenickName.addProperty("type", "double");
	    			doublenickName.addProperty("message", nickName + "은 이미 사용중인 닉네임입니다.");
	    			session.sendMessage(new TextMessage(new Gson().toJson(doublenickName)));
	    			return;
	    		}
	    	}
	    }
	    randomUserList.add(session); 
	    System.out.println("웹소켓 접속: " + nickName);
	    // 기존 접속자 명단 출력
        session.sendMessage(new TextMessage(new Gson().toJson(chatterList)));
    }
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
	    String payload = message.getPayload();
	    JsonObject jsonObject = JsonParser.parseString(payload).getAsJsonObject();
	    String type = jsonObject.get("type").getAsString();
	    System.out.println("웹소켓 에서 받은 메시지: "+payload);
	    String sendId = jsonObject.get("CHATTING_REQID").getAsString();
	    String respId = jsonObject.get("CHATTING_RESPID").getAsString();
	    String msg = jsonObject.get("CHATTING_MSG").getAsString();
	    String loginId = (String)session.getAttributes().get("loginId"); 
	    switch (type) {
	    	// 1:1 매칭 대화 발송
	        case "message":
        		for (WebSocketSession user : randomUserList) {
        			if(user.getAttributes().get("nickName").equals(respId)){
        				user.sendMessage(new TextMessage(new Gson().toJson(jsonObject)));
	        		}
	        	}
            break;
	    }
	}
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		String loginId = (String) session.getAttributes().get("loginId");
		System.out.println(loginId+" 접속 종료");
		randomUserList.remove(session);
	}
	public String existingUsers() {
		String userList = "";
		System.out.println(userList);
		if(randomUserList.size()!=0) {
			for(int i= 0; i < randomUserList.size(); i++) {
				String userNickName = (String)randomUserList.get(i).getAttributes().get("nickName");
				if(i == 0) {
					userList = userList + userNickName;
					System.out.println("인덱스 0일때 : "+ userList );
				}else {
					userList = userList +"_"+ userNickName;
					System.out.println("인덱스가 0이 아닐때 : "+ userList );
				}
			}
			System.out.println("이미 접속중인 이용자: "+userList);
		}
		if(userList.equals("")) {
			return null;	
		}else {
			return userList;
		}
	}
}
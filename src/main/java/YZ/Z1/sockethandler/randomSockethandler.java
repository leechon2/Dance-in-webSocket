package YZ.Z1.sockethandler;

import java.util.ArrayList;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import YZ.Z1.dao.MemberDao;

public class randomSockethandler extends TextWebSocketHandler{
	
	/* 대화상대 대기자 명단 */
	private ArrayList<WebSocketSession> randomUserList = new ArrayList<>();
	private ArrayList<String> queue = new ArrayList<>();
	private Random random = new Random();
	@Autowired
	MemberDao md; 
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.println("웹소켓 접속: " + (String) session.getAttributes().get("nickName"));
		System.out.println("현재 대기자 명단\n"+queue);
		String nickName = (String) session.getAttributes().get("nickName");
		String user_id = (String) session.getAttributes().get("loginId");
		JsonObject msg = new JsonObject();
		randomUserList.add(session);
		System.out.println(queue.size());
		/* 대기자가 없어, 방을 만들고 대기 */
		if(queue.size() == 0) {
			msg.addProperty("type", "createRoom");
			/* 세션 대기자 표기 */
			queue.add(user_id);
			System.out.println(queue.size());
//			내 프로필 사진 저장용
			msg.addProperty("myimg", md.selectUserProfileImg((String)session.getAttributes().get("loginId")).split("_")[0]);
			/* 이용자 화면 출력 메시지 */
			session.sendMessage(new TextMessage(new Gson().toJson(msg)));
		}else {
			System.out.println(queue.size());
			/* 이미 대기자가 있을경우 */ 	
			msg.addProperty("type", "enterRoom");
			/*대화 매칭 상대*/
			String talkPerson = queue.get((random.nextInt(queue.size())));
			/* 참가자 닉네임 */
			msg.addProperty("nickName", nickName);
			msg.addProperty("myimg", md.selectUserProfileImg((String)session.getAttributes().get("loginId")).split("_")[0]);
			for(WebSocketSession user : randomUserList) {
				/* 나와의 채팅 방지 */
				if( user.getAttributes().get("loginId").equals(talkPerson) && !user.getAttributes().get("loginId").equals(user_id)){
					/* 대화 상대 프로필 이미지 */
					String img = md.selectUserProfileImg((String)user.getAttributes().get("loginId"));
					img = img.split("_")[0];
					msg.addProperty("img", img);
					
					/*대화 상대 아이디 */
					String userId = (String)user.getAttributes().get("loginId");
					msg.addProperty("userId", userId);
					for(int i = 0; i < queue.size(); i++) {
					    	if(queue.get(i).equals((String) session.getAttributes().get("loginId"))){
					    		queue.remove(i);
					    		System.out.println(queue.size());
					    		break;
				    	}
				    }
					/*대화 상대 닉네임*/
					String userNickName = (String) user.getAttributes().get("nickName");
					msg.addProperty("userNickName", userNickName);
					session.sendMessage(new TextMessage(new Gson().toJson(msg)));
					break;
				}
			}
		}
	}
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
	    String payload = message.getPayload();
	    JsonObject jsonObject = JsonParser.parseString(payload).getAsJsonObject();
	    String type = jsonObject.get("type").getAsString();
	    String userId = jsonObject.get("userId").getAsString();
	    System.out.println("웹소켓 에서 받은 메시지: "+payload);
	    switch (type) {
	    	// 1:1 매칭 대화 발송
	        case "message":
        		for (WebSocketSession user : randomUserList) {
        			if(user.getAttributes().get("loginId").equals(userId)){
        				user.sendMessage(new TextMessage(new Gson().toJson(jsonObject)));
        				break;
	        		}
	        	}
        		break;
	        case "findChat": // 대화 종료시 방장에게 안내
	        	for (WebSocketSession user : randomUserList) {
	        		if(user.getAttributes().get("loginId").equals(userId)){
	        			jsonObject.addProperty("message", "상대가 방을 나갔습니다.");
	        			queue.add((String)user.getAttributes().get("loginId"));
	        			user.sendMessage(new TextMessage(new Gson().toJson(jsonObject)));
        				break;
	        		}
	        	}
	        	break;
	        case "awayFromChat": // 대화창 종료시 방장에게 안내
	        	for (WebSocketSession user : randomUserList) {
        			if(user.getAttributes().get("loginId").equals(userId)){
        				jsonObject.addProperty("message", "상대의 접속이 종료되었습니다.");
        				queue.add((String)user.getAttributes().get("loginId"));
        				user.sendMessage(new TextMessage(new Gson().toJson(jsonObject)));
        				break;
	        		}
	        	}
	        	break;
	        case "enter": //대화방 입장시 방장에게 내 정보 전달
	        	String nickName = (String) session.getAttributes().get("nickName");
	        	for (WebSocketSession user : randomUserList) {
        			//수신자 확인
	        		if(user.getAttributes().get("loginId").equals(userId)){
//	        			접속알림
	        			jsonObject.addProperty("message", nickName+"님이 입장하였습니다.");
//        				접속자 아이디
        				jsonObject.addProperty("userId", (String)session.getAttributes().get("loginId"));
//        				접속자 닉네임
        				jsonObject.addProperty("userNickName", nickName);
        				String img = md.selectUserProfileImg((String)session.getAttributes().get("loginId"));
        				img = img.split("_")[0];
//        				접속자 프로필 사진
        				jsonObject.addProperty("img", img );
        				user.sendMessage(new TextMessage(new Gson().toJson(jsonObject)));
        			}	
        		}
	        	break;
	    }
	}
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		String loginId = (String) session.getAttributes().get("loginId");
	    for(int i = 0; i < queue.size(); i++) {
	    	if(queue.get(i).equals((String) session.getAttributes().get("loginId"))){
	    		queue.remove(i);
	    		break;
	    	}
	    }
	    System.out.println(loginId + " 접속 종료");
	    System.out.println(queue);
	    randomUserList.remove(session);
	}
	
	// 대화 종료 후 기존 대상 처리
}
package YZ.Z1.sockethandler;

import java.io.IOException;
import java.net.http.WebSocket;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import YZ.Z1.dao.ChattingDao;

public class Sockethandler extends TextWebSocketHandler{
	
	private Set<WebSocketSession> connectUserSet = new HashSet<>();
	
	@Autowired
	ChattingDao cd;
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
	    
	    String loginId = (String) session.getAttributes().get("loginId");
	    System.out.println("웹소켓 접속: " + loginId);
        connectUserSet.add(session); // 새로운 세션을 목록에 추가
        // 새로운 접속자를 제외한 다른 사용자들에게 접속 알림 메시지 전송
        JsonObject msg = new JsonObject();
        msg.addProperty("type", "connect");
        msg.addProperty("loginId", loginId);
        for (WebSocketSession user : connectUserSet) {
            if (!user.equals(session)) {
            	user.sendMessage(new TextMessage(new Gson().toJson(msg)));
            }
        }
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
//	        	DB에 대화 내용 저장
	        	if(cd.insertMessage(sendId, respId, msg)==1) {
	        		for (WebSocketSession user : connectUserSet) {
	        			if(user.getAttributes().get("loginId").equals(respId)){
	        				user.sendMessage(new TextMessage(new Gson().toJson(jsonObject)));
	        			}
	        		}
	        	}
	            break;
	    }
	}
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		String loginId = (String) session.getAttributes().get("loginId");
		System.out.println(loginId+" 접속 종료");
		connectUserSet.remove(session);
	}

}
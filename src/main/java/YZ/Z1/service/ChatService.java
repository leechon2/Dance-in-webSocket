package YZ.Z1.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import YZ.Z1.dao.ChattingDao;
import YZ.Z1.dao.MemberDao;
import YZ.Z1.dto.MemberDto;
@Service
public class ChatService {

	@Autowired
	ChattingDao cd;
	@Autowired
	MemberDao md;
	
	public ArrayList<MemberDto> getMachingList(String loginId) {
		ArrayList<String> opponentList = new ArrayList<String>();
		for(HashMap<String, String> user_id : cd.selectMatchingList(loginId)) {
			if(user_id.get("MIN_ID").equals(loginId)) {
				opponentList.add(user_id.get("MAX_ID"));
			}else {
				opponentList.add(user_id.get("MIN_ID"));
			}
		}
		
		System.out.println("내가 요청한 매칭 리스트 + 내가 받은 매칭 리스트: \n"+ opponentList);
		//조회할 아이디에 클라이언트 아이디 추가
		opponentList.add(loginId);
		ArrayList<MemberDto> md = new ArrayList<MemberDto>();
		for(String user_id : opponentList) {
			MemberDto mDto = cd.selectchatingList(user_id); 
			mDto.setUser_img( mDto.getUser_img().split("_")[0] );
			md.add(mDto);
		}
		System.out.println(md);
		return md;
	}

	public ArrayList<HashMap<String, String>> selectchathistory(String user1, String user2) {
		System.out.println("채팅내용 요청");
		ArrayList<HashMap<String, String>> history = cd.selectChattingList(user1, user2);
		System.out.println(history);			
		
		return history;
	}
	public String selectUserNickName(String attribute) {
		return md.selectUserNickName(attribute); 
	}
}

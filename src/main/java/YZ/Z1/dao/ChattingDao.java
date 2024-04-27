package YZ.Z1.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;

import YZ.Z1.dto.MatchingDto;
import YZ.Z1.dto.MemberDto;

public interface ChattingDao {

	ArrayList<HashMap<String, String>> selectMatchingList(@Param("id")String loginId);

	MemberDto selectchatingList(@Param("user_id")String user_id);

	int insertMessage( @Param("user_id")String chatting_sendid, @Param("user_reid")String chatting_receiveid, @Param("user_msg")String chatting_msg);

	ArrayList<HashMap<String, String>> selectChattingList(@Param("chatting_sendid")String user1, @Param("chatting_receiveid")String user2);

}

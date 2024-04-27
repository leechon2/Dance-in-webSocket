package YZ.Z1.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

import YZ.Z1.dto.MatchingxyDTO;
import YZ.Z1.dto.MemberDto;

public interface MemberDao {
	
	int insertRegister(MemberDto mdto);

	String SelectLogin(@Param("id")String id, @Param("pw")String pw);

	int insertcoordinates(@Param("id")String user_id, @Param("x")String x, @Param("y")String y);

	MatchingxyDTO selectXY(@Param("userid") String userid);

	String selectUserProfileImg(String userid);

	int updateProfile(MemberDto mdto);

	int updatecoordinates(@Param("userId")String user_id, @Param("x")String x, @Param("y")String y);

	int deletedate(@Param("startId") String startId, @Param("regdate") String regdate);

	String selectUserNickName(String userid);

}

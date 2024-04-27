package YZ.Z1.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;

import YZ.Z1.dto.BlockDTO;
import YZ.Z1.dto.BookMarkDTO;
import YZ.Z1.dto.CalendarDTO;
import YZ.Z1.dto.MBTIDTO;
import YZ.Z1.dto.MatchingxyDTO;
import YZ.Z1.dto.MemberDto;

public interface MatchingDAO {

	ArrayList<HashMap<String, String>> matchingList(@Param("startId")String startId,@Param("startx") double intstartx,
			@Param("starty") double intstarty);

	ArrayList<MemberDto> profileList(@Param("startId") String startId, @Param("distInfUser") String distInfUser);

	ArrayList<MBTIDTO> mbtiResult(@Param("user_id")  String user_id,@Param("startId") String startId);

	int respList(@Param("distInfUser")  String distInfUser,@Param("startId")  String startId);

	int agreedClick(@Param("startId") String startId,@Param("userId") String userId);

	int banClick(@Param("startId") String startId, @Param("userId") String userId);

	int bookMarkClick(@Param("startId") String startId, @Param("userId") String userId);

	ArrayList<BookMarkDTO> BookMarkList(@Param("startTime") String startTime,@Param("lastTime") String lastTime,@Param("startId") String startId);

	ArrayList<MemberDto> profileInfo(@Param("userId") String userId);

	int BookMarkDeleteClick(@Param("startId") String startId,@Param("userId") String userId);

	int insertBlock(@Param("startId") String startId,@Param("userId") String userId);

	ArrayList<BlockDTO> BlockList(@Param("startTime") String startTime,@Param("lastTime") String lastTime,@Param("startId") String startId);

	int BlockDeleteClick(@Param("startId") String startId,@Param("userId") String userId);

	int updateBlock(@Param("startId") String startId,@Param("userId") String userId);

	int updateBookMark(@Param("startId") String startId,@Param("userId") String userId);

	int updateBookMarkDel(@Param("startId") String startId,@Param("userId") String userId);

	ArrayList<MemberDto> waitMatcing(@Param("startTime") String startTime,@Param("lastTime") String lastTime,@Param("startId") String startId);

	int updateMatching(@Param("startId") String startId,@Param("userId") String userId);

	ArrayList<MemberDto> mainList(@Param("startId") String startId);

	MemberDto Profile(@Param("userId") String userId);

	int calendarInfo(CalendarDTO event);

	ArrayList<CalendarDTO> calnedarList(@Param("startId") String startId);

	ArrayList<MemberDto> successMatching(@Param("startId") String startId,@Param("startTime") String startTime,@Param("lastTime") String lastTime);

	int successClick(@Param("startId") String startId,@Param("userId") String userId);

	int rejectClick(@Param("startId") String startId,@Param("userId") String userId);

	ArrayList<MemberDto> respMatcing(@Param("startTime") String startTime,@Param("lastTime") String lastTime,@Param("startId") String startId);

}

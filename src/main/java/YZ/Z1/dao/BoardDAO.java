package YZ.Z1.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import YZ.Z1.dto.BoardCommentDTO;
import YZ.Z1.dto.BoardDTO;
import YZ.Z1.dto.BoardLikeDTO;

public interface BoardDAO {

	int insertBoard(BoardDTO boardInfo);

	int selectMaxBoardNum();

	ArrayList<BoardDTO> selectBoardList();

	BoardDTO selectBoard(int boardnumber);

	ArrayList<BoardDTO> selectBoardListByRecent();

	ArrayList<BoardCommentDTO> selectBoardCommentList(int boardnumber);

	int insertComment(BoardCommentDTO boardComment);

	int updateBoardComment(BoardCommentDTO modComment);
	int updateComment(@Param("fixComment") String fixComment, @Param("commentNumber") int commentNumber);

	int selectMaxCommentNum();

	int updateViews(int boardNumber);

	int deleteComment(int commentNumber);

	ArrayList<BoardDTO> getSearchList(String searchContent);

	int getBoardLikes(int boardnumber);

	int insertBoardLikes(@Param("boardnumber") int boardnumber, @Param("loginId") String loginId);

	int deleteBoardLikes(@Param("boardnumber") int boardnumber, @Param("loginId") String loginId);

	BoardLikeDTO findBoardLikesAll(@Param("boardnumber") int boardnumber, @Param("loginId") String loginId);

	int updateBoardtitle(@Param("boardnumber") int boardnumber, @Param("fixtitle") String fixtitle);

	int updateBoardContent(@Param("boardnumber") int boardnumber, @Param("fixContent") String fixContent);

	BoardDTO selectOtherBoard(@Param("boardnumber") int boardnumber, @Param("findType") String findType);

	ArrayList<BoardDTO> getHotList();

	ArrayList<BoardDTO> getViewList();

	int updateBoard(BoardDTO boardInfo);

	ArrayList<BoardDTO> getMyBoardList(@Param("startId") String startId);

	ArrayList<BoardDTO> selectByCondition(@Param("condition") String condition, @Param("searchText")String searchText);

	int deleteBoard(@Param("boardnumber") String boardnumber,@Param("startId") String startId);


	


}

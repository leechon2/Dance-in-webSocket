package YZ.Z1.service;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import YZ.Z1.dao.BoardDAO;
import YZ.Z1.dto.BoardCommentDTO;
import YZ.Z1.dto.BoardDTO;
import YZ.Z1.dto.BoardLikeDTO;


@Service
public class BoardService {
	
	@Autowired
	private BoardDAO bddao;
	

	// 게시글 인서트 메서드
	public int registBoard(BoardDTO boardInfo, String savePath) throws IllegalStateException, IOException {
		System.out.println("service - registBoard");
		/* 파일명을 저장할 변수 */
		System.out.println("savePath : "+savePath);
		String dtofileName = "";
		for (MultipartFile file : boardInfo.getBoardfile()) {
			System.out.println("업로드한 Img name: " + file.getOriginalFilename());
			String originFileName = file.getOriginalFilename();
			String fileExtension = originFileName.substring( originFileName.indexOf(".") );
			String fileName = UUID.randomUUID().toString()+fileExtension;
			dtofileName += fileName+",";	
            file.transferTo(new File(savePath, fileName));
        }
		boardInfo.setBoardimg(dtofileName.substring(0, dtofileName.length()-1));//
		System.out.println(boardInfo); // 등록 아이디, 등록 제목, 등록 내용, 등록 이미지
		
		int maxNum = bddao.selectMaxBoardNum(); // "0"
		int insertNum = maxNum+1;
		boardInfo.setBoardnumber(insertNum);
		
		return bddao.insertBoard(boardInfo);
	}

	public ArrayList<BoardDTO> getBoardList() {
		System.out.println("service - getBoardList");
		
		return bddao.selectBoardList();
	}

	public BoardDTO findBoardByNum(int boardnumber) {
		
		return bddao.selectBoard(boardnumber);
	}

	public ArrayList<BoardDTO> findBoardByRecent() {
		// TODO Auto-generated method stub
		return bddao.selectBoardListByRecent();
	}

	public ArrayList<BoardCommentDTO> findBoardComment(int boardnumber) {
		return bddao.selectBoardCommentList(boardnumber);
	}

	public int registComment(BoardCommentDTO boardComment) {
		
		int maxNum = bddao.selectMaxCommentNum(); // "0"
		int insertNum = maxNum+1;
		boardComment.setComment_number(insertNum);
		return bddao.insertComment(boardComment);
		
	}

	public int updateComment(String fixComment, int commentNumber) {
		
		return bddao.updateComment(fixComment, commentNumber);
	}

	public int deleteComment(int commentNumber) {
		
		return bddao.deleteComment(commentNumber);
	}

	public int updateViews(int boardNumber) {
		return bddao.updateViews(boardNumber);
	}

	public ArrayList<BoardDTO> getSearchList(String searchContent) {

		return bddao.getSearchList(searchContent);
	}

	public int findBoardLikes(int boardnumber) {
		return bddao.getBoardLikes(boardnumber);
	}

	public int registBoardLike(int boardnumber, String loginId) {
		return bddao.insertBoardLikes(boardnumber, loginId);
	}

	public int deleteBoardLike(int boardnumber, String loginId) {
		return bddao.deleteBoardLikes(boardnumber, loginId);
	}

	public BoardLikeDTO findBoardLikesAll(int boardnumber, String loginId) {

		return bddao.findBoardLikesAll(boardnumber, loginId);
	}

	public int updateTitle(int boardnumber, String fixtitle) {
		
		return bddao.updateBoardtitle(boardnumber, fixtitle);
	}

	public int ContentUpdate(int boardnumber, String fixContent) {

		return bddao.updateBoardContent(boardnumber, fixContent);
	}

	public BoardDTO findOtherBoard(int boardnumber, String findType) {
		
		return bddao.selectOtherBoard(boardnumber, findType);
	}

	public int modifyBoardLiked(int boardnumber, String user_id, String typeOption) {
		if(typeOption.equals("cancel")) {
			return bddao.deleteBoardLikes(boardnumber, user_id);
		} else {
			return bddao.insertBoardLikes(boardnumber, user_id);
		}
	}

	public int modifyBoardComment(BoardCommentDTO modComment) {
		// TODO Auto-generated method stub
		return bddao.updateBoardComment(modComment);
	}

	public ArrayList<BoardDTO> getHotList() {
		ArrayList<BoardDTO> hotList = bddao.getHotList();
		return hotList;
	}

	public ArrayList<BoardDTO> getViewList() {
		ArrayList<BoardDTO> viewList = bddao.getViewList();
		return viewList;
	}

	public int updateBoard(String newFileName, BoardDTO boardInfo,String savePath) throws IllegalStateException, IOException {
		
		System.out.println("service - registBoard");
		/* 파일명을 저장할 변수 */
		System.out.println("savePath : "+savePath);
		String dtofileName = newFileName;// 
		for (MultipartFile file : boardInfo.getBoardfile()) {
			System.out.println("업로드한 Img name: " + file.getOriginalFilename());
			String originFileName = file.getOriginalFilename();
			String fileExtension = originFileName.substring( originFileName.indexOf(".") );
			String fileName = UUID.randomUUID().toString()+fileExtension;
			dtofileName += fileName+",";	
            file.transferTo(new File(savePath, fileName));
        }
		boardInfo.setBoardimg(dtofileName.substring(0, dtofileName.length()-1));//
		System.out.println(boardInfo); // 등록 아이디, 등록 제목, 등록 내용, 등록 이미지
		
	
		int updateResult = bddao.updateBoard(boardInfo);
		
		return updateResult;
		
	}

	public ArrayList<BoardDTO> getMyBoardList(String startId) {
		ArrayList<BoardDTO> MyboardInfo = bddao.getMyBoardList(startId);
		return MyboardInfo;
	}

	 public ArrayList<BoardDTO> selectByCondition(String condition, String searchText) {
	    	Set<String> set = new HashSet<>();
	        set.add("BOARD_TITLE");
	        set.add("BOARD_ID");
	        set.add("BOARD_CONTENT");

			if(set.contains(condition)){
				System.out.println("정상 진입");
				return bddao.selectByCondition(condition, searchText);
			}
			System.out.println("왜 여기 있니?");
			ArrayList<BoardDTO> nohack = new ArrayList<>();
			BoardDTO firstboard = new BoardDTO();
			firstboard.setBoardtitle("해킹하지마");
			firstboard.setBoardimg("'${sessionScope.userimg}'");
			firstboard.setBoardid("'${sessionScope.loginId}'");
			firstboard.setBoardviews(99999);
			firstboard.setBoardregdate("rightNow");
			nohack.add(firstboard);
			return nohack;
	    }

	public int deleteBoard(String boardnumber, String startId) {
		int deleteResult = bddao.deleteBoard(boardnumber,startId);
		return deleteResult;
	}


}

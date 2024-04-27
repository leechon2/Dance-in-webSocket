package YZ.Z1.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;

import YZ.Z1.dto.BoardCommentDTO;
import YZ.Z1.dto.BoardDTO;
import YZ.Z1.dto.BoardLikeDTO;
import YZ.Z1.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	private HttpSession session;

	@Autowired
	private BoardService bdsvc;

	// 게시판 이동 메서드
	@RequestMapping(value = "/BoardList-page")
	public ModelAndView boardList() {
		System.out.println("/BoardList-page - 게시판 페이지 이동 요청");

		ModelAndView mav = new ModelAndView();

		ArrayList<BoardDTO> boardList = bdsvc.getBoardList();
		mav.addObject("bdList", boardList);
		mav.setViewName("BoardList-page");
		System.out.println(boardList);
		return mav;
	}

	@RequestMapping(value = "/BoardWrite-page")
	public String boardWritePage() {
		return "BoardWrite-page";
	}

	// 게시글 작성 메서드
	@RequestMapping(value = "/BoardWrite")
	public ModelAndView registProduct(BoardDTO boardInfo, RedirectAttributes ra) {
		System.out.println("/BoardWrite - 게시글 등록 요청");
		ModelAndView mav = new ModelAndView();

		String loginId = (String) session.getAttribute("loginId");
		if (loginId == null) {
			/* 비로그인 시 */
			mav.setViewName("redirect:/login");
			ra.addFlashAttribute("msg", "로그인 후 이용 가능합니다.");
			return mav;
		}

		/* 로그인 시 */
		boardInfo.setBoardid(loginId); // 아이디 저장
		String savePath = session.getServletContext().getRealPath("resources/boardImgUpload");

		try {
			bdsvc.registBoard(boardInfo, savePath); // 게시글 정보 Service에서 처리
			System.out.println("게시글 등록 성공");
			ra.addFlashAttribute("msg", "게시글이 등록 되었습니다.");
			mav.setViewName("redirect:/BoardList-page");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("게시글 등록 실패");
			ra.addFlashAttribute("msg", "게시글 등록을 실패하였습니다.");
			mav.setViewName("redirect:/BoardWrite-page");
		}

		return mav;
	}

	// 게시글 상세 페이지 이동 메서드
	@RequestMapping(value = "/Board-page")
	public ModelAndView boardViews(int boardnumber) {
		ModelAndView mav = new ModelAndView("Board-page");

		String loginId = (String) session.getAttribute("loginId");

		int updateViews = bdsvc.updateViews(boardnumber);

		if (updateViews > 0) {
			System.out.println("조회수 증가");
		} else {
			System.out.println("조회수 증가 실패");
		}

		/* 글 조회 */
		mav.addObject("board", bdsvc.findBoardByNum(boardnumber));

		/* 최신 글 5개 조회 */
		mav.addObject("recentBoardList", bdsvc.findBoardByRecent());

		/* 이전 글 */
		mav.addObject("previousBoard", bdsvc.findOtherBoard(boardnumber, "prev"));

		/* 다음 글 */
		mav.addObject("nextBoard", bdsvc.findOtherBoard(boardnumber, "next"));

		/* 댓글 조회 */
		mav.addObject("bdCommentList", bdsvc.findBoardComment(boardnumber));

		/* 좋아요 카운트 조회 */
		mav.addObject("bdLikesCount", bdsvc.findBoardLikes(boardnumber));

		BoardLikeDTO bdLikesCheck = bdsvc.findBoardLikesAll(boardnumber, loginId);

		System.out.println(bdLikesCheck);
		/* 좋아요 컬럼 전체 조회 */
		mav.addObject("bdLikesCheck", bdLikesCheck);

		return mav;
	}

	// 댓글 작성 메서드
	@RequestMapping(value = "/CommentWrite")
	public ModelAndView commentWrite(BoardCommentDTO boardComment, RedirectAttributes ra) {
		ModelAndView mav = new ModelAndView();

		String loginId = (String) session.getAttribute("loginId");
		if (loginId == null) {
			/* 비로그인 시 */
			mav.setViewName("redirect:/login");
			ra.addFlashAttribute("msg", "로그인 후 이용 가능합니다.");
			return mav;
		}
		boardComment.setComment_user(loginId);
		try {
			bdsvc.registComment(boardComment);

			System.out.println("댓글 등록 성공");
			ra.addFlashAttribute("msg", "댓글이 등록 되었습니다.");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("댓글 등록 실패");
			ra.addFlashAttribute("msg", "댓글 등록을 실패하였습니다.");
		}
		mav.setViewName("redirect:/Board-page?boardnumber=" + boardComment.getBoard_number());
		return mav;
	}

	@RequestMapping(value = "/modifyComment")
	public String modifyComment(BoardCommentDTO modComment, RedirectAttributes ra) {

		int result = bdsvc.modifyBoardComment(modComment);
		if (result > 0) {
			ra.addFlashAttribute("msg", "댓글이 수정 되었습니다.");
		} else {
			ra.addFlashAttribute("msg", "댓글 수정에 실패 하였습니다.");
		}

		return "redirect:/Board-page?boardnumber=" + modComment.getBoard_number();
	}

	// 댓글 삭제
	@RequestMapping(value = "/deleteComment")
	public @ResponseBody String deleteComment(int commentNumber) {

		int commentdelete = bdsvc.deleteComment(commentNumber);

		if (commentdelete == 1) {
			System.out.println("변경됐습니다");
			return "Y";
		} else {
			System.out.println("실패");
			return "N";
		}
	}

	// 검색 기능
	@RequestMapping(value = "/searchTilte")
	public ModelAndView searchTitle(String searchContent) {
		ModelAndView mav = new ModelAndView();

		ArrayList<BoardDTO> searchList = bdsvc.getSearchList(searchContent);
		mav.addObject("bdList", searchList);

		mav.setViewName("BoardList-page"); // 검색 결과 페이지
		System.out.println(searchList);

		return mav;
	}

	// 댓글 수정
	@RequestMapping(value = "/requestFixComment")
	public @ResponseBody String commentFix(String fixComment, int commentNumber) {

		int commentUpdate = bdsvc.updateComment(fixComment, commentNumber);

		if (commentUpdate == 1) {
			System.out.println("변경됐습니다");
			return "Y";
		} else {
			System.out.println("실패");
			return "N";
		}
	}

	// 게시글 좋아요
	@RequestMapping(value = "/toggleBoardLike")
	@ResponseBody
	public String toggleBoardLike(int boardnumber, String typeOption) {
		String loginId = (String) session.getAttribute("loginId");
		if (loginId == null) {
			return -1 + "";
		}
		return bdsvc.modifyBoardLiked(boardnumber, loginId, typeOption) + "";
	}

	/* 
	 * 
	 * */

	@RequestMapping(value = "/hotList")
	public @ResponseBody String hotList() {
		System.out.println("hotList");
		ArrayList<BoardDTO> hotList = bdsvc.getHotList();
		System.out.println(hotList);
		return new Gson().toJson(hotList);
	}

	@RequestMapping(value = "/viewList")
	public @ResponseBody String viewList() {
		System.out.println("viewList");
		ArrayList<BoardDTO> viewList = bdsvc.getViewList();
		System.out.println(viewList);

		return new Gson().toJson(viewList);
	}

	// updateBoard
	@RequestMapping(value = "/BoardUpdate-page")
	public ModelAndView BoardUpdate(String boardnumber, String boardid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("board", bdsvc.findBoardByNum(Integer.parseInt(boardnumber)));

		return mav;
	}

	/// BoardUpdate 글수정 버튼
	@RequestMapping(value = "/BoardUpdate")
	public ModelAndView BoardUpdate(String[] delboardimg, BoardDTO boardInfo, String originF, RedirectAttributes ra)
			throws IllegalStateException, IOException {
		String savePath = session.getServletContext().getRealPath("resources/boardImgUpload/");
		ModelAndView mav = new ModelAndView();
		String[] originList = originF.split(",");
		String newFileName = "";
		for (String f : originList) {
			boolean check = false;
			System.out.println("f:" + f);

			for (String delfile : delboardimg) {
				String filename = delfile;
				File filetoDelete = new File(savePath + delfile);
				if (filetoDelete.exists()) {
					if (filetoDelete.delete()) {
						System.out.println("파일 " + filename + " 삭제 성공");
					} else {
						System.out.println("파일 " + filename + " 삭제 실패");
					}
				} else {
					// 임의 수정했을 가능성
					System.out.println("파일 " + filename + "이 없습니다.");
				}

				check = delfile.equals(f);
				if (check) {
					break;
				}
			}

			if (check) {

				continue;
			}
			newFileName += f + ",";
		}
		// 1,2,5,6
		System.out.println(newFileName);
		int result = bdsvc.updateBoard(newFileName, boardInfo, savePath);
		System.out.println(result);
		if (result > 0) {
			ra.addFlashAttribute("msg", "수정에 성공 하였습니다.");
			mav.setViewName("redirect:/Board-page?boardnumber=" + boardInfo.getBoardnumber());
		} else {
			ra.addFlashAttribute("msg", "수정에 실패 하였습니다.");
			mav.setViewName("redirect:/BoardUpdate-page?boardnumber=" + boardInfo.getBoardnumber() + "&boardid="
					+ boardInfo.getBoardid());
		}

		return mav;
	}

	@RequestMapping(value = "/mainBoardList")
	public @ResponseBody String mainBoardList() {
		ArrayList<BoardDTO> boardList = bdsvc.getBoardList();
		ArrayList<BoardDTO> mainBoardList = new ArrayList<BoardDTO>();
		int listsize = 0;
		if (boardList.size() > 3) {
			listsize = 3;
		} else {
			listsize = boardList.size();
		}
		for (int i = 0; i < listsize; i++) {
			BoardDTO mainBoardInfo = new BoardDTO();

			mainBoardInfo.setBoardtitle(boardList.get(i).getBoardtitle());
			mainBoardInfo.setBoardid(boardList.get(i).getBoardid());
			mainBoardInfo.setBoardimg(boardList.get(i).getBoardimg().split(",")[0]);
			mainBoardInfo.setBoardregdate(boardList.get(i).getBoardregdate());
			mainBoardInfo.setBoardviews(boardList.get(i).getBoardviews());
			mainBoardInfo.setBoardnumber(boardList.get(i).getBoardnumber());

			mainBoardList.add(mainBoardInfo);

		}

		return new Gson().toJson(mainBoardList);
	}

	@RequestMapping(value = "/pageNumList")
	public @ResponseBody String pageNumList(String startIdx, String endIndex) {
		System.out.println(startIdx + "::::::" + endIndex);

		return "Y";
	}

	@RequestMapping(value = "/boardListInfo")
	public @ResponseBody String boardListInfo() {
		ArrayList<BoardDTO> boardList = bdsvc.getBoardList();
		ArrayList<BoardDTO> mainBoardList = new ArrayList<BoardDTO>();

		for (int i = 0; i < boardList.size(); i++) {
			BoardDTO mainBoardInfo = new BoardDTO();

			mainBoardInfo.setBoardtitle(boardList.get(i).getBoardtitle());
			mainBoardInfo.setBoardid(boardList.get(i).getBoardid());
			mainBoardInfo.setBoardimg(boardList.get(i).getBoardimg().split(",")[0]);
			mainBoardInfo.setBoardregdate(boardList.get(i).getBoardregdate());
			mainBoardInfo.setBoardviews(boardList.get(i).getBoardviews());
			mainBoardInfo.setBoardnumber(boardList.get(i).getBoardnumber());

			mainBoardList.add(mainBoardInfo);

		}
		return new Gson().toJson(mainBoardList);
	}

	@RequestMapping(value = "/searchByCondition")
	public @ResponseBody String boardListInfosearchByCondition(String condition, String searchText) {
		System.out.println("BoardController - serchByCondition");
		System.out.println("검색 조건: " + condition + " 검색어: " + searchText);
		ArrayList<BoardDTO> boardList = bdsvc.selectByCondition(condition, searchText);
		System.out.println("검색 결과 : " + boardList);

		System.out.println("ready for return");
		return new Gson().toJson(boardList);
	}

	@RequestMapping(value = "/deleteBoard")
	public @ResponseBody String deleteBoard(String boardnumber, String startId) {

		int deleteResult = bdsvc.deleteBoard(boardnumber, startId);
		if (deleteResult > 0) {
			return "Y";
		} else {
			return "N";
		}

	}

}

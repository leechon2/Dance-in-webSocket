package YZ.Z1.Matching;

import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import YZ.Z1.dto.BlockDTO;
import YZ.Z1.dto.BoardDTO;
import YZ.Z1.dto.BookMarkDTO;
import YZ.Z1.dto.MBTIDTO;
import YZ.Z1.dto.MatchingxyDTO;
import YZ.Z1.dto.MemberDto;
import YZ.Z1.service.BoardService;
import YZ.Z1.service.MemberService;

@Controller
public class MatchingConroller {

	@Autowired
	private BoardService bdsvc;
	
	@Autowired
	private MatchingService mtsvc;

	@Autowired
	HttpSession session;
	@Autowired
	private MemberService ms;
//매칭자와의 거리 계산과 주변 사람들의 정보를 출력
	@RequestMapping(value = "/matchingList")
	public @ResponseBody String matchingList(String startx, String starty, String startId) throws Exception {
		System.out.println("matchingList controller");
		double intstartx = Double.parseDouble(startx);
		double intstarty = Double.parseDouble(starty);
		ArrayList<HashMap<String, String>> distInfoList = mtsvc.matchingList(startId, intstartx, intstarty);
		System.out.println("거리 계산을 위한 정보"+distInfoList);
		ArrayList<MemberDto> profileInfoList = new ArrayList<MemberDto>();
//		System.out.println(distInfoList);
		HashMap<String, String> distInfo = new HashMap<String, String>();
		for (HashMap<String, String> map : distInfoList) {
			// COORDINATES_LATITUDE와 COORDINATES_LOGITUDE 값 추출
			String ylatitude = map.get("COORDINATES_LATITUDE");
			String xlogitude = map.get("COORDINATES_LOGITUDE");
			String distInfUser = map.get("COORDINATES_USER");
//			System.out.println(ylatitude);
//			System.out.println(xlogitude);
//			System.out.println(distInfUser);
			try {
				int resultList = mtsvc.respList(distInfUser, startId);
			} catch (Exception e) {
				e.printStackTrace();
			}
//			MemberDTO profileList = mtsvc.profileList(distInfUser);
//			if(profileList != null){
//				profileInfoList.add( profileList )  ;
//			}
			String dist = mtsvc.jsonlocation(startx, starty, ylatitude, xlogitude);
			distInfo.put(distInfUser, dist);
			System.out.println("dist"+dist);
			profileInfoList = mtsvc.profileList(startId,distInfUser);
		}
		//distInfo  test02:50,   test03:70
		
		System.out.println("목록" + profileInfoList);

		ArrayList<HashMap<String, String>> profileList = new ArrayList<HashMap<String, String>>();
		if(profileList.size() > 0 ) {
			for (int i = 0; i < profileInfoList.size(); i++) {
				String userId = profileInfoList.get(i).getUser_id();
				ArrayList<MBTIDTO> mbtiResultList = mtsvc.mbtiResult(userId, startId);
				HashMap<String, String> mbti = new HashMap<String, String>();
				mbti.put("id", profileInfoList.get(i).getUser_id());
				mbti.put("nickname", profileInfoList.get(i).getUser_nickname());
				mbti.put("mbtipoint", mbtiResultList.get(0).getInteraction());
				mbti.put("dist",distInfo.get(profileInfoList.get(i).getUser_id()));
				mbti.put("userimg", profileInfoList.get(i).getUser_img().split("_")[0]);
	
				// System.out.println("mbti 결과 값" + mbtiResultList.get(0).getInteraction());
				profileList.add(mbti);
			}
		}
			
		return new Gson().toJson(profileList);// 5,4,
	}
	//시작 시간과 마지막 시간 상대방의 아이디를 BookMarkList 한 정보를 조회
	@RequestMapping(value = "/BookMarkList")
	public @ResponseBody String BookMarkList(String startTime, String lastTime, String startId) {
		System.out.println("시작시간" + startTime + " 마지막시간" + lastTime + "아이디" + startId);

		ArrayList<BookMarkDTO> BookMarkList = mtsvc.BookMarkList(startTime, lastTime, startId);
		ArrayList<HashMap<String, String>> BookMarkMemberList = new ArrayList<HashMap<String, String>>();
		System.out.println(BookMarkList);
		for (int i = 0; i < BookMarkList.size(); i++) {
			String userId = BookMarkList.get(i).getBookmark_targetid();
			ArrayList<MemberDto> profileInfoList = mtsvc.profileInfo(userId);

			System.out.println(profileInfoList.get(0).getUser_id());
			ArrayList<MBTIDTO> mbtiResultList = mtsvc.mbtiResult(userId, startId);
			HashMap<String, String> bookmarkInfo = new HashMap<String, String>();
			bookmarkInfo.put("id", profileInfoList.get(0).getUser_id());
			bookmarkInfo.put("nickname", profileInfoList.get(0).getUser_nickname());
			bookmarkInfo.put("mbtiresult", mbtiResultList.get(0).getInteraction());
			bookmarkInfo.put("userimg", profileInfoList.get(i).getUser_img().split("_")[0]);
			BookMarkMemberList.add(bookmarkInfo);
		}

		return new Gson().toJson(BookMarkMemberList);
	}
	//시작 시간과 마지막 시간 상대방의 아이디를 BlockList 한 정보를 조회
	@RequestMapping(value = "/BlockList")
	public @ResponseBody String BlockList(String startTime, String lastTime, String startId) {
		System.out.println("BlockList");
		ArrayList<BlockDTO> blockInfoList = mtsvc.BlockList(startTime, lastTime, startId);
		ArrayList<HashMap<String, String>> blockMemberList = new ArrayList<HashMap<String, String>>();
		for (int i = 0; i < blockInfoList.size(); i++) {
			String userId = blockInfoList.get(i).getBlock_targetid();
			System.out.println(userId);
			ArrayList<MemberDto> profileInfoList = mtsvc.profileInfo(userId);
			ArrayList<MBTIDTO> mbtiResultList = mtsvc.mbtiResult(userId, startId);
			HashMap<String, String> blockInfo = new HashMap<String, String>();
			System.out.println(profileInfoList);
			blockInfo.put("id", profileInfoList.get(0).getUser_id());
			blockInfo.put("nickname", profileInfoList.get(0).getUser_nickname());
			blockInfo.put("mbtiresult", mbtiResultList.get(0).getInteraction());
			blockInfo.put("userimg", profileInfoList.get(i).getUser_img().split("_")[0]);
			
			blockMemberList.add(blockInfo);
		}
		return new Gson().toJson(blockMemberList);
	}
	//	//시작 시간과 마지막 시간 상대방의 아이디를 waitMatcing 한 정보를 조회

	@RequestMapping(value = "/waitMatcing")
	public @ResponseBody String waitMatcing(String startTime, String lastTime, String startId) {
		System.out.println("시작아이디" + startId + "<>");
		ArrayList<MemberDto> matchingInfoList = mtsvc.waitMatcing(startTime, lastTime, startId);
		ArrayList<HashMap<String, String>> profileList = new ArrayList<HashMap<String, String>>();

		for (int i = 0; i < matchingInfoList.size(); i++) {
			String userId = matchingInfoList.get(i).getUser_id();
			System.out.println(userId);
			ArrayList<MBTIDTO> mbtiResultList = mtsvc.mbtiResult(userId, startId);
			HashMap<String, String> matchingInfo = new HashMap<String, String>();
			matchingInfo.put("id", userId);
			matchingInfo.put("nickname", matchingInfoList.get(i).getUser_nickname());
			matchingInfo.put("mbtiresult", mbtiResultList.get(0).getInteraction());
			matchingInfo.put("userimg", matchingInfoList.get(i).getUser_img().split("_")[0]);
			profileList.add(matchingInfo);
		}

		return new Gson().toJson(profileList);
	}

	@RequestMapping(value = "/agreedClick")
	public @ResponseBody String agreedClick(String startId, String userId) {
		System.out.println("시작아이디" + startId + "<>" + "상대방 아이디" + userId);
		int agreeResult = mtsvc.agreedClick(startId, userId);
		System.out.println(agreeResult);
		if (agreeResult > 0) {
			return "Y";
		} else {
			return "N";
		}

	}

	@RequestMapping(value = "/banClick")
	public @ResponseBody String banClick(String startId, String userId) {
		System.out.println("시작아이디" + startId + "<>" + "상대방 아이디" + userId);
		int banResult = mtsvc.banClick(startId, userId);
		int blockResult = mtsvc.insertBlock(startId, userId);
		if (banResult > 0) {

			return "Y";

		} else {
			return "N";
		}
	}

	@RequestMapping(value = "/bookMarkClick")
	public @ResponseBody String bookMarkClick(String startId, String userId) {
		
		System.out.println("시작아이디" + startId + "<>" + "상대방 아이디" + userId);
		try {
			int bookMarkResult = mtsvc.bookMarkClick(startId, userId);
		} catch (Exception e) {
			// TODO: handle exception
		}
	
		int updateBookMarkResult = mtsvc.updateBookMark(startId, userId);
		if (updateBookMarkResult > 0) {
			return "Y";
		} else {
			return "N";
		}
	}

	@RequestMapping(value = "/BookMarkDeleteClick")
	public @ResponseBody String BookMarkDeleteClick(String startId, String userId) {
		System.out.println("시작아이디" + startId + "<>" + "상대방 아이디" + userId);
		int bookMarkDelResult = mtsvc.BookMarkDeleteClick(startId, userId);
		int updateBookMarkDelResult = mtsvc.updateBookMarkDel(startId, userId);
		System.out.println(bookMarkDelResult);
		if (bookMarkDelResult > 0) {
			return "Y";
		} else {
			return "N";
		}
	}

	@RequestMapping(value = "/BlockDeleteClick")
	public @ResponseBody String BlockDeleteClick(String startId, String userId) {
		System.out.println("시작아이디" + startId + "<>" + "상대방 아이디" + userId);
		int blockDelResult = mtsvc.BlockDeleteClick(startId, userId);
		int updateBlockResult = mtsvc.updateBlock(startId, userId);
		if (blockDelResult > 0) {
			return "Y";
		} else {
			return "N";
		}

	}

	@RequestMapping(value = "/updateMatching")
	public @ResponseBody String MatchingDeleteClick(String startId, String userId) {
		System.out.println("시작아이디 :" + startId + "<>" + "상대방 아이디 :" + userId);
		int updateMatchingResult = mtsvc.updateMatching(startId, userId);
		if (updateMatchingResult > 0) {
			return "Y";
		} else {
			return "N";
		}
	}

	@RequestMapping(value = "/mainList")
	public @ResponseBody String mainList(String startId) {
		System.out.println("시작아이디" + startId);
		ArrayList<MemberDto> maininfoList = mtsvc.mainList(startId);
		
		
		ArrayList<HashMap<String, String>> mainpageList = new ArrayList<HashMap<String, String>>();
		int listsize =0;
		if(maininfoList.size()> 4) {
			listsize = 4;
		}else {
			listsize = maininfoList.size();
		}
		for (int i = 0; i < listsize; i++) {
			System.out.println("아이디들 >>>" + maininfoList.get(i).getUser_id());
			HashMap<String, String> mainpageInfo = new HashMap<String, String>();
			mainpageInfo.put("nickname", maininfoList.get(i).getUser_nickname());
			mainpageInfo.put("mbti", maininfoList.get(i).getUser_mbti());
			mainpageInfo.put("id", maininfoList.get(i).getUser_id());
			mainpageInfo.put("userimg", ms.selectUserProfileImg(maininfoList.get(i).getUser_id()));
			mainpageList.add(mainpageInfo);
		}
		return new Gson().toJson(mainpageList);
	}

	@RequestMapping(value = "/successMatching")
	public @ResponseBody String successMatching(String startId, String startTime, String lastTime) {
		System.out.println("successMatching controller");
		System.out.println(startTime.split("-"));
		ArrayList<MemberDto> matchingInfoList = mtsvc.successMatching(startId, startTime, lastTime);
		ArrayList<HashMap<String, String>> profileList = new ArrayList<HashMap<String, String>>();
		for (int i = 0; i < matchingInfoList.size(); i++) {
			String userId = matchingInfoList.get(i).getUser_id();
			System.out.println(userId);
			ArrayList<MBTIDTO> mbtiResultList = mtsvc.mbtiResult(userId, startId);
			HashMap<String, String> matchingInfo = new HashMap<String, String>();
			matchingInfo.put("id", userId);
			matchingInfo.put("nickname", matchingInfoList.get(i).getUser_nickname());
			matchingInfo.put("mbtiresult", mbtiResultList.get(0).getInteraction());
			matchingInfo.put("userimg", matchingInfoList.get(i).getUser_img().split("_")[0]);
			profileList.add(matchingInfo);
		}
		return new Gson().toJson(profileList);
	}
	@RequestMapping(value = "/successClick")
	public @ResponseBody String successClick(String startId, String userId) {
		int successResult = mtsvc.successClick(startId, userId);

		if (successResult > 0) {
			return "Y";
		} else {
			return "N";
		}
	}
	@RequestMapping(value = "/rejectClick")
		public @ResponseBody String rejectClick(String startId, String userId) {
			int rejectResult = mtsvc.rejectClick(startId, userId);

			if (rejectResult == 2) {
				return "Y";
			} else {
				return "N";
			}
	}
	@RequestMapping(value = "/MyInfoPage")
	public ModelAndView MyInfoPage() {
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("loginId")==null) {
			mav.setViewName("redirect:/");
			return mav;
		}
		String startId =  (String)session.getAttribute("loginId");
		MemberDto MyInfo = mtsvc.ProfileList(startId);
		System.out.println(MyInfo);
		String age = MyInfo.getUser_birth();

		if (age != null) {
			LocalDate birthDate = LocalDate.parse(age, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			LocalDate currenDate = LocalDate.now();
			
			Period period = Period.between(birthDate, currenDate);
			int todayAge = period.getYears();
			System.out.println(todayAge);
			mav.addObject("todayAge", todayAge);
		} 
		
		mav.addObject("MyInfo",MyInfo);
		mav.setViewName("MyInfoPage");
		
		return mav;
	}
	
	@RequestMapping(value ="/respMatcing")
	public @ResponseBody String respMatcing(String startTime, String lastTime, String startId) {
		
		System.out.println("시작아이디" + startId + "<>");
		ArrayList<MemberDto> matchingInfoList = mtsvc.respMatcing(startTime, lastTime, startId);
		ArrayList<HashMap<String, String>> profileList = new ArrayList<HashMap<String, String>>();

		for (int i = 0; i < matchingInfoList.size(); i++) {
			String userId = matchingInfoList.get(i).getUser_id();
			System.out.println(userId);
			ArrayList<MBTIDTO> mbtiResultList = mtsvc.mbtiResult(userId, startId);
			HashMap<String, String> matchingInfo = new HashMap<String, String>();
			matchingInfo.put("id", userId);
			matchingInfo.put("nickname", matchingInfoList.get(i).getUser_nickname());
			matchingInfo.put("mbtiresult", mbtiResultList.get(0).getInteraction());
			matchingInfo.put("userimg", matchingInfoList.get(i).getUser_img().split("_")[0]);
			profileList.add(matchingInfo);
		}

		return new Gson().toJson(profileList);
	}
	
	@RequestMapping(value = "/myInfoBoardPage")
	public @ResponseBody String myInfoBoardPage(String startId) {
		System.out.println("시작아이디"+startId);
		ArrayList<BoardDTO> MyboardInfo = bdsvc.getMyBoardList(startId);
		System.out.println(MyboardInfo);
		return new Gson().toJson(MyboardInfo);
	}

}

package YZ.Z1.Matching;

import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;

import YZ.Z1.dto.CalendarDTO;
import YZ.Z1.dto.MemberDto;
import YZ.Z1.service.MemberService;

@Controller
public class ProfileController {
	@Autowired
	private MatchingService mtsvc;
	@Autowired
	private MemberService msvc;

	@Autowired
	HttpSession session;

	@RequestMapping(value = "/Profilenew")
	public ModelAndView ProfileList(String userId) {
		System.out.println("시작아이디" + userId);
		ModelAndView mav = new ModelAndView();
		session.setAttribute("logindId", userId);
		MemberDto userInfoList = mtsvc.ProfileList(userId);
		System.out.println(userInfoList);
		String age = userInfoList.getUser_birth();
		if (age != null) {
			LocalDate birthDate = LocalDate.parse(age, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			LocalDate currenDate = LocalDate.now();

			Period period = Period.between(birthDate, currenDate);
			int todayAge = period.getYears();
			System.out.println(todayAge);
			mav.addObject("todayAge", todayAge);
		}
		try {
			int resultList = mtsvc.respList(userId, (String)session.getAttribute("loginId"));
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		String userImgList = userInfoList.getUser_img();
		String[] imgArray = userImgList.split("_");
		List<String> imgList = Arrays.asList(imgArray);
		String gender= "";
		if(userInfoList.getUser_gender().equals(1)) {
			
			gender = "남자";
		}else {
			gender= "여자";
		}
		mav.addObject("gender",gender);
		
		mav.addObject("imgList",imgList);
		mav.addObject("userInfoList", userInfoList);
		
		mav.setViewName("Profilenew");

		return mav;
	}

	@RequestMapping(value = "/calendarInfo", method = RequestMethod.POST)
	public @ResponseBody String calendarInfo(CalendarDTO event) {
		System.out.println(event);

		int calendarResult = mtsvc.calendarInfo(event);
		if (calendarResult == 1) {
			return "Y";
		} else {
			return "N";
		}

	}

	@RequestMapping(value = "/calnedarList")
	public @ResponseBody String calnedarList(String startId) {

		System.out.println(startId);

		ArrayList<CalendarDTO> calendarDateInfo = mtsvc.calnedarList(startId);
		System.out.println(calendarDateInfo);
		return new Gson().toJson(calendarDateInfo);
	}

	@RequestMapping(value = "/updateProfile")
	public ModelAndView updateProfile(MemberDto mdto, RedirectAttributes ra,
			@RequestParam("user_imgfiles") MultipartFile[] user_imgfiles, @RequestParam("user_oriimg")String user_oriimg, @RequestParam("dontUpload")String dontUpload,
			@RequestParam("x") String x, @RequestParam("y") String y, @RequestParam("main") String main) {
		System.out.println("enter");
		ModelAndView mav = new ModelAndView();
		mdto.setUser_id((String) session.getAttribute("loginId"));
		System.out.println("사용자 아이디: "+mdto.getUser_id());
		if(user_imgfiles.length > 0) {
			System.out.println("0번 사진의 크기: "+user_imgfiles[0].getSize() );
			ArrayList<MultipartFile> list = new ArrayList<MultipartFile>();
			for (MultipartFile file : user_imgfiles) {
				if(file.getSize()>0) {
					list.add(file);
				}
			}
			mdto.setUser_imgfiles(list.toArray(new MultipartFile[list.size()]));
		}else {
			System.out.println("새로운 이미지 파일이 없습니다.");
			mdto.setUser_imgfiles(null);
		}
		int profileUpdateResult = msvc.updateProfile(mdto, x, y, user_oriimg/* 삭제할 파일명 */ , main, dontUpload/* 업로드 하지 않을 파일명 */);
		if(profileUpdateResult>0) {
			System.out.println("프로필 업데이트 성공");
			ra.addFlashAttribute("msg","업데이트 성공!");
		}else {
			System.out.println("프로필 업데이트 내용 없음");
			ra.addFlashAttribute("msg","업데이트 내용이 없습니다!");
		}
		System.out.println(mdto);
		
		mav.setViewName("redirect:/MyInfoPage");
		return mav;
	}

	@RequestMapping(value = "deletedate")
	public @ResponseBody String deletedate(String startId, String regdate) {
		System.out.println(startId + regdate);
		int deletedateResult = msvc.deletedate(startId, regdate);
		if (deletedateResult == 1) {
			return "Y";
		} else {
			return "N";
		}
	}

}

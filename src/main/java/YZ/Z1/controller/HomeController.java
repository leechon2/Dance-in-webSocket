package YZ.Z1.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;

import YZ.Z1.service.MemberService;

@Controller
public class HomeController {

	@Autowired
	private MemberService ms;
	
	@Autowired
	private HttpSession session;

	@RequestMapping(value = "/")
	public String home() {
		
		if(session.getAttribute("loginId") != null) {
			return "Project";
		}else{
			return"registerpage";
		}

	
	}

	@RequestMapping(value = "/login")
	public String main() {
		return "Project";
	}

	@RequestMapping(value = "/registmember")
	public String registmember() {
		return "redirect:/";
	}

	@RequestMapping(value = "/ChatSelect-page")
	public String ChatSelectpage() {
		return "ChatSelect-page";
	}

	@RequestMapping(value = "/matching-page")
	public String matchingpage() {
		return "matching-page";
	}

	@RequestMapping(value = "/BookMarkList-page")
	public String BookMarkListpage() {
		return "BookMarkList-page";
	}

	@RequestMapping(value = "/BLockList-page")
	public String BLockListpage() {
		return "BLockList-page";
	}

	@RequestMapping(value = "/MatchingListpage")
	public String MatchingListpage() {
		return "MatchingListpage";
	}

	@RequestMapping(value = "/MyCalendar-page")
	public String MyCalendarpage() {
		return "MyCalendar-page";
	}

	@RequestMapping(value = "/logout")
	public String logout(RedirectAttributes ra) {
		ra.addFlashAttribute("msg", "로그아웃 되었습니다.");
		session.setAttribute("loginId",null);
		return "redirect:/registerpage";
	}

	@RequestMapping(value = "/profileupdate")
	public ModelAndView profileupdate() {
		ModelAndView mav = new ModelAndView(); 
		String[] imgsArray = ms.selectUserimgs((String)session.getAttribute("loginId")).split("_");
		Gson gson = new Gson(); // Gson 객체를 생성해야 합니다.
	    String imgs = gson.toJson(imgsArray);
		mav.addObject("imgs", imgs); // ms = memberservice
		mav.setViewName("profileupdate");
		return mav;
	}


	@RequestMapping(value = "/registerpage")
	public String regiserpage() {

		return "registerpage";
	}
	


//	${pageContext.request.contextPath }
//	<%@ include file="/WEB-INF/views/navbar.jsp" %>
//	${pageContext.request.contextPath }/resources/CSS/
}

package YZ.Z1.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import YZ.Z1.dto.MatchingxyDTO;
import YZ.Z1.dto.MemberDto;
import YZ.Z1.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService ms;
	@Autowired
	HttpSession session;
	
	@RequestMapping(value="/insertRegist")
	public ModelAndView insertRegister(MemberDto mdto, RedirectAttributes ra, @RequestParam("user_imgfiles") 
								MultipartFile[] user_imgfiles, @RequestParam("x") String x, @RequestParam("y") String y,
								@RequestParam("main") String main) {
		mdto.setUser_imgfiles(user_imgfiles);
		System.out.println(mdto);
		System.out.println(main);
		System.out.println("x 좌표: "+ x +"y 좌표: " + y);
		ModelAndView mav = new ModelAndView();
		
		if(ms.insertRegister(mdto, x, y, main) == 1) {
			mav.setViewName("redirect:/");
			ra.addFlashAttribute("msg", "회원가입 성공");
		}else {
			mav.setViewName("redirect:/");
			ra.addFlashAttribute("msg", "회원가입 실패");
		}
		return mav;
	}
	@RequestMapping(value="/selectLogin")
	public ModelAndView selectLogin(String userid, String userpw, RedirectAttributes ra) {
		ModelAndView mav = new ModelAndView();
		System.out.println("로그인 시도");
		if(ms.SelectLogin(userid, userpw) == 1) {
			System.out.println("로그인 성공");
			MatchingxyDTO xyInfo = ms.selectXY(userid);
			session.setAttribute("userx", xyInfo.getCoordinates_logitude());
			session.setAttribute("usery", xyInfo.getCoordinates_latitude());
			session.setAttribute("loginId", userid);
			session.setAttribute("userimg",ms.selectUserProfileImg(userid));
			mav.setViewName("Project");
		}else {
			System.out.println("로그인 실패");
			ra.addFlashAttribute("msg", "로그인 실패. _아이디와 비번을 확인 후, 다시 시도해 주세요."); 
			mav.setViewName("redirect:/");
		}
	return mav;	
	}
	@RequestMapping(value="/checkId")
	public @ResponseBody String checkId(String mid){
		if(ms.checkId(mid)==1) {
			return "Y";
		}else {
			return "N";
		}	
	}
}

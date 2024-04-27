package YZ.Z1.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;

import YZ.Z1.service.ChatService;

@Controller
public class ChatController {

	@Autowired
	HttpSession session;
	@Autowired
	ChatService cs;
	
	@RequestMapping(value="/matchingChat")
	public ModelAndView matchingChat() {
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("loginId")!=null) {
			
		}
		
		
		return mav;
	}
	@RequestMapping(value = "/Chat-page")
	public ModelAndView Chatpage( RedirectAttributes ra) {
		ModelAndView mav = new ModelAndView();
		System.out.println("채팅창 호출");
		
		if(session.getAttribute("loginId")!=null) {
			mav.addObject("machingList", cs.getMachingList((String)session.getAttribute("loginId")));
			mav.setViewName("Chat-page");
		}else {
			ra.addFlashAttribute("msg", "로그아웃되었습니다.");
			mav.setViewName("redirect:/");
		}
		return mav;
	}
	@RequestMapping(value="/chathistory")
	public @ResponseBody String chathistory(@RequestParam("user_id")String user_id) {
		System.out.println(user_id);
		System.out.println((String)session.getAttribute("loginId"));
		ArrayList<HashMap<String, String>> chattinghistory = cs.selectchathistory(user_id, (String)session.getAttribute("loginId"));
		Gson gson = new Gson();
		String json = gson.toJson(chattinghistory);
		return json;
	}
	@RequestMapping(value = "/randomChat")
	public ModelAndView randomChat( RedirectAttributes ra) {
		ModelAndView mav = new ModelAndView();
		System.out.println("랜덤 채팅창 호출");
		if(session.getAttribute("loginId")!=null) {
			session.setAttribute("nickName", cs.selectUserNickName((String)session.getAttribute("loginId")));
			mav.setViewName("randomChat");
		}else {
			ra.addFlashAttribute("msg", "로그아웃되었습니다.");
			mav.setViewName("redirect:/");
		}
		return mav;
	}
}

package net.aisw;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpSession;
import net.aisw.dto.userDTO;
import net.aisw.service.UserService;



@Controller
public class MainController {

    private final FCfansite FCfansite;
	@Autowired
	UserService usv;

    MainController(FCfansite FCfansite) {
        this.FCfansite = FCfansite;
    }
	
	@RequestMapping("/index")
	public String StartPage() {
		return "index";
	}
	@RequestMapping("/logout")
	public String Logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/index";
	}
	
	@RequestMapping("/login")
	public String LoginPage() {
		return "/user/login";
	}
	@RequestMapping("/register")
	public String RegisterPage() {
		return "/user/register";
	}
	@RequestMapping("/mypage")
	public String MypagePage() {
		return "/user/mypage";
	}
	
	@RequestMapping("/communityMain")
	public String CommunityMain_Page() {
	      	return "/community/communityMain";
	    }
	
	
	@RequestMapping("/login/response")
	public String Login_ResponsePage(@ModelAttribute userDTO userVo, HttpSession session) {
		
		int log = usv.getLogin(userVo);
		System.out.println(log);
		if(log == 1) {	
			session.setAttribute("userID", userVo.getU_id());
			return "redirect:/index";
		}
		return "redirect:/login";
	}
	
	@RequestMapping("/register/response")
	public String Register_ResponsePage(@ModelAttribute userDTO userVo) {
		
		boolean regi = usv.getRegister(userVo);
		if(regi) {			
			return "redirect:/login";
		}
		return "redirect:/register";
	}
	
	@RequestMapping("/mypage/response")
	public String MypagePage_Response(@ModelAttribute userDTO userVo, HttpSession session) {
		String userID = (String) session.getAttribute("userID");
		String userName = (String) session.getAttribute("userName");
		
		if(userName == null) {
			System.out.println("세션 생성");
			HashMap<String, String> userInfo = usv.getUserInfo(userID);
			System.out.println(userInfo);
			session.setAttribute("userName", userInfo.get("u_name"));
			session.setAttribute("userBirth", userInfo.get("u_birth"));
			session.setAttribute("userJoinDate", userInfo.get("u_joinDate"));
			session.setAttribute("userWhy", userInfo.get("u_why"));
		}
		return "redirect:/mypage";
	}
	
	
}

package net.aisw;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletResponse;
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
	
	@RequestMapping("/login/response")
	public String Login_ResponsePage(@ModelAttribute userDTO userVo, HttpSession session, HttpServletResponse response) throws IOException {
		
		int log = usv.getLogin(userVo);
		System.out.println(log);
		if(log == 1) {	
			session.setAttribute("userID", userVo.getU_id());

		}
		else {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script> alert('아이디 또는 비밀번호가 틀립니다.');");
			out.println("history.go(-1); </script>");
			
			out.close();
		}
		return "redirect:/index";
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
	@RequestMapping("/replacePassword/response")
	public String ReplacePassword_Response(@ModelAttribute userDTO userVo) {
		
		boolean ReplacePwd = usv.ReplacePassword(userVo);
		System.out.println(ReplacePwd);
		return "redirect:/mypage";
	}
	
	
}

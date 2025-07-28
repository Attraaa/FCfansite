package net.aisw;


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
	
	@RequestMapping("/login")
	public String LoginPage() {
		return "/register/login";
	}
	@RequestMapping("/register")
	public String RegisterPage() {
		return "/register/register";
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
	
	
}

package net.aisw;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class Test01 {

	@GetMapping("/hello")
	
	@ResponseBody
	public String HelloMain() {
		
		System.out.println("HelloSpringBoot의 Hello Main 함수 실행됨.");
		System.out.println("");
		
		// 실행 방법
		// 1) http://localhost:8080
		// 2) http://127.0.0.01:8080
		
		return "Hello Spring Boot";
	}
	
	@RequestMapping("/index")
	public String StartPage() {
		return "index";
	}
	
	@RequestMapping("/register/login")
	public String LoginPage() {
		return "/register/login";
	}
	@RequestMapping("/register/register")
	public String RegisterPage() {
		return "/register/register";
	}
	
	
}

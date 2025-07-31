package net.aisw;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.LocalDate;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import net.aisw.dto.HistoryDTO;
import net.aisw.dto.userDTO;
import net.aisw.service.HistoryService;
import net.aisw.service.UserService;

@Controller
public class MainController {

    private final FCfansite FCfansite;

    @Autowired
    private UserService usv;

    @Autowired
    private HistoryService hService;

    public MainController(FCfansite FCfansite) {
        this.FCfansite = FCfansite;
    }

    // ✅ index
    @RequestMapping("/index")
    public String StartPage(Model model) {
        HistoryDTO history = hService.getHistory();
        if (history != null) {
            model.addAttribute("h_title", history.getH_title());
            model.addAttribute("h_content", history.getH_content());
            model.addAttribute("h_photo", history.getH_photo());
            model.addAttribute("h_date", history.getH_date());

            LocalDate today = LocalDate.now();
            LocalDate historyDate = history.getH_date().toLocalDate();
            int diffYear = today.getYear() - historyDate.getYear();
            model.addAttribute("diffYear", diffYear);
        }
        return "index";
    }

    // ✅ logout
    @RequestMapping("/logout")
    public String Logout(HttpSession session) {
        session.invalidate();
        return "redirect:/index";
    }

    // ✅ 페이지 연결
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
    @RequestMapping("/history_none")
    public String History_none(HttpSession session) {
    	session.setAttribute("history_none", "yes");
        return "redirect:/index";
    }

    // ✅ 로그인 응답
    @RequestMapping("/login/response")
    public String Login_ResponsePage(@ModelAttribute userDTO userVo, HttpSession session, HttpServletResponse response) throws IOException {
        int log = usv.getLogin(userVo);
        System.out.println(log);

        if (log == 1) {
            String userName = usv.getUserName(userVo.getU_id());
            session.setAttribute("userID", userVo.getU_id());
            session.setAttribute("userName", userName);
            return "redirect:/index";
        } else {
            response.setCharacterEncoding("UTF-8");
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('아이디 또는 비밀번호가 틀립니다.'); history.go(-1);</script>");
            out.close();
            return null; // 이미 응답 끝남
        }
    }

    // ✅ 회원가입 응답
    @RequestMapping("/register/response")
    public String Register_ResponsePage(@ModelAttribute userDTO userVo) {
        boolean regi = usv.getRegister(userVo);
        return regi ? "redirect:/login" : "redirect:/register";
    }

    // ✅ 마이페이지 응답
    @RequestMapping("/mypage/response")
    public String MypagePage_Response(@ModelAttribute userDTO userVo, HttpSession session) {
        String userID = (String) session.getAttribute("userID");
        Date userBirth = (Date) session.getAttribute("userBirth");

        if (userBirth == null) {
            System.out.println("세션 생성");
            HashMap<String, String> userInfo = usv.getUserInfo(userID);
            System.out.println(userInfo);
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

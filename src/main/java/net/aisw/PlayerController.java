package net.aisw;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import net.aisw.dto.PlayerDTO;
import net.aisw.service.PlayerService;
import net.aisw.service.UserService;



@Controller
public class PlayerController {
    @Autowired
    private PlayerService pService;
    @Autowired
    private UserService uService;

    @RequestMapping("/player")
    public String playerPage(Model model) {
        List<PlayerDTO> playerList = pService.getAllPlayers();
        model.addAttribute("playerList", playerList);
        return "player/player";
    }
    
    @RequestMapping("/playerRank")
    public String playerRankPage(Model model) {
        List<PlayerDTO> playerList = pService.getAllPlayers();
        model.addAttribute("playerList", playerList);
        return "player/playerRank";
    }
    
    @RequestMapping("/give_heart")
    public String giveHeart(@ModelAttribute PlayerDTO pVo, HttpSession session) {
    	int p_seq = pVo.getP_seq();
    	String userID = (String) session.getAttribute("userID");
    	
    	HashMap userInfo = uService.getUserInfo(userID);
    	int user_give_heart = (int)userInfo.get("u_give_heart");

    	if(user_give_heart == 0) {
    		uService.UserGiveHeart_plus(userID);
    		pService.GiveHeart(pVo);
    	}
    	
        return "redirect:/playerinfo/" + p_seq;
    }
    
    @RequestMapping("/playerinfo/{p_seq}")
    public String playerInfoPage(@ModelAttribute PlayerDTO pVo, Model model) {
        HashMap<String, String> playerInfo = pService.getPlayerInfo(pVo);
        System.out.println("Player Info: " + playerInfo);
        model.addAttribute("playerInfo", playerInfo);
        return "player/playerinfo";
    }
    
    
    

}

package net.aisw;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpSession;
import net.aisw.dto.communityDTO;
import net.aisw.service.CommunityService;
import net.aisw.service.UserService;

@Controller
public class CommunityController {

    @Autowired
    private CommunityService cmService;

    @RequestMapping("/CommunityMain")
    public String CommunityMain() {
    	   
        return "community/CommunityMain";
    }

    @RequestMapping("/PostCreate")//임시
    public String PostCreate() {
        return "community/PostCreate";
    }

    @PostMapping("/SavePost")
    public String SavePost(@ModelAttribute communityDTO cmVo, HttpSession session) {
        cmService.SavePost(cmVo);
        
        List<communityDTO> communityInfo = cmService.getCommunityInfo();
        session.setAttribute("communityInfo", communityInfo);
     
        return "redirect:/CommunityMain";
    }
    
}

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
    public String PostCreate(@ModelAttribute communityDTO cmVo) {
        System.out.println(cmVo);
        return "community/PostCreate";
    }

    @PostMapping("/SavePost")
    public String SavePost(@ModelAttribute communityDTO cmVo) {
        System.out.println(cmVo);
        cmService.SavePost(cmVo);
        return "community/CommunityMain";
    }
    
}

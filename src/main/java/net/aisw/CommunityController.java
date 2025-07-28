package net.aisw;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CommunityController {
    @GetMapping("/CommunityMain")
    public String CommunityMain() {
        return "CommunityMain";
    }

    @GetMapping("/PostCreate")
    public String PostCreate() {
        return "PostCreate";
    }
    
}

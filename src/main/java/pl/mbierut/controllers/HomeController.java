package pl.mbierut.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String sendHome() {
        return "redirect:/home";
    }

    @GetMapping("/home")
    public String welcomeHome(){
        return "home";
    }

}

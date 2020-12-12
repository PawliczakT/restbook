package Guzcce.restbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginRegister {

    //View of login page
    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public String login() {
        return "/loginPages/login";
    }

    //View of register page
    @RequestMapping(value = {"/register"}, method = RequestMethod.GET)
    public String register() {
        return "/loginPages/register";
    }


}

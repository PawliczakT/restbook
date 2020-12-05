package Guzcce.restbook.controller;


import Guzcce.restbook.model.User;
import Guzcce.restbook.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Optional;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    //View of selected user

    @RequestMapping(value = {"/user/{id}"}, method = RequestMethod.GET)
    public String viewSelectedUser(Model model, @PathVariable Long id) {
        Optional<User> user1 = userService.getUser(id);
        if(user1.isPresent()){
            model.addAttribute("user", user1.get());
            return "user/user";
        }
        else return "user/userNotFound";
    }
}

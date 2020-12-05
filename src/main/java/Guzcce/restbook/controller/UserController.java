package Guzcce.restbook.controller;

import Guzcce.restbook.repository.UserRepository;
import Guzcce.restbook.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

    @Autowired
    UserRepository userRepository;
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    //View of selected user

    @RequestMapping(value = {"/user/{id}"}, method = RequestMethod.GET)
    public String viewSelectedUser(Model model, @PathVariable String id) {
        model.addAttribute("user", userService.getUser(Long.parseLong(id)));
        return "user/user";
    }
}

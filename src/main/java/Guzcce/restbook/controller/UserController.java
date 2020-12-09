package Guzcce.restbook.controller;


import Guzcce.restbook.model.Review;
import Guzcce.restbook.model.User;
import Guzcce.restbook.service.ReviewService;
import Guzcce.restbook.service.UserService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;
import java.util.Optional;

@Controller
public class UserController {

    private final UserService userService;
    private final ReviewService reviewService;
    private final PasswordEncoder passwordEncoder;

    public UserController(UserService userService, ReviewService reviewService, PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.reviewService = reviewService;
        this.passwordEncoder = passwordEncoder;
    }

    //View of selected user
    @RequestMapping(value = {"/user/{username}"}, method = RequestMethod.GET)
    public String viewSelectedUser(Model model, @PathVariable String username) {
        Optional<User> user1 = userService.getUser(username);
        if(user1.isPresent()){
            model.addAttribute("user", user1.get());
            List<Review> reviews = reviewService.findReviewsByUserEquals(user1.get());
            model.addAttribute("reviews", reviews);
            return "user/user";
        }
        else return "user/userNotFound";
    }

    //Save user in database
    @RequestMapping(value = {"/addNewUser"}, method = RequestMethod.POST)
    public RedirectView postAddNewUser(@ModelAttribute User newUser) {
        newUser.setPassword(passwordEncoder.encode(newUser.getPassword()));
        userService.saveUser(newUser);
        return new RedirectView("/");
    }

    //Delete user
    @RequestMapping(value = {"/editUser/{username}"}, method = RequestMethod.POST)
    public RedirectView deleteUser(@PathVariable String username, @ModelAttribute User user) {
        userService.deleteUser(username);
        return new RedirectView("/");
    }

    //Save edit user
    @RequestMapping(value = {"/user/{username}"}, method = RequestMethod.POST)
    public RedirectView saveEditedUser(@PathVariable String username, @ModelAttribute User user) {
        userService.editUser(user, username);
        return new RedirectView("/user/{username}");
    }
}

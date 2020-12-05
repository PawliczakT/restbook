package Guzcce.restbook.controller;

import Guzcce.restbook.model.Restaurant;
import Guzcce.restbook.service.RestaurantService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;


@Controller
public class MainController {

    private final RestaurantService restaurantService;

    public MainController(RestaurantService restaurantService) {
        this.restaurantService = restaurantService;
    }

    //View of main page
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model) {
        List<Restaurant> list = restaurantService.findTop5ByOrderByAverageRateDesc();
        model.addAttribute("restaurant", list);
        return "index";
    }


}
package Guzcce.restbook.controller;

import Guzcce.restbook.model.Restaurant;
import Guzcce.restbook.repository.RestaurantRepository;
import Guzcce.restbook.service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;


@Controller
public class MainController {

    @Autowired
    RestaurantRepository restaurantRepository;
    private RestaurantService restaurantService;

    //View of main page
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model) {
        List<Restaurant> list = restaurantRepository.findTop5ByOrderByAverageRateDesc();
        model.addAttribute("restaurant", list);
        return "index";
    }


}
package Guzcce.restbook.controller;


import Guzcce.restbook.model.Restaurant;
import Guzcce.restbook.service.RestaurantService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class RestaurantController {


    private final RestaurantService restaurantService;

    public RestaurantController(RestaurantService restaurantService) {
        this.restaurantService = restaurantService;
    }

    //View of selected restaurant
    @RequestMapping(value = {"/allRestaurants/{id}"}, method = RequestMethod.GET)
    public String viewSelectedRestaurant(Model model, @PathVariable Long id) {
        restaurantService.getRestaurant(id).ifPresent(restaurant -> model.addAttribute("restaurant", restaurant ));
        return "restaurants/restaurant";
    }

    //View of all added restaurants
    @RequestMapping(value = {"/allRestaurants"}, method = RequestMethod.GET)
    public String viewAllRestaurants(Model model) {
        List<Restaurant> list = restaurantService.getAllRestaurants();
        model.addAttribute("restaurant", list);
        return "restaurants/allRestaurants";
    }

    //Get view of addRestaurant page
    @RequestMapping(value = {"/addRestaurant"}, method = RequestMethod.GET)
    public String getAddRestaurant(Model model) {
        List<Restaurant> list = restaurantService.getAllRestaurants();
        model.addAttribute("restaurant", list);
        return "restaurants/addRestaurant";
    }

    //Get view of editRestaurant page
    @RequestMapping(value = {"/editRestaurant/{id}"}, method = RequestMethod.GET)
    public String viewEditRestaurants(Model model, @PathVariable Long id) {
        restaurantService.getRestaurant(id).ifPresent(restaurant -> model.addAttribute("restaurant", restaurant));
        return "restaurants/editRestaurant";
    }



}

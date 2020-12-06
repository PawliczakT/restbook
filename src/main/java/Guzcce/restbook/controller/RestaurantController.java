package Guzcce.restbook.controller;


import Guzcce.restbook.model.Cuisine;
import Guzcce.restbook.model.Restaurant;
import Guzcce.restbook.service.CuisineService;
import Guzcce.restbook.service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
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
public class RestaurantController {

    private final CuisineService cuisineService;
    private final RestaurantService restaurantService;

    public RestaurantController(RestaurantService restaurantService, CuisineService cuisineService) {
        this.restaurantService = restaurantService;
        this.cuisineService = cuisineService;
    }

    //View of selected restaurant
    @RequestMapping(value = {"/allRestaurants/{id}"}, method = RequestMethod.GET)
    public String viewSelectedRestaurant(Model model, @PathVariable Long id) {
        Optional<Restaurant> restaurant1 = restaurantService.getRestaurant(id);
        if (restaurant1.isPresent()) {
            model.addAttribute("restaurant", restaurant1.get());
            return "restaurants/restaurant";
        } else return "restaurants/restaurantNotFound";
    }

    //View of all added restaurants
    @RequestMapping(value = {"/allRestaurants"}, method = RequestMethod.GET)
    public String viewAllRestaurants(Model model) {
        List<Restaurant> list = restaurantService.getAllRestaurants();
        List<Cuisine> cuisineList = cuisineService.getAllCuisines();
        List<Cuisine> top10CuisineList = cuisineService.findTop10();
        model.addAttribute("top10Cuisines", top10CuisineList);
        model.addAttribute("cuisine", cuisineList);
        model.addAttribute("restaurant", list);
        return "restaurants/allRestaurants";
    }

    //Get view of addRestaurant page
    @RequestMapping(value = {"/addRestaurant"}, method = RequestMethod.GET)
    public String getAddRestaurant(Model model) {
        List<Cuisine> cuisineList = cuisineService.getAllCuisines();
        List<Restaurant> list = restaurantService.getAllRestaurants();
        model.addAttribute("cuisine", cuisineList);
        model.addAttribute("restaurant", list);
        return "restaurants/addRestaurant";
    }

    //Save restaurant in database
    @RequestMapping(value = {"/addNewRestaurant"}, method = RequestMethod.POST)
    public RedirectView postAddNewTask(@ModelAttribute Restaurant newRestaurant) {
        restaurantService.saveRestaurant(newRestaurant);
        return new RedirectView("/");
    }


    //Get view of editRestaurant page
    @RequestMapping(value = {"/editRestaurant/{id}"}, method = RequestMethod.GET)
    public String viewEditRestaurants(Model model, @PathVariable Long id) {
        Optional<Restaurant> restaurant1 = restaurantService.getRestaurant(id);
        if (restaurant1.isPresent()) {
            List<Cuisine> cuisineList = cuisineService.getAllCuisines();
            model.addAttribute("cuisine", cuisineList);
            model.addAttribute("restaurant", restaurant1.get());
            return "restaurants/editRestaurant";
        } else return "restaurants/restaurantNotFound";
    }

}

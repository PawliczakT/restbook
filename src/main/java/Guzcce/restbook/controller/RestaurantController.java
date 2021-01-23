package Guzcce.restbook.controller;


import Guzcce.restbook.model.*;
import Guzcce.restbook.service.*;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.io.IOException;
import java.time.Instant;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;

import static java.util.Collections.singletonList;

@Controller
public class RestaurantController {

    private final CuisineService cuisineService;
    private final RestaurantService restaurantService;
    private final ReviewService reviewService;
    private final FileStorageService fileStorageService;

    public RestaurantController(RestaurantService restaurantService, CuisineService cuisineService, ReviewService reviewService,
                                FileStorageService fileStorageService) {
        this.restaurantService = restaurantService;
        this.cuisineService = cuisineService;
        this.reviewService = reviewService;
        this.fileStorageService = fileStorageService;
    }

    //View of selected restaurant
    @RequestMapping(value = {"/allRestaurants/{id}"}, method = RequestMethod.GET)
    public String viewSelectedRestaurant(Model model, @PathVariable Long id) {
        Optional<Restaurant> restaurant1 = restaurantService.getRestaurant(id);
        if (restaurant1.isPresent()) {
            List<Review> list = reviewService.findByRestaurant_IdAndOrderByReviewDate(restaurant1.get());
            model.addAttribute("review", list);
            model.addAttribute("restaurant", restaurant1.get());
            return "restaurants/restaurant";
        } else return "restaurants/restaurantNotFound";
    }

    //Save review in database
    @RequestMapping(value = {"/allRestaurants/{id}"}, method = RequestMethod.POST)
    public RedirectView postAddNewReview(@PathVariable Long id, @ModelAttribute Review newReview) {
        reviewService.saveReview(newReview);
        restaurantService.avgUpd(id);
        restaurantService.numOfRevUpd(id);
        return new RedirectView("/allRestaurants/{id}");
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
    public RedirectView postAddNewRestaurant(@ModelAttribute RestaurantDto newRestaurant) {
        restaurantService.saveRestaurant(toRestaurant(newRestaurant));
        return new RedirectView("/");
    }

    // Save edited Restaurant
    @RequestMapping(value = {"/editRestaurantSave/{id}"}, method = RequestMethod.POST)
    public RedirectView postEditRestaurant(@ModelAttribute RestaurantDto newRestaurantDto, @PathVariable("id") Long id) {
        Optional<Restaurant> oldRestaurant = restaurantService.getRestaurant(id);
        if (oldRestaurant.isPresent()) {
            Restaurant restaurant = oldRestaurant.get();
            Restaurant newRestaurant = toRestaurant(newRestaurantDto);

            restaurant.setImage(newRestaurant.getImage());
            restaurant.setName(newRestaurant.getName());
            restaurant.setPhone(newRestaurant.getPhone());
            restaurant.setAddress(newRestaurant.getAddress());
            restaurant.setDescription(newRestaurant.getDescription());
            restaurant.setCuisines(newRestaurantDto.getCuisines());

            restaurantService.saveRestaurant(restaurant);

            return new RedirectView("/allRestaurants/{id}");
        } else return new RedirectView("restaurants/restaurantNotFound");
    }

    // Delete restaurant
    @RequestMapping(value = {"/deleteRestaurant/{id}"}, method = RequestMethod.POST)
    public RedirectView deleteRestaurant(@PathVariable("id") Long id) {
        restaurantService.deleteRestaurant(id);
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

    @ResponseBody
    @RequestMapping(value = {"/avg/{id}"}, method = RequestMethod.GET)
    public Float avg(@PathVariable Long id) {
        return restaurantService.avg(id);
    }

    @ResponseBody
    @RequestMapping(value = {"/count/{id}"}, method = RequestMethod.GET)
    public Float count(@PathVariable Long id) {
        return restaurantService.count(id);
    }


    private Restaurant toRestaurant(RestaurantDto restaurantDto) {
        try {
            FileDB storedFile = fileStorageService.store(restaurantDto.getImage());
            return new Restaurant(restaurantDto.getName(), restaurantDto.getPhone(), restaurantDto.getAddress(), restaurantDto.getDescription(),
                    storedFile.getId(), Date.from(Instant.now()), new HashSet<>(singletonList(storedFile)), restaurantDto.getUser(), restaurantDto.getCuisines());
        } catch (IOException e) {
            throw new RuntimeException("Cos nie dziala", e);
        }
    }
}


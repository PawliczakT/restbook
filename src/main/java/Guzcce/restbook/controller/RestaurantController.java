package Guzcce.restbook.controller;


import static java.util.Collections.singletonList;

import Guzcce.restbook.model.Cuisine;
import Guzcce.restbook.model.FileDB;
import Guzcce.restbook.model.Restaurant;
import Guzcce.restbook.model.RestaurantDto;
import Guzcce.restbook.model.Review;
import Guzcce.restbook.service.CuisineService;
import Guzcce.restbook.service.FileStorageService;
import Guzcce.restbook.service.RestaurantService;
import Guzcce.restbook.service.ReviewService;
import java.io.IOException;
import java.time.Instant;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
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
            List<Review> list = reviewService.findByRestaurant_IdAndOrderByReviewDate();
            model.addAttribute("review", list);
            model.addAttribute("restaurant", restaurant1.get());
            return "restaurants/restaurant";
        } else return "restaurants/restaurantNotFound";
    }

    //Save review in database
    @RequestMapping(value = {"/allRestaurants/{id}"}, method = RequestMethod.POST)
    public RedirectView postAddNewReview(@ModelAttribute Review newReview) {
        reviewService.saveReview(newReview);
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

    private Restaurant toRestaurant(RestaurantDto restaurantDto) {
        try {
            FileDB storedFile = fileStorageService.store(restaurantDto.getImage());
            return new Restaurant(restaurantDto.getName(), restaurantDto.getPhone(), restaurantDto.getAddress(), restaurantDto.getDescription(),
                    storedFile.getId(), Date.from(Instant.now()), new HashSet<>(singletonList(storedFile)));
        } catch (IOException e) {
            throw new RuntimeException("Cos nie dziala", e);
        }
    }
}

package Guzcce.restbook.service;

import Guzcce.restbook.model.Restaurant;
import Guzcce.restbook.repository.RestaurantRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RestaurantService {
    private final RestaurantRepository restaurantRepository;

    public RestaurantService(RestaurantRepository restaurantRepository) {
        this.restaurantRepository = restaurantRepository;
    }

    public List<Restaurant> getAllRestaurants(){
        return restaurantRepository.findAll();
    }

    public Restaurant getRestaurant(Long id){
        return restaurantRepository.findById(id).orElse(null);
    }
}
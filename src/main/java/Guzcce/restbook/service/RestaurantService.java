package Guzcce.restbook.service;

import Guzcce.restbook.model.Restaurant;
import Guzcce.restbook.repository.RestaurantRepository;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RestaurantService {
    private final RestaurantRepository restaurantRepository;

    public RestaurantService(RestaurantRepository restaurantRepository) {
        this.restaurantRepository = restaurantRepository;
    }

    public List<Restaurant> getAllRestaurants(){
        return restaurantRepository.findAll();
    }

    public Optional<Restaurant> getRestaurant(Long id){
        return restaurantRepository.findById(id);
    }
}
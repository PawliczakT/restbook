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

    public List<Restaurant> findTop5ByOrderByAverageRateDesc(){
        return restaurantRepository.findTop5ByOrderByAverageRateDesc();
    }

    public Optional<Restaurant> getRestaurant(Long id){
        return restaurantRepository.findById(id);
    }

    public Restaurant saveRestaurant(Restaurant restaurant) {
        return restaurantRepository.save(restaurant);
    }

    public Float avgUpd(Long id){ return restaurantRepository.avgUpd(id); }

    public Integer numOfRevUpd(Long id){ return restaurantRepository.numOfRevUpd(id); }

    public Float avg(Long id){ return restaurantRepository.avg(id); }

    public Float count(Long id){
        return restaurantRepository.count(id);
    }

}

package Guzcce.restbook.repository;

import Guzcce.restbook.model.Restaurant;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RestaurantRepository extends JpaRepository<Restaurant, Long> {
    List<Restaurant> findTop5ByOrderByAverageRateDesc();
}

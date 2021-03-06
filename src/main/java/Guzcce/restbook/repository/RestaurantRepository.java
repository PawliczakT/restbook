package Guzcce.restbook.repository;

import Guzcce.restbook.model.Cuisine;
import Guzcce.restbook.model.Restaurant;
import Guzcce.restbook.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import javax.transaction.Transactional;
import java.util.List;

public interface RestaurantRepository extends JpaRepository<Restaurant, Long> {
    List<Restaurant> findTop5ByOrderByAverageRateDesc();

    List<Restaurant> findRestaurantsByUserEquals(User user);

    List<Restaurant> findRestaurantsByCuisinesContainsOrderByAverageRateDesc(Cuisine cuisine);

    @Modifying
    @Transactional
    @Query(value="DELETE FROM Restaurant r WHERE r.id = ?1")
    void deleteRestaurantById(long id);

    @Query(value = "UPDATE restaurant SET average_rate = (SELECT AVG(review.rate) FROM review WHERE review.restaurant_id = ?1) WHERE id = ?1", nativeQuery = true)
    Float avgUpd(Long id);

    @Query(value = "UPDATE restaurant SET number_of_reviews = (SELECT COUNT(review.id) FROM review WHERE review.restaurant_id = ?1) WHERE id = ?1", nativeQuery = true)
    Integer numOfRevUpd(Long id);

    @Query(value = "SELECT AVG(review.rate) FROM review WHERE review.restaurant_id = ?1", nativeQuery = true)
    Float avg(Long id);

    @Query(value = "SELECT COUNT (review.id) FROM review WHERE review.restaurant_id = ?1", nativeQuery = true)
    Float count(Long id);

}

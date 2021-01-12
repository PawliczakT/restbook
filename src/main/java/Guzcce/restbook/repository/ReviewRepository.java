package Guzcce.restbook.repository;

import Guzcce.restbook.model.Restaurant;
import Guzcce.restbook.model.Review;
import Guzcce.restbook.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReviewRepository extends JpaRepository<Review, Long> {
    List<Review> findReviewsByRestaurantEqualsOrderByCreateDateDesc(Restaurant restaurant);
    List<Review> findReviewsByUserEqualsOrderByCreateDateDesc(User user);


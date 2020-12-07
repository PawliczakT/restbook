package Guzcce.restbook.repository;

import Guzcce.restbook.model.Review;
import Guzcce.restbook.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReviewRepository extends JpaRepository<Review, Long> {
    List<Review> findAllByOrderByRestaurantCreateDateDesc();
    List<Review> findReviewsByUserEquals(User user);
}

package Guzcce.restbook.repository;

import Guzcce.restbook.model.Review;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReviewRepository extends JpaRepository<Review, Long> {
    List<Review> findAllByRestaurantAndOrderByReviewDate();
    List<Review> findReviewsByUser();
}

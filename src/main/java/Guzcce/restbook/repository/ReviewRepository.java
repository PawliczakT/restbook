package Guzcce.restbook.repository;

import Guzcce.restbook.model.Restaurant;
import Guzcce.restbook.model.Review;
import Guzcce.restbook.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import javax.transaction.Transactional;
import java.util.List;

public interface ReviewRepository extends JpaRepository<Review, Long> {
    List<Review> findReviewsByRestaurantEqualsOrderByCreateDateDesc(Restaurant restaurant);

    List<Review> findReviewsByUserEqualsOrderByCreateDateDesc(User user);

    @Modifying
    @Transactional
    @Query(value="DELETE FROM Review r WHERE r.restaurant.id = ?1")
    void deleteReviewsByRestaurantId(Long id);
}


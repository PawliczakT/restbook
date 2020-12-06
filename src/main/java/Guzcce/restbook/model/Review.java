package Guzcce.restbook.model;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Objects;

@Entity
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String descriptionGood;
    private String descriptionBad;
    private float rate;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private  User user;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "review_id")
    private  Restaurant restaurant;

    private LocalDateTime reviewDate;

    public Review() {
    }


    public Review(Long id, String descriptionGood, String descriptionBad, float rate, User user, Restaurant restaurant, LocalDateTime reviewDate) {
        this.id = id;
        this.descriptionGood = descriptionGood;
        this.descriptionBad = descriptionBad;
        this.rate = rate;
        this.user = user;
        this.restaurant = restaurant;
        this.reviewDate = reviewDate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() { return user; }

    public void setUser(User user) { this.user = user; }

    public String getDescriptionGood() {
        return descriptionGood;
    }

    public void setDescriptionGood(String descriptionGood) {
        this.descriptionGood = descriptionGood;
    }

    public String getDescriptionBad() {
        return descriptionBad;
    }

    public void setDescriptionBad(String descriptionBad) {
        this.descriptionBad = descriptionBad;
    }

    public LocalDateTime getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(LocalDateTime reviewDate) {
        this.reviewDate = reviewDate;
    }

    public float getRate() {
        return rate;
    }

    public void setRate(float rate) {
        this.rate = rate;
    }

    public Restaurant getRestaurant() { return restaurant; }

    public void setRestaurant(Restaurant restaurant) { this.restaurant = restaurant; }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Review review = (Review) o;
        return Objects.equals(id, review.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}

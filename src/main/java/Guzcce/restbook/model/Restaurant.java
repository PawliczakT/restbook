package Guzcce.restbook.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity
public class Restaurant {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;
    private String phone;
    private String address;
    private String description;
    private String image;
    private float averageRate;
    private int numberOfReviews;
    private boolean verified;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createDate;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL, mappedBy = "restaurant")
    private Set<Review> reviews = new HashSet<>();

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL, mappedBy = "restaurant")
    private Set<FileDB> images = new HashSet<>();

    @ManyToOne(fetch = FetchType.EAGER)
    private User user;

    @ManyToMany
    private Set<Cuisine> cuisines = new HashSet<>();


    public Restaurant() {

    }

    public Restaurant(String name, String phone, String address, String description, String image, Date createDate, Set<FileDB> images, User user, Set<Cuisine> cuisines) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.description = description;
        this.image = image;
        this.createDate = createDate;
        this.images = images;
        this.user = user;
        this.cuisines = cuisines;
    }

    public Restaurant(Long id, String name, String phone, String address, String description, String image, float averageRate, int numberOfReviews, boolean verified, Date createDate, Set<FileDB> images, User user) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.description = description;
        this.image = image;
        this.averageRate = averageRate;
        this.numberOfReviews = numberOfReviews;
        this.verified = verified;
        this.createDate = createDate;
        this.images = images;
        this.user = user;
    }

    public float getAverageRate() {
        return averageRate;
    }

    public void setAverageRate(float averageRate) {
        this.averageRate = averageRate;
    }

    public Set<Review> getReviews() {
        return reviews;
    }

    public void setReviews(Set<Review> reviews) {
        this.reviews = reviews;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public float getRate() {
        return averageRate;
    }

    public void setRate(float rate) {
        this.averageRate = rate;
    }

    public boolean isVerified() {
        return verified;
    }

    public void setVerified(boolean verified) {
        this.verified = verified;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Set<FileDB> getImages() {
        return images;
    }

    public void setImages(Set<FileDB> images) {
        this.images = images;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getNumberOfReviews() {
        return numberOfReviews;
    }

    public void setNumberOfReviews(int numberOfReviews) {
        this.numberOfReviews = numberOfReviews;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Restaurant that = (Restaurant) o;
        return Float.compare(that.averageRate, averageRate) == 0 &&
                numberOfReviews == that.numberOfReviews &&
                verified == that.verified &&
                Objects.equals(id, that.id) &&
                Objects.equals(name, that.name) &&
                Objects.equals(phone, that.phone) &&
                Objects.equals(address, that.address) &&
                Objects.equals(description, that.description) &&
                Objects.equals(image, that.image) &&
                Objects.equals(createDate, that.createDate) &&
                Objects.equals(reviews, that.reviews) &&
                Objects.equals(images, that.images);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, phone, address, description, image, averageRate, numberOfReviews, verified, createDate, reviews, images);
    }

    public Set<Cuisine> getCuisines() {
        return cuisines;
    }

    public void setCuisines(Set<Cuisine> cuisines) {
        this.cuisines = cuisines;
    }
}
package Guzcce.restbook.model;

import java.util.Objects;
import java.util.Set;

import org.springframework.web.multipart.MultipartFile;

public class RestaurantDto {

    private String name;
    private String phone;
    private String address;
    private String description;
    private User user;
    private MultipartFile image;
    private Set<Cuisine> cuisines;

    public RestaurantDto() {
    }

    public RestaurantDto(String name, String phone, String address, String description, User user, MultipartFile image, Set<Cuisine> cuisines) {
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.description = description;
        this.user = user;
        this.image = image;
        this.cuisines = cuisines;
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

    public MultipartFile getImage() {
        return image;
    }

    public void setImage(MultipartFile image) {
        this.image = image;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Set<Cuisine> getCuisines() {
        return cuisines;
    }

    public void setCuisines(Set<Cuisine> cuisines) {
        this.cuisines = cuisines;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        RestaurantDto that = (RestaurantDto) o;
        return Objects.equals(name, that.name) && Objects.equals(phone, that.phone) && Objects.equals(address, that.address) && Objects.equals(description, that.description) && Objects.equals(user, that.user) && Objects.equals(image, that.image) && Objects.equals(cuisines, that.cuisines);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, phone, address, description, user, image, cuisines);
    }
}

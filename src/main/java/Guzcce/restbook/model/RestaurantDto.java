package Guzcce.restbook.model;

import java.util.Objects;
import org.springframework.web.multipart.MultipartFile;

public class RestaurantDto {

    private String name;
    private String phone;
    private String address;
    private String description;
    private MultipartFile image;

    public RestaurantDto() {
    }

    public RestaurantDto(String name, String phone, String address, String description, MultipartFile image) {
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.description = description;
        this.image = image;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        RestaurantDto that = (RestaurantDto) o;
        return Objects.equals(name, that.name) &&
                Objects.equals(phone, that.phone) &&
                Objects.equals(address, that.address) &&
                Objects.equals(description, that.description) &&
                Objects.equals(image, that.image);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, phone, address, description, image);
    }

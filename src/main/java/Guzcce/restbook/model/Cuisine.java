package Guzcce.restbook.model;


import javax.persistence.*;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity
public class Cuisine {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;


    @ManyToMany(cascade = { CascadeType.ALL })
    @JoinTable(
            name = "Cuisine_User",
            joinColumns = { @JoinColumn(name = "cuisine_id") },
            inverseJoinColumns = { @JoinColumn(name = "user_username") }
    )
    private Set<User> users = new HashSet<>();

    @ManyToMany(cascade = { CascadeType.ALL })
    @JoinTable(
            name = "Cuisine_Restaurant",
            joinColumns = { @JoinColumn(name = "cuisine_id") },
            inverseJoinColumns = { @JoinColumn(name = "restaurant_id") }
    )
    private Set<Restaurant> restaurants = new HashSet<>();

//    @ManyToMany(fetch = FetchType.EAGER)
//    @JoinColumn(name = "cuisine_user_id")
//    private Set<User> users = new HashSet<>();


//    @ManyToMany(fetch = FetchType.EAGER)
//    @JoinColumn(name = "cuisine_id")
//    private Set<Restaurant> restaurants = new HashSet<>();

    public Cuisine() {
    }

    public Cuisine(Long id, String name) {
        this.id = id;
        this.name = name;
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


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Cuisine cuisine = (Cuisine) o;
        return id.equals(cuisine.id) && Objects.equals(name, cuisine.name) && Objects.equals(users, cuisine.users) && Objects.equals(restaurants, cuisine.restaurants);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, users, restaurants);
    }

    public Set<Restaurant> getRestaurants() {
        return restaurants;
    }

    public void setRestaurants(Set<Restaurant> restaurants) {
        this.restaurants = restaurants;
    }

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }
}

package Guzcce.restbook.model;


import javax.persistence.*;
import java.util.Objects;

@Entity
public class Cuisine {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;

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
        return Objects.equals(id, cuisine.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}

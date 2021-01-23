package Guzcce.restbook.repository;

import Guzcce.restbook.model.Cuisine;
import Guzcce.restbook.model.Restaurant;
import org.springframework.data.jpa.repository.JpaRepository;

import javax.persistence.SecondaryTable;
import java.util.List;
import java.util.Set;

public interface CuisineRepository extends JpaRepository<Cuisine, Long> {
    List<Cuisine> findTop9By();

}

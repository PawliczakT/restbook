package Guzcce.restbook.repository;

import Guzcce.restbook.model.Cuisine;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CuisineRepository extends JpaRepository<Cuisine, Long> {
    List<Cuisine> findTop9By();
}

package Guzcce.restbook.service;

import Guzcce.restbook.model.Cuisine;
import Guzcce.restbook.model.Restaurant;
import Guzcce.restbook.repository.CuisineRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CuisineService {
    private final CuisineRepository cuisineRepository;

    public CuisineService(CuisineRepository cuisineRepository) {
        this.cuisineRepository = cuisineRepository;
    }

    public List<Cuisine> getAllCuisines() {
        return cuisineRepository.findAll();
    }

    public List<Cuisine> findTop10() {
        return cuisineRepository.findTop9By();
    }
}

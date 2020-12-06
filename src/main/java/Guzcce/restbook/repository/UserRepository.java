package Guzcce.restbook.repository;

import Guzcce.restbook.model.User;
import org.springframework.data.jpa.repository.JpaRepository;


public interface UserRepository extends JpaRepository<User, Long> {

}

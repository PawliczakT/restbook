package Guzcce.restbook.service;

import Guzcce.restbook.model.Role;
import Guzcce.restbook.model.User;
import Guzcce.restbook.repository.RoleRepository;
import Guzcce.restbook.repository.UserRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserService implements UserDetailsService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;


    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    public Optional<User> getUser(String username) {
        return userRepository.findById(username);
    }

    public User saveUser(User user) {
        Optional<Role> byId = roleRepository.findById(1L);
        byId.ifPresent(user::setRole);
        return userRepository.save(user);
    }

    public void deleteUser(String username) {
        userRepository.deleteById(username);
        System.out.println("deleting user on id:" + username);
    }

    public void editUser(User user, String username) {
        User editUser = new User(
                username,
                user.getEmail(),
                user.getPassword(),
                user.getReviews(),
                user.getRole());
        userRepository.save(editUser);
    }

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        return getUser(s).orElseThrow(() -> new UsernameNotFoundException("Could not find user with username: " + s));
    }
}
package kenn.shi.userspanel.services;

import kenn.shi.userspanel.entities.Cities;
import kenn.shi.userspanel.entities.Users;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;

public interface UsersService extends UserDetailsService {
    Users getUserByEmail(String email);
    boolean addNewUser(Users  users);
    List<Cities> getAllCities();
    Cities getCity(Long id);
    Users saveUser(Users user);
}

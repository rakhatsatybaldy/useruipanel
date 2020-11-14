package kenn.shi.userspanel.services;

import kenn.shi.userspanel.entities.Users;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UsersService extends UserDetailsService {
    Users getUserByEmail(String email);
    boolean addNewUser(Users  users);
}

package kenn.shi.userspanel.services.implementations;

import kenn.shi.userspanel.entities.Cities;
import kenn.shi.userspanel.entities.Roles;
import kenn.shi.userspanel.entities.Users;
import kenn.shi.userspanel.repositories.CitiesRepository;
import kenn.shi.userspanel.repositories.RolesRepository;
import kenn.shi.userspanel.repositories.UsersRepository;
import kenn.shi.userspanel.services.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@EnableWebSecurity
public class UsersServiceImplementation implements UsersService {
    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private RolesRepository rolesRepository;

    @Autowired
    private CitiesRepository citiesRepository;

    @Override
    public Users getUserByEmail(String email) {
        return usersRepository.findByEmail(email);
    }

    @Override
    public boolean addNewUser(Users users) {
        Users checkUser = usersRepository.findByEmail(users.getEmail());
        Roles role = rolesRepository.getOne(1L);
        ArrayList<Roles> roles = new ArrayList<>();
        roles.add(role);
        if (checkUser==null){
            users.setRoles(roles);
            users.setBlocked(false);
            usersRepository.save(users);
            return true;
        }
        return false;
    }

    @Override
    public List<Cities> getAllCities() {
        return citiesRepository.findAll();
    }

    @Override
    public Cities getCity(Long id) {
        return citiesRepository.getOne(id);
    }

    @Override
    public Users saveUser(Users user) {
        return usersRepository.save(user);
    }

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        Users myUser = usersRepository.findByEmailAndBlocked(s , false);
        if (myUser!=null){
            User securityUser =new User(myUser.getEmail() , myUser.getPassword(),  myUser.getRoles());
            return securityUser;
        }
        throw new UsernameNotFoundException("Username not found");
    }
}

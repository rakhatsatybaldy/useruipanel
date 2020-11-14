package kenn.shi.userspanel.services.implementations;

import kenn.shi.userspanel.entities.Roles;
import kenn.shi.userspanel.entities.Users;
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
            usersRepository.save(users);
            return true;
        }
        return false;
    }

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        Users myUser = usersRepository.findByEmail(s);
        if (myUser!=null){
            User securityUser =new User(myUser.getEmail() , myUser.getPassword(),  myUser.getRoles());
            return securityUser;
        }
        throw new UsernameNotFoundException("Username not found");
    }
}

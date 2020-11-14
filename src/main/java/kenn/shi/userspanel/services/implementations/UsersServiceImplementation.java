package kenn.shi.userspanel.services.implementations;

import kenn.shi.userspanel.entities.Users;
import kenn.shi.userspanel.repositories.UsersRepository;
import kenn.shi.userspanel.services.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@EnableWebSecurity
public class UsersServiceImplementation implements UsersService {
    @Autowired
    private UsersRepository usersRepository;

    @Override
    public Users getUserByEmail(String email) {
        return usersRepository.findByEmail(email);
    }

    @Override
    public boolean addNewUser(Users users) {
        Users checkUser = usersRepository.findByEmail(users.getEmail());
        if (checkUser==null){
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

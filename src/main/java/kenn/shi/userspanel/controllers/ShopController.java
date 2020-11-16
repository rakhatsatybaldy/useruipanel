package kenn.shi.userspanel.controllers;

import kenn.shi.userspanel.entities.*;
import kenn.shi.userspanel.repositories.RolesRepository;
import kenn.shi.userspanel.services.GoodsService;
import kenn.shi.userspanel.services.UsersService;
import org.dom4j.rule.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ShopController {

    @Autowired
    private UsersService usersService;

    @Autowired
    private GoodsService goodsService;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @GetMapping(value = "/")
    public String home(Model model){
        model.addAttribute("currentUser" , getUser());
        List<Goods> goods = goodsService.getAllShopGoods();
        model.addAttribute("goods" , goods);
        List<Categories> categories = goodsService.getCategories();
        model.addAttribute("categories" , categories);
        return "home";
    }

    @GetMapping(value = "/goodsByCategory/{id}")
    public String goodsByCategory(@PathVariable(name = "id")Long id , Model model){
        model.addAttribute("currentUser" , getUser());
        List<Categories> categories = goodsService.getCategories();
        model.addAttribute("categories" , categories);
        Categories category = goodsService.getCategory(id);
        if (category!=null){
            model.addAttribute("category" , category);
            List<Goods> goods = goodsService.getAllByCategories(category);
            model.addAttribute("goodsByCategories" , goods);
            return "goodsByCategory";

        }
        return "redirect:/";
    }

    @GetMapping(value = "/details/{id}")
    public String detailsOfGood(@PathVariable(name = "id")Long id , Model model){
        model.addAttribute("currentUser" , getUser());
        Goods good = goodsService.getGood(id);
        if (good!=null){
            model.addAttribute("currentgood" , good);
            return "details";
        }
        return "redirect:/";
    }

    @GetMapping(value = "/login")
    public String login(Model model){
        model.addAttribute("currentUser" , getUser());
        return "login";
    }

    @GetMapping(value = "/search")
    public String search(@RequestParam(name = "name")String name , Model model){
        model.addAttribute("currentUser" , getUser());
        List<Categories> categories = goodsService.getCategories();
        model.addAttribute("categories" , categories);
        List<Goods> goods = goodsService.searchShopGoods(name);
        model.addAttribute("goods" , goods);
        return "home";
    }

    @GetMapping(value = "/403")
    public String accessDeniedPage(Model model){
        model.addAttribute("currentUser", getUser());
        return "403";
    }



    @GetMapping(value = "/register")
    public String register(Model model){
        model.addAttribute("currentUser" , getUser());
        List<Cities> cities = usersService.getAllCities();
        model.addAttribute("cities" , cities);
        return "registration";
    }

    @PostMapping(value = "/register")
    public String toRegister(@RequestParam(name = "email")String email,
                             @RequestParam(name = "password")String password,
                             @RequestParam(name = "re_password")String rePassword,
                             @RequestParam(name = "fullName")String fullName ,
                             @RequestParam(name = "city_id")Long id , Model model){
        model.addAttribute("currentUser" , getUser());
        List<Cities> cities = usersService.getAllCities();
        model.addAttribute("cities" , cities);
        if (password.equals(rePassword)){
            Cities city = usersService.getCity(id);
            Users newUser = new Users();
            newUser.setEmail(email);
            newUser.setPassword(passwordEncoder.encode(password));
            newUser.setFullName(fullName);
            newUser.setCity(city);
            if (usersService.addNewUser(newUser)){
                return "redirect:/register?success";
            }
        }else {
                return "redirect:/register?passerror";
        }
            return "redirect:/register?error";
    }


    @GetMapping(value = "/profile")
    @PreAuthorize("isAuthenticated()")
    public String profile(Model model){
        model.addAttribute("currentUser" , getUser());
        List<Cities> cities = usersService.getAllCities();
        model.addAttribute("cities" , cities);
        return "profile";
    }

    @PostMapping(value = "/updateInfoAboutUser")
    @PreAuthorize("isAuthenticated()")
    public String updateProfile(Model model ,  @RequestParam(name = "fullName")String fullName,
                                @RequestParam(name = "address")String address,
                                @RequestParam(name = "city_id")Long id){
        model.addAttribute("currentUser" , getUser());
        Cities city = usersService.getCity(id);
        if (city!=null){
            getUser().setFullName(fullName);
            getUser().setCity(city);
            getUser().setAddress(address);
            usersService.saveUser(getUser());
            return "redirect:/profile?success";
        }else {
            return "redirect:/profile?error";
        }
    }



    private Users getUser(){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            User securityUser = (User) authentication.getPrincipal();
            Users user =usersService.getUserByEmail(securityUser.getUsername());
            return user;
        }
        return null;
    }

}


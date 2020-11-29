package kenn.shi.userspanel.controllers;

import kenn.shi.userspanel.entities.*;
import kenn.shi.userspanel.repositories.GoodsRepository;
import kenn.shi.userspanel.services.GoodsService;
import kenn.shi.userspanel.services.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
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

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.IntStream;

@Controller
public class ShopController {

    @Autowired
    private UsersService usersService;

    @Autowired
    private GoodsService goodsService;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @Autowired
    private HttpSession session;

    @Autowired
    private GoodsRepository goodsRepository;

    @GetMapping(value = "/filter")
    public String filter(Model model, @RequestParam(name = "name" , required = false , defaultValue = "")String name,
                                    @RequestParam(name = "fromPrice" , required = false)Double fromPrice,
                                    @RequestParam(name = "toPrice" , required = false)Double toPrice , @RequestParam(value = "page" , required = false ,defaultValue = "0")Integer page){
        Page<Goods> pageGoods = goodsRepository.findAll(PageRequest.of(page , 6));
        model.addAttribute("goodsPage" , pageGoods);
        model.addAttribute("numbers" , IntStream.range(0 , pageGoods.getTotalPages()).toArray());
        model.addAttribute("basketSize"  , countGoodsInBasket());
        model.addAttribute("currentUser" , getUser());
        List<Goods> goods = goodsService.searchGoods(name , fromPrice , toPrice);
        model.addAttribute("goods" , goods);
        model.addAttribute("searchName", name!=null?name:"");
        model.addAttribute("searchPriceFrom", fromPrice!=null?fromPrice:"");
        model.addAttribute("searchPriceTo", toPrice!=null?toPrice:"");
        List<Categories> categories = goodsService.getCategories();
        model.addAttribute("categories" , categories);
        return "filtering_goods";
    }

    @GetMapping( value = "/")
    public String home(Model model ,
                       @RequestParam(value = "page" , required = false ,defaultValue = "0")Integer page){
        Page<Goods> pageGoods = goodsRepository.findAll(PageRequest.of(page , 6));
        model.addAttribute("goodsPage" , pageGoods);
        model.addAttribute("numbers" , IntStream.range(0 , pageGoods.getTotalPages()).toArray());
        model.addAttribute("basketSize" , countGoodsInBasket());
        model.addAttribute("currentUser" , getUser());
        List<Categories> categories = goodsService.getCategories();
        model.addAttribute("categories" , categories);
        return "home";
    }



    @GetMapping(value = "/goodsByCategory/{id}")
    public String goodsByCategory(@PathVariable(name = "id")Long id , Model model ,@RequestParam(value = "page" , required = false ,defaultValue = "0")Integer page){
        Page<Goods> pageGoods = goodsRepository.findAll(PageRequest.of(page , 6));
        model.addAttribute("goodsPage" , pageGoods);
        model.addAttribute("numbers" , IntStream.range(0 , pageGoods.getTotalPages()).toArray());
        model.addAttribute("basketSize"  , countGoodsInBasket());
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
        model.addAttribute("basketSize"  , countGoodsInBasket());
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
        model.addAttribute("basketSize"  , countGoodsInBasket());
        model.addAttribute("currentUser" , getUser());
        return "login";
    }

    @GetMapping(value = "/search")
    public String search(@RequestParam(name = "name")String name , Model model , @RequestParam(value = "page" , required = false ,defaultValue = "0")Integer page){
        Page<Goods> pageGoods = goodsRepository.findAll(PageRequest.of(page , 6));
        model.addAttribute("goodsPage" , pageGoods);
        model.addAttribute("numbers" , IntStream.range(0 , pageGoods.getTotalPages()).toArray());
        model.addAttribute("basketSize"  , countGoodsInBasket());
        model.addAttribute("currentUser" , getUser());
        List<Categories> categories = goodsService.getCategories();
        model.addAttribute("categories" , categories);
        List<Goods> goods = goodsService.searchShopGoods(name);
        model.addAttribute("goods" , goods);
        return "filtering_goods";
    }

    @GetMapping(value = "/403")
    public String accessDeniedPage(Model model){
        model.addAttribute("basketSize"  , countGoodsInBasket());
        model.addAttribute("currentUser", getUser());
        return "403";
    }




    @PostMapping(value = "/addtobasket")
    public String addToBasket(@RequestParam(name = "good_id")Long id , Model model){
        model.addAttribute("basketSize"  , countGoodsInBasket());
        Goods good = goodsService.getGood(id);
        if (good!=null){
            List<Goods> basket = (ArrayList<Goods>)session.getAttribute("BASKET");
            if (basket==null){
                basket = new ArrayList<>();
            }
            basket.add(good);
            session.setAttribute("BASKET" , basket);
            return "redirect:/details/"+id;
        }
        return "redirect:/";
    }

    @PostMapping(value = "/deletegood")
    public String deletegoodfrombasket(@RequestParam(name = "good_id")Long good_id , Model model){
        Goods good = goodsService.getGood(good_id);
        if (good!=null){
            List<Goods> basket = (ArrayList<Goods>) session.getAttribute("BASKET");
            for (int i=0;i<basket.size();i++){
                basket.remove(i);
            }
            model.addAttribute("korzina" , basket);
            return "redirect:/basketlist";
        }
        return "redirect:/";
    }

    @PostMapping(value = "/buygood")
    @PreAuthorize("isAuthenticated()")
    public String buyGood(@RequestParam(name = "good_id")Long id , Model model){
        Goods good = goodsService.getGood(id);
        if (good!=null){
            List<Goods> goods = getUser().getGoods();
            if (goods==null){
                goods = new ArrayList<>();
            }
            if (good.getAmount()>0) {
                if (getUser().getBalance() >= good.getPrice()) {
                    goods.add(good);
                    getUser().setGoods(goods);
                    double result = getUser().getBalance() - good.getPrice();
                    getUser().setBalance(result);
                    usersService.saveUser(getUser());
                    int amountAfterPurchase = good.getAmount() - 1;
                    good.setAmount(amountAfterPurchase);
                    goodsService.saveGood(good);
                    List<Goods> basket = (ArrayList<Goods>) session.getAttribute("BASKET");
                    for (int i=0;i<basket.size();i++){
                        basket.remove(i);
                    }
                    model.addAttribute("korzina" , basket);

                    return "redirect:/basketlist?success";
                }
                else {
                    return "redirect:/basketlist?error";
                }
            }
                else {
                    return "redirect:/basketlist?not";
                }
        }
        return "redirect:/";
    }

    @GetMapping(value = "/basketlist")
    public String basketList(Model model){
        model.addAttribute("basketSize"  , countGoodsInBasket());
        model.addAttribute("currentUser" , getUser());
        List<Goods> korzina = (ArrayList<Goods>) session.getAttribute("BASKET");
        model.addAttribute("korzina" , korzina);
        return "basketlist";
    }



    @GetMapping(value = "/register")
    public String register(Model model){
        model.addAttribute("basketSize"  , countGoodsInBasket());
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
        model.addAttribute("basketSize"  , countGoodsInBasket());
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

    @GetMapping(value = "/history")
    @PreAuthorize("isAuthenticated()")
    public String history(Model model){
        model.addAttribute("basketSize"  , countGoodsInBasket());
        List<Categories> categories = goodsService.getCategories();
        model.addAttribute("categories" , categories);
        model.addAttribute("currentUser" , getUser());
        List<Goods> purchasedGoods = getUser().getGoods();
        model.addAttribute("purchasedGoods", purchasedGoods);
        return "history";

    }


    @GetMapping(value = "/profile")
    @PreAuthorize("isAuthenticated()")
    public String profile(Model model){
        model.addAttribute("basketSize"  , countGoodsInBasket());
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
        model.addAttribute("basketSize"  , countGoodsInBasket());
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

    private int countGoodsInBasket(){
        ArrayList<Goods> basket = (ArrayList<Goods>) session.getAttribute("BASKET");
        if (basket!=null){
            return basket.size();
        }
        return 0;
    }
}


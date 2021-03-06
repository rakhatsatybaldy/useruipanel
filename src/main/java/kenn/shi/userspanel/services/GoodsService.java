package kenn.shi.userspanel.services;

import kenn.shi.userspanel.entities.Categories;
import kenn.shi.userspanel.entities.Goods;
import org.springframework.data.domain.Page;

import java.util.List;

public interface GoodsService {

    List<Goods> getAllShopGoods();
    Goods getGood(Long id);
    List<Goods> searchShopGoods(String name);


    List<Categories> getCategories();
    Categories getCategory(Long id);
    List<Goods> getAllByCategories(Categories categories);

    Goods saveGood(Goods good);

    List<Goods> searchGoods(String name , Double priceFrom , Double priceTo);
}

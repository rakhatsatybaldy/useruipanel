package kenn.shi.userspanel.services.implementations;

import kenn.shi.userspanel.entities.Categories;
import kenn.shi.userspanel.entities.Goods;
import kenn.shi.userspanel.repositories.CategoriesRepository;
import kenn.shi.userspanel.repositories.GoodsRepository;
import kenn.shi.userspanel.services.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsServiceImplementation implements GoodsService {
    @Autowired
    private GoodsRepository goodsRepository;

    @Autowired
    private CategoriesRepository categoriesRepository;


    @Override
    public List<Goods> getAllShopGoods() {
        return goodsRepository.findAll();
    }

    @Override
    public Goods getGood(Long id) {
        return goodsRepository.getOne(id);
    }

    @Override
    public List<Goods> searchShopGoods(String name) {
        return goodsRepository.findAllByNameLike("%"+name+"%");
    }

    @Override
    public List<Categories> getCategories() {
        return categoriesRepository.findAll();
    }

    @Override
    public Categories getCategory(Long id) {
        return categoriesRepository.getOne(id);
    }

    @Override
    public List<Goods> getAllByCategories(Categories categories) {
        return goodsRepository.findAllByCategories(categories);
    }
}

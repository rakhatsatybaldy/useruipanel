package kenn.shi.userspanel.services.implementations;

import kenn.shi.userspanel.entities.Categories;
import kenn.shi.userspanel.entities.Goods;
import kenn.shi.userspanel.repositories.CategoriesRepository;
import kenn.shi.userspanel.repositories.GoodsRepository;
import kenn.shi.userspanel.services.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
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
        return goodsRepository.findAllByNameLike(name);
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

    @Override
    public Goods saveGood(Goods good) {
        return goodsRepository.save(good);
    }

    @Override
    public List<Goods> searchGoods(String name, Double priceFrom, Double priceTo) {
        Specification specification =(Specification<Goods>)(root , criteriaQuery , criteriaBuilder) -> criteriaBuilder.like(criteriaBuilder.upper(root.get("name")) , "%"+name.toUpperCase()+"%");

        if(priceFrom!=null){
            specification = specification.and((Specification<Goods>)(root, criteriaQuery, criteriaBuilder) -> criteriaBuilder.greaterThanOrEqualTo(root.get("price"), priceFrom));
        }

        if(priceTo!=null){
            specification = specification.and((Specification<Goods>)(root, criteriaQuery, criteriaBuilder) -> criteriaBuilder.lessThanOrEqualTo(root.get("price"), priceTo));
        }

        return goodsRepository.findAll(specification);
    }


}

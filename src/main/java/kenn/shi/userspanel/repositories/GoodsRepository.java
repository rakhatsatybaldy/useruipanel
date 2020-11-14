package kenn.shi.userspanel.repositories;

import kenn.shi.userspanel.entities.Categories;
import kenn.shi.userspanel.entities.Goods;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public interface GoodsRepository extends JpaRepository<Goods , Long> {
    @Query("select g from Goods g where lower(g.name) like lower(concat('%', :name,'%'))")
    List<Goods> findAllByNameLike(@Param("name")String name);
    List<Goods> findAllByCategories(Categories categories);
}

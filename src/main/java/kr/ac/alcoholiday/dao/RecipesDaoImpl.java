package kr.ac.alcoholiday.dao;

import kr.ac.alcoholiday.model.Recipes;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RecipesDaoImpl implements RecipesDao{
    @Autowired
    SqlSession sql;

    @Override
    public List<Recipes> list() {
        return sql.selectList("recipes.list");
    }
}

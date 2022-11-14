package kr.ac.alcoholiday.dao;


import kr.ac.alcoholiday.model.Alcohol;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository
public class RecipesDaoImpl implements RecipesDao {

    @Autowired
    SqlSession sql;

    @Override
    public List<Alcohol> list() {
        return sql.selectList("recipes.list");
    }

    @Override
    public void add(Alcohol item) {
        sql.insert("recipes.add", item);
    }

    @Override
    public Alcohol item(int stuffNum) {
        return sql.selectOne("recipes.item", stuffNum);
    }

    @Override
    public void update(Alcohol item) {
        sql.update("recipes.update", item);
    }

    @Override
    public void delete(int stuffNum, String userId) {
        HashMap<String, Object> map = new HashMap<>();

        map.put("stuffNum",stuffNum);
        map.put("userId", userId);

        sql.delete("recipes.delete", map);
    }
}

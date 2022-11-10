package kr.ac.alcoholiday.dao;

import kr.ac.alcoholiday.model.Alcohol;

import java.util.List;

public interface RecipesDao {
    List<Alcohol> list();

    void add(Alcohol item);

    Alcohol item();

    void update(Alcohol item);

    void delete(int stuffNum);
}

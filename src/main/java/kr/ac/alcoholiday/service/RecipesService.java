package kr.ac.alcoholiday.service;

import kr.ac.alcoholiday.model.Alcohol;

import java.util.List;

public interface RecipesService {
    List<Alcohol> list();

    void add(Alcohol item);

    Alcohol item(int stuffNum);

    void update(Alcohol item);

    void delete(int stuffNum, String userId);
}

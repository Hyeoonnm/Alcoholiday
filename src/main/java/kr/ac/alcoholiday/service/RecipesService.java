package kr.ac.alcoholiday.service;

import kr.ac.alcoholiday.model.Alcohol;

import java.util.List;

public interface RecipesService {
    List<Alcohol> list();

    void add(Alcohol item);

    Alcohol item();

    void update(Alcohol item);

    void delete(int stuffNum);
}

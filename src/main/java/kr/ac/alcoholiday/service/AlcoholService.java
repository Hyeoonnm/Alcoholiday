package kr.ac.alcoholiday.service;

import kr.ac.alcoholiday.model.Alcohol;
import kr.ac.alcoholiday.search.Search;

import java.util.List;

public interface AlcoholService {
    List<Alcohol> list(Search search);

    void add(Alcohol item);

    Alcohol item(int stuffNum);

    void update(Alcohol item);

    void delete(int stuffNum, String userId);

    List<Alcohol> bc();
}

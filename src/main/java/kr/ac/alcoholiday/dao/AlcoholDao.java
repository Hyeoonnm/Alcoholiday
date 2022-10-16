package kr.ac.alcoholiday.dao;

import kr.ac.alcoholiday.model.Alcohol;
import kr.ac.alcoholiday.pager.Pager;

import java.util.List;

public interface AlcoholDao {
    List<Alcohol> list(Pager pager);

    void add(Alcohol item);

    Alcohol item(int alcoholNum);

    void update(Alcohol item);

    void delete(int alcoholNum);
}

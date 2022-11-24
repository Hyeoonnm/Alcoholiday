package kr.ac.alcoholiday.dao;

import kr.ac.alcoholiday.model.Alcohol;
import kr.ac.alcoholiday.pager.Pager;

import java.util.List;

public interface NoticeDao {
    List<Alcohol> list(Pager pager);

    void add(Alcohol notice);

    void update(Alcohol notice);

    void delete(int stuffNum, String userId);

    int total();
}

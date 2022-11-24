package kr.ac.alcoholiday.service;

import kr.ac.alcoholiday.model.Alcohol;
import kr.ac.alcoholiday.pager.Pager;
import java.util.List;

public interface NoticeService {
    List<Alcohol> list(Pager pager);

    void add(Alcohol notice);

    void update(Alcohol notice);

    void delete(int stuffNum, String userId);
}

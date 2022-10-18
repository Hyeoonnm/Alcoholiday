package kr.ac.alcoholiday.service;

import kr.ac.alcoholiday.dao.AlcoholDao;
import kr.ac.alcoholiday.model.Alcohol;
import kr.ac.alcoholiday.pager.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AlcoholServiceImpl implements AlcoholService{

    @Autowired
    AlcoholDao dao;

    @Override
    public List<Alcohol> list(Pager pager) {
        return dao.list(pager);
    }

    @Override
    public void add(Alcohol item) {
        dao.add(item);
    }

    @Override
    public Alcohol item(int stuffNum) {
        return dao.item(stuffNum);
    }

    @Override
    public void update(Alcohol item) {
        dao.update(item);
    }

    @Override
    public void delete(int stuffNum) {
        dao.delete(stuffNum);
    }
}

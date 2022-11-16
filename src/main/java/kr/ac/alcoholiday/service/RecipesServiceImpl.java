package kr.ac.alcoholiday.service;

import kr.ac.alcoholiday.dao.RecipesDao;
import kr.ac.alcoholiday.model.Alcohol;
import kr.ac.alcoholiday.pager.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecipesServiceImpl implements RecipesService{

    @Autowired
    RecipesDao dao;

    @Override
    public List<Alcohol> list(Pager pager) {
        int total = dao.total();

        pager.setTotal(total);

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
    public void delete(int stuffNum, String userId) {
        dao.delete(stuffNum, userId);
    }
}

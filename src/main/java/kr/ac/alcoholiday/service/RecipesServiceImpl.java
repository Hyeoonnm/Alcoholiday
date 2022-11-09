package kr.ac.alcoholiday.service;

import kr.ac.alcoholiday.dao.RecipesDao;
import kr.ac.alcoholiday.model.Recipes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecipesServiceImpl implements RecipesService{

    @Autowired
    RecipesDao dao;

    @Override
    public List<Recipes> list() {
        return dao.list();
    }
}

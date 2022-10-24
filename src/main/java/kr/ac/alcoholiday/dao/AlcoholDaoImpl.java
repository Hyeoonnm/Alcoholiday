package kr.ac.alcoholiday.dao;

import kr.ac.alcoholiday.model.Alcohol;
import kr.ac.alcoholiday.pager.Pager;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AlcoholDaoImpl implements AlcoholDao{

    @Autowired
    SqlSession sql;

    @Override
    public List<Alcohol> list(Pager pager) {
        return sql.selectList("drink.list", pager);
    }

    @Override
    public void add(Alcohol item) {
        sql.insert("drink.add",item);
    }

    @Override
    public Alcohol item(int stuffNum) {
        return sql.selectOne("drink.item", stuffNum);
    }

    @Override
    public void update(Alcohol item) {
        sql.update("drink.update", item);
    }

    @Override
    public void delete(int stuffNum) {
        sql.delete("drink.delete", stuffNum);
    }

}

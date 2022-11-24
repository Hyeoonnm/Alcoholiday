package kr.ac.alcoholiday.dao;

import kr.ac.alcoholiday.model.Alcohol;
import kr.ac.alcoholiday.search.Search;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository
public class AlcoholDaoImpl implements AlcoholDao{

    @Autowired
    SqlSession sql;

    @Override
    public List<Alcohol> list(Search search) {
        return sql.selectList("drink.list", search);
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
    public void delete(int stuffNum, String userId) {
        HashMap<String, Object> map = new HashMap<String, Object>();

        map.put("stuffNum", stuffNum);
        map.put("userId", userId);

        sql.delete("drink.delete", map);
    }

    @Override
    public List<Alcohol> bc() {
        return sql.selectList("drink.bc");
    }

}

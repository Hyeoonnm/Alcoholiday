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
        return sql.selectList("alcohol.alcoholList", pager);
    }

    @Override
    public void add(Alcohol item) {
        sql.insert("alcohol.alcoholAdd",item);
    }

    @Override
    public Alcohol item(int alcoholNum) {
        return sql.selectOne("alcohol.alcoholItem", alcoholNum);
    }

    @Override
    public void update(Alcohol item) {
        sql.update("alcohol.alcoholUpdate", item);
    }

    @Override
    public void delete(int alcoholNum) {
        sql.delete("alcohol.alcoholDelete", alcoholNum);
    }

}

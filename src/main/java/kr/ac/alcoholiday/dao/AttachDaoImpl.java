package kr.ac.alcoholiday.dao;

import kr.ac.alcoholiday.model.Attach;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class AttachDaoImpl implements AttachDao{
    @Autowired
    SqlSession sql;

    @Override
    public void add(Attach attach) {
        sql.insert("attach.add", attach);
    }

    @Override
    public void delete(int stuffNum) {
        sql.delete("attach.delete", stuffNum);
    }

    public void imgDelete(String attachNum) {
        sql.delete("attach.imgDelete", attachNum);
    }

    @Override
    public List<Attach> list(String stuffNum) {
        return sql.selectList("attach.list", stuffNum);
    }
}

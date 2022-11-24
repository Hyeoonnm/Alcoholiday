package kr.ac.alcoholiday.dao;

import kr.ac.alcoholiday.model.Alcohol;
import kr.ac.alcoholiday.pager.Pager;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class NoticeDaoImpl implements NoticeDao {

    private final SqlSession sql;

    @Override
    public List<Alcohol> list(Pager pager) {
        return sql.selectList("notice.list", pager);
    }

    @Override
    public void add(Alcohol notice) {
        sql.insert("notice.add", notice);
    }

    @Override
    public void update(Alcohol notice) {
        sql.update("notice.update", notice);
    }

    @Override
    public void delete(int stuffNum, String userId) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("stuffNum", stuffNum);
        map.put("userId", userId);
        sql.delete("notice.delete", map);
    }

    @Override
    public int total() {
        return sql.selectOne("notice.total");
    }
}

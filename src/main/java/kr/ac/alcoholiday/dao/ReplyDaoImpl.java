package kr.ac.alcoholiday.dao;

import kr.ac.alcoholiday.model.Reply;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.HashMap;

@Repository
@RequiredArgsConstructor
public class ReplyDaoImpl implements ReplyDao {
    private final SqlSession sql;

    @Override
    public void add(Reply reply) {
        sql.insert("reply.add", reply);
    }

    @Override
    public void delete(int replyNum, String userId) {
        HashMap<String, Object> map = new HashMap<>();

        map.put("replyNum", replyNum);
        map.put("userId", userId);

        sql.delete("reply.delete", map);
    }

    @Override
    public void deleteAll(int stuffNum) {
        sql.delete("reply.deleteAll", stuffNum);
    }

    @Override
    public void update(Reply reply) {
        sql.update("reply.update", reply);
    }
}

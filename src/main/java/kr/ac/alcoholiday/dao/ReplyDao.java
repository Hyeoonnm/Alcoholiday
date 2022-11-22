package kr.ac.alcoholiday.dao;


import kr.ac.alcoholiday.model.Reply;

public interface ReplyDao {
    void add(Reply reply);

    void delete(int replyNum, String userId);

    void deleteAll(int stuffNum);

    void update(Reply reply);
}

package kr.ac.alcoholiday.service;

import kr.ac.alcoholiday.model.Reply;

public interface ReplyService {
    void add(Reply reply);

    void delete(int replyNum, String userId);

    void update(Reply reply);
}

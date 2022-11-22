package kr.ac.alcoholiday.service;

import kr.ac.alcoholiday.dao.ReplyDao;
import kr.ac.alcoholiday.model.Reply;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class ReplyServiceImpl implements ReplyService{
    private final ReplyDao replyDao;

    @Override
    public void add(Reply reply) {
        replyDao.add(reply);
    }

    @Override
    public void delete(int replyNum, String userId) {
        replyDao.delete(replyNum, userId);
    }

    @Override
    public void update(Reply reply) {
        replyDao.update(reply);
    }
}

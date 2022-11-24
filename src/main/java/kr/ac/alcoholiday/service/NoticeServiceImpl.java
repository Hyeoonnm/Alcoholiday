package kr.ac.alcoholiday.service;

import kr.ac.alcoholiday.dao.NoticeDao;
import kr.ac.alcoholiday.model.Alcohol;
import kr.ac.alcoholiday.pager.Pager;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class NoticeServiceImpl implements NoticeService {

    private final NoticeDao noticeDao;

    @Override
    public List<Alcohol> list(Pager pager) {
        int total = noticeDao.total();
        pager.setTotal(total);

        return noticeDao.list(pager);
    }

    @Override
    public void add(Alcohol notice) {
        noticeDao.add(notice);
    }

    @Override
    public void update(Alcohol notice) {
        noticeDao.update(notice);
    }

    @Override
    public void delete(int stuffNum, String userId) {
        noticeDao.delete(stuffNum, userId);
    }
}

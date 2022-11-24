package kr.ac.alcoholiday.service;

import kr.ac.alcoholiday.dao.AlcoholDao;
import kr.ac.alcoholiday.dao.AttachDao;
import kr.ac.alcoholiday.dao.ReplyDao;
import kr.ac.alcoholiday.model.Alcohol;
import kr.ac.alcoholiday.model.Attach;
import kr.ac.alcoholiday.search.Search;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class AlcoholServiceImpl implements AlcoholService {

    @Autowired
    AlcoholDao dao;

    @Autowired
    AttachDao attachDao;

    @Autowired
    ReplyDao replyDao;

    @Override
    public List<Alcohol> list(Search search) {
        return dao.list(search);
    }

    @Override
    @Transactional
    public void add(Alcohol item) {

        dao.add(item);

        if (item.getAttaches() != null) {
            for (Attach attach : item.getAttaches()) {
                attach.setAttachStuffNum(item.getStuffNum());

                attachDao.add(attach);
            }
        }
    }

    @Override
    public Alcohol item(int stuffNum) {
        return dao.item(stuffNum);
    }

    @Override
    @Transactional
    public void update(Alcohol item) {

        attachDao.updateImgDelete(item.getAttachKey());

        if (item.getAttaches() != null) {
            for (Attach attach : item.getAttaches()) {
                attach.setAttachStuffNum(item.getStuffNum());
                attachDao.add(attach);
            }
        }
        dao.update(item);
    }

    @Override
    @Transactional
    public void delete(int stuffNum, String userId) {
        attachDao.delete(stuffNum);
        replyDao.deleteAll(stuffNum);
        dao.delete(stuffNum, userId);
    }

    @Override
    public List<Alcohol> bc() {
        return dao.bc();
    }
}

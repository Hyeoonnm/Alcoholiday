package kr.ac.alcoholiday.service;

import kr.ac.alcoholiday.dao.AlcoholDao;
import kr.ac.alcoholiday.dao.AttachDao;
import kr.ac.alcoholiday.model.Alcohol;
import kr.ac.alcoholiday.model.Attach;
import kr.ac.alcoholiday.pager.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class AlcoholServiceImpl implements AlcoholService{

    @Autowired
    AlcoholDao dao;

    @Autowired
    AttachDao attachDao;

    @Override
    public List<Alcohol> list() {
        return dao.list();
    }

    @Override
    @Transactional
    public void add(Alcohol item) {

        dao.add(item);

        if (item.getAttaches() != null) {
            for(Attach attach : item.getAttaches()) {
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
    public void update(Alcohol item) {
        dao.update(item);
    }

    @Override
    public void delete(int stuffNum, String userId) {
        dao.delete(stuffNum, userId);
    }
}

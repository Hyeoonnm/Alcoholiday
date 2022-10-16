package kr.ac.alcoholiday.service;

import kr.ac.alcoholiday.dao.UserDao;
import kr.ac.alcoholiday.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao dao;

    @Override
    public void signup(User user) {
        dao.signup(user);
    }

    @Override
    public boolean checkId(String userId) {
        if (dao.checkId(userId) == 0)
            return true;

        else
            return false;
    }

    @Override
    public boolean login(User user) {
        User item = dao.login(user);

        if (item != null) {

            user.setUserId(item.getUserId());
            user.setUserPwd(null);
            user.setUserJoinDate(item.getUserJoinDate());

            return true;
        } else
            return false;
    }


}

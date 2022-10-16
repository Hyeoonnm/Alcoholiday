package kr.ac.alcoholiday.dao;

import kr.ac.alcoholiday.model.User;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao{
    @Autowired
    SqlSession sql;
    @Override
    public void signup(User user) {
        sql.insert("user.signup", user);
    }

    @Override
    public int checkId(String userId) {
        return sql.selectOne("user.checkId", userId);
    }

    @Override
    public User login(User user) {
        return sql.selectOne("user.login", user);
    }

}

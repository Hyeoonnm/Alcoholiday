package kr.ac.alcoholiday.dao;

import kr.ac.alcoholiday.model.User;

public interface UserDao {
    void signup(User user);

    int checkId(String userId);

    User login(User user);
}

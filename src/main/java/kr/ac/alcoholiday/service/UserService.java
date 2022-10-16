package kr.ac.alcoholiday.service;

import kr.ac.alcoholiday.model.User;

import javax.servlet.http.HttpSession;

public interface UserService {
    void signup(User user);
    boolean checkId(String userId);
    boolean login(User user);
}

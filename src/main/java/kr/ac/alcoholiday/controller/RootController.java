package kr.ac.alcoholiday.controller;

import kr.ac.alcoholiday.model.User;
import kr.ac.alcoholiday.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller

public class RootController {

    @Autowired
    UserService service;

    /* 홈 화면 */
    @RequestMapping("/main")
    public String main() {
        return "main";
    }
    // 홈 화면 끝

    /* 로그인 화면 */
    @GetMapping("/")
    public String login() {
        return "login";
    }

    @PostMapping("/")
    public String login(User user, HttpSession session) {

        if (service.login(user)) {
            session.setAttribute("user", user);

            return "main";

        } else

            return "login";

    }
    // 로그인 끝

    /* 로그아웃 */
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();

        return "redirect:/";
    }
    // 로그아웃 끝

   /* 회원가입 */
    @GetMapping("/signup")
    public String signup() {
        return "signup";
    }

    @PostMapping("/signup")
    public String signup(User user) {
        service.signup(user);

        return "redirect:/";
    }
    // 회원가입 끝

    /* 아이디 중복 체크 */
    @PostMapping("/checkId")
    public @ResponseBody String checkId(String userId) {
        if (service.checkId(userId))
            return "OK"; // 사용가능
        else
            return "FAIL"; // 불가능
    }
}

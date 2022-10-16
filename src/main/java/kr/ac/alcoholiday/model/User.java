package kr.ac.alcoholiday.model;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter

public class User {
    // 회원 아이디
    private String userId;

    // 회원 비밀번호
    private String userPwd;

    // 회원 이름
    private String userName;

    //회원 전화번호
    private String userPhone;

    // 회원 이메일
    private String userEmail;

    // 회원 가입일
    private Date userJoinDate;

}

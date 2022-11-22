package kr.ac.alcoholiday.model;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter @Setter
public class Reply {
    private int replyNum;
    private String replyContent;
    private Date replyRegDate;

    /* user FK */
    private String replyUserId;

    /* alcohol FK */
    private int replyStuffNum;
}

package kr.ac.alcoholiday.model;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter

public class Alcohol {

    // == Alcohol table start ==

    // 고유 번호
    private int stuffNum;

    // 이름
    private String stuffName;

    // 제작사
    private String stuffPublisher;

    // 가격
    private String stuffPrice;

    // 등록일
    private Date stuffRegDate;

    // 술, 도구, 레시피 등 구분 번호
    private int stuffSplit;

    // 썸네일 이미지
    private String stuffThumbnail;

    // 상세 내용
    private String stuffContent;

    // == Alcohol table end ==

    // User FK
    private String stuffUserId;

}

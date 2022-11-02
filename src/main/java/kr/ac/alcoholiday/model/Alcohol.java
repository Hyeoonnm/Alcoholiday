package kr.ac.alcoholiday.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;
import java.util.List;

@Getter
@Setter

public class Alcohol {

    // == Alcohol table start ==

    // 고유 번호
    private int stuffNum;

    // 이름
    private String stuffName;

    // 가격
    private String stuffPrice;

    // 등록일
    private Date stuffRegDate;

    // 술, 도구, 레시피 등 구분 번호
    private int stuffSplit;

    // 상세 내용
    private String stuffContent;

    // == Alcohol table end ==


    // User FK
    private String stuffUserId;


    // Attach
    private List<MultipartFile> attach;
    private List<Attach> attaches;
}

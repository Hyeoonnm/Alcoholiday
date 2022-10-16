package kr.ac.alcoholiday.model;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter

public class Alcohol {
    private int alcoholNum;
    private String alcoholName;
    private String alcoholPublisher;
    private String alcoholPrice;
    private Date alcoholRegDate;

}

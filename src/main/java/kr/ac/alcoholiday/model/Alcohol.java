package kr.ac.alcoholiday.model;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter

public class Alcohol {

    // alcohol table
    private int stuffNum;
    private String stuffName;
    private String stuffPublisher;
    private String stuffPrice;
    private Date stuffRegDate;

    // -- end alcohol table

    // FK
    private String stuffUserId;
}

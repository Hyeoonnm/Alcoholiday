package kr.ac.alcoholiday.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Attach{

    // == Attach table start ==

    private int attachNum;

    private String attachFilename;

    // == Attach table end ==


    // Alcohol FK
    private int attachStuffNum;
}

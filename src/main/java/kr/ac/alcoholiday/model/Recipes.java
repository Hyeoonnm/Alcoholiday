package kr.ac.alcoholiday.model;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class Recipes {
    private int recipesNum;
    private String recipesName;
    private String recipesContent;
    private Date recipesRegDate;
}

package kr.ac.alcoholiday.pager;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Pager {

private int startPage = 1;
private int perPage = 10;

private int kind;
private String keyword;

private int getOffset;

public int getOffset() {
    return (startPage - 1) * perPage;
}

public void setGetOffset(int getOffset) {
        this.getOffset = getOffset;
    }
}

package kr.ac.alcoholiday.dao;

import kr.ac.alcoholiday.model.Attach;

import java.util.List;

public interface AttachDao {
    void add(Attach attach);

    void delete(int stuffNum);

    void imgDelete(String attachNum);

    List<Attach> list(String stuffNum);

    void updateImgDelete(int attachKey);
}

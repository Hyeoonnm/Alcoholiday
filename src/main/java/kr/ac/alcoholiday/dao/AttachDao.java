package kr.ac.alcoholiday.dao;

import kr.ac.alcoholiday.model.Attach;

public interface AttachDao {
    void add(Attach attach);

    void delete(int stuffNum);

    void imgDelete(String attachNum);
}

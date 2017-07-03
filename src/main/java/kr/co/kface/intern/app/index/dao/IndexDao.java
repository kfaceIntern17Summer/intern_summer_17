package kr.co.kface.intern.app.index.dao;

import java.util.List;
import java.util.Map;

/**
 * Created by jaeng on 2017. 7. 3..
 */
public interface IndexDao {
    List<Map<String, Object>> selectUserList();
}

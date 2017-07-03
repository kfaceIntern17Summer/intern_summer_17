package kr.co.kface.intern.app.index.service;

import kr.co.kface.intern.app.index.dao.IndexDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by jaeng on 2017. 7. 3..
 */
@Service("indexService")
public class IndexService {

    @Resource(name="indexDao")
    private IndexDao indexDao;

    public List<Map<String, Object>> selectUserList(){
        return indexDao.selectUserList();
    }

}

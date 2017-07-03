package kr.co.kface.intern.app.index.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by jaeng on 2017. 7. 3..
 */
// DAO는 실제로 Mybatis를 이용하여 Mysql에서 데이터를 가져옵니다
// Insert나 Update의 경우 commin
@Repository("indexDao")
public class IndexDaoImpl implements IndexDao{


    @Autowired
    private SqlSessionFactory sessionFactory;


    @Override
    public List<Map<String, Object>> selectUserList() {
        SqlSession sqlSession = sessionFactory.openSession();
        List<Map<String, Object>> retList = sqlSession.selectList("sample.selectUserList");
        sqlSession.close();
        return retList;

    }
}

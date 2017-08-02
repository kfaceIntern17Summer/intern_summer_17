package kr.co.kface.intern.app.index.dao;

import javafx.scene.control.Cell;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by jaeng on 2017. 7. 3..
 */
// DAO는 실제로 Mybatis를 이용하여 Mysql에서 데이터를 가져옵니다
// Insert나 Update의 경우 commit


@Repository("indexDao")
public class IndexDaoImpl implements IndexDao {
    private Logger logger = LogManager.getLogger(this.getClass());

    @Autowired
    private SqlSessionFactory sessionFactory;

    @Override
    public List<Map<String, Object>> selectMemberList() {
        SqlSession sqlSession = sessionFactory.openSession();
        List<Map<String, Object>> MemList = sqlSession.selectList("sample.selectMemberList");
        sqlSession.close();

        return MemList;
    }


    @Override
    public List<Map<String, Object>> selectMember(int memberID) {
        SqlSession sqlSession = sessionFactory.openSession();

        List<Map<String, Object>> MemList = sqlSession.selectList("sample.selectOneMember", memberID);
        sqlSession.close();

        return MemList;
    }

    @Override
    public List<Map<String, Object>> selectCellList() {
        SqlSession sqlSession = sessionFactory.openSession();
        List<Map<String, Object>> CellList = sqlSession.selectList("sample.selectCellList");
        sqlSession.close();

        return CellList;
    }

    @Override
    public List<Map<String, Object>> selectCellList(int cellID) {
        SqlSession sqlSession = sessionFactory.openSession();
//        sqlSession.update("updateCell");
//        sqlSession.commit();
        List<Map<String, Object>> CellList = sqlSession.selectList("sample.selectCellListByID", cellID);
        sqlSession.close();

        return CellList;
    }

    @Override
    public List<Map<String, Object>> selectCellMember(int cellID) {
        SqlSession sqlSession = sessionFactory.openSession();
        //sqlSession.update("updateCellMember");
//        sqlSession.commit();
        List<Map<String, Object>> MemList = sqlSession.selectList("sample.selectCellMemberList", cellID);

        sqlSession.close();
        return MemList;
    }


    @Override
    public void insertMember(HashMap<String, Object> params) {
        SqlSession sqlSession = sessionFactory.openSession();
        sqlSession.insert("sample.insertMember", params);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public void insertCell(HashMap<String, Object> params) {
        SqlSession sqlSession = sessionFactory.openSession();
        sqlSession.insert("sample.insertCell", params);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public void updateMember(HashMap<String, Object> params) {
        SqlSession sqlSession = sessionFactory.openSession();
        sqlSession.update("sample.updateMember", params);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public void updateCellMembers(HashMap<String, Object> params) {
        SqlSession sqlSession = sessionFactory.openSession();
        sqlSession.update("sample.updateCellMembers", params);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public void setLeader(HashMap<String, Object> params) {
        SqlSession sqlSession = sessionFactory.openSession();
        sqlSession.update("sample.setLeader", params);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public List<Map<String, Object>> selectReport(int cellID) {
        SqlSession sqlSession = sessionFactory.openSession();
        List<Map<String, Object>> report = sqlSession.selectList("sample.selectReport", cellID);

        sqlSession.close();
        return report;
    }

    @Override
    public void deleteMember(int memberID) {
        SqlSession sqlSession = sessionFactory.openSession();
        sqlSession.delete("sample.deleteMember", memberID);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public void deleteCell(int cellID) {
        SqlSession sqlSession = sessionFactory.openSession();
        sqlSession.delete("sample.deleteCell", cellID);
        sqlSession.commit();
        sqlSession.close();
    }

}

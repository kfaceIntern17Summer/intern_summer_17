package kr.co.kface.intern.app.index.service;

import kr.co.kface.intern.app.index.dao.IndexDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by jaeng on 2017. 7. 3..
 */
@Service("indexService")
public class IndexService {

    @Resource(name = "indexDao")//IndexDaoImpl Repository 이름
    private IndexDao indexDao;



    public void insertMember(HashMap<String, Object> params) {
        indexDao.insertMember(params);
    }

    public void insertCell(HashMap<String,Object>params){indexDao.insertCell(params);}

    public List<Map<String, Object>> selectMemberList() {
        return indexDao.selectMemberList();
    }

    public List<Map<String,Object>> selectMemberList(HashMap<String,Object>params){return indexDao.selectMemberList(params);}

    public List<Map<String, Object>> selectMember(int memberID) {
        return indexDao.selectMember(memberID);
    }

    public void updateMember(HashMap<String, Object> params) {
        indexDao.updateMember(params);
    }

    public void deleteMember(int memberID) {
        indexDao.deleteMember(memberID);
    }

    public void deleteCell(int cellID){indexDao.deleteCell(cellID);}

    public List<Map<String, Object>> selectCellList() {
        return indexDao.selectCellList();
    }

    public List<Map<String, Object>> selectCellList(int cellID) {
        return indexDao.selectCellList(cellID);
    }

    public List<Map<String, Object>> selectCellMember(int cellID) {
        return indexDao.selectCellMember(cellID);
    }

    public void updateCellMembers(HashMap<String, Object> params) {
        indexDao.updateCellMembers(params);
    }

    public void setLeader(HashMap<String, Object> params){indexDao.setLeader(params);}

    public List<Map<String,Object>> selectReport(int cellID){return indexDao.selectReport(cellID);}
}

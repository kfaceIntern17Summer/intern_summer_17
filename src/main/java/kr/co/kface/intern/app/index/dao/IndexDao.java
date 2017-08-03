package kr.co.kface.intern.app.index.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by jaeng on 2017. 7. 3..
 */
public interface IndexDao {

    void insertMember(HashMap<String, Object> params);

    void insertCell(HashMap<String,Object>params);

    List<Map<String, Object>> selectMemberList();

    List<Map<String, Object>> selectMemberList(HashMap<String, Object> params);

    List<Map<String, Object>> selectMember(int memberID);

    List<Map<String,Object>> selectCellList();

    List<Map<String,Object>> selectCellList(int cellID);

    void updateMember(HashMap<String, Object> params);

    void deleteMember(int memberID);

    void deleteCell(int cellID);

    List<Map<String,Object>> selectCellMember(int cellID);

    void updateCellMembers(HashMap<String, Object> params);

    void setLeader(HashMap<String, Object> params);

    List<Map<String,Object>> selectReport(int cellID);
}



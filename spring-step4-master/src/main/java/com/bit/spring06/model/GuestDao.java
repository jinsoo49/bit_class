package com.bit.spring06.model;

import com.bit.spring06.model.entity.GuestVo;

import java.sql.SQLException;
import java.util.List;

public interface GuestDao {
    List<GuestVo> selectAll() throws SQLException;
    GuestVo selectOne(int pk) throws SQLException;
    int insertOne(GuestVo bean) throws SQLException;
    int updateOne(GuestVo bean) throws SQLException;
    int deleteOne(int pk) throws SQLException;

}

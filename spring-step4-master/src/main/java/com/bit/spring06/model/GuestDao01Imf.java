package com.bit.spring06.model;

import com.bit.spring06.model.entity.GuestVo;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GuestDao01Imf implements GuestDao{

    private DataSource dataSource;
    private ResultSet resultSet;
    private PreparedStatement preparedStatement;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @Override
    public List<GuestVo> selectAll() throws SQLException {
        String sql = "select * from guest order by sabun";
        List<GuestVo> list = new ArrayList<>();

        try(Connection connection = dataSource.getConnection()){
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                list.add(new GuestVo(resultSet.getInt("sabun"), resultSet.getString("name"),
                        resultSet.getDate("nalja"), resultSet.getInt("pay")));
            }
        }finally {
            resultSet.close();
            preparedStatement.close();
        }
        return list;
    }

    @Override
    public GuestVo selectOne(int pk) throws SQLException {
        return null;
    }

    @Override
    public int insertOne(GuestVo bean) throws SQLException {
        return 0;
    }

    @Override
    public int updateOne(GuestVo bean) throws SQLException {
        return 0;
    }

    @Override
    public int deleteOne(int pk) throws SQLException {
        return 0;
    }
}

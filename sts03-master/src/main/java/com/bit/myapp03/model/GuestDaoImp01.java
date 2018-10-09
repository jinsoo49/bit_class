package com.bit.myapp03.model;

import com.bit.myapp03.model.entity.GuestVo;
import org.apache.log4j.Logger;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GuestDaoImp01 implements GuestDao{

    Logger logger = Logger.getLogger(getClass());
    DataSource dataSource;

    public GuestDaoImp01() {
    }

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public DataSource getDataSource() {
        return dataSource;
    }

    @Override
    public List<GuestVo> selectAll() throws SQLException {
        String sql = "select * from guest order by sabun";
        List<GuestVo> list = new ArrayList<GuestVo>();
        try(Connection connection = dataSource.getConnection()){
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                GuestVo bean = new GuestVo(resultSet.getInt("sabun"),
                        resultSet.getString("name"),
                        resultSet.getDate("nalja"),
                        resultSet.getInt("pay"));
                list.add(bean);
            }

        }
        return list;
    }

    @Override
    public GuestVo selectOne(int sabun) throws SQLException {
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
    public int deleteOne(int sabun) throws SQLException {
        return 0;
    }
}

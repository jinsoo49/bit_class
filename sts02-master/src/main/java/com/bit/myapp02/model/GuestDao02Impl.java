package com.bit.myapp02.model;

import com.bit.myapp02.model.GuestDao;
import com.bit.myapp02.model.entity.GuestVo;
import org.apache.tomcat.dbcp.dbcp.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GuestDao02Impl implements GuestDao<GuestVo> {

    @Autowired
    DataSource dataSource;
    private Connection connection;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;



    public GuestDao02Impl() {
    }

    private int update (String sql, Object[] objects) throws SQLException{

        try{
           connection = dataSource.getConnection();
            preparedStatement = connection.prepareStatement(sql);
            for(int i=0; i<objects.length; i++){
                preparedStatement.setObject(i+1, objects[i]);
            }
            return preparedStatement.executeUpdate();
        } finally {
            if (connection!=null) connection.close();
        }

    }

    private List<GuestVo> selectAll(String sql, Object[] objects) throws SQLException {
        List<GuestVo> list = new ArrayList<GuestVo>();
        try{
            connection = dataSource.getConnection();
            preparedStatement = connection.prepareStatement(sql);
            for (int i=0; i<objects.length; i++){
                preparedStatement.setObject(i+1, objects[i]);
            }
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                list.add(new GuestVo(resultSet.getInt("sabun"),
                        resultSet.getString("name"),
                        resultSet.getDate("nalja"),
                        resultSet.getInt("pay")));
            }
        }finally {
            if(connection != null) connection.close();
        }
        return list;
    }

    @Override
    public List<GuestVo> selectAll() throws SQLException {
        String sql = "select * from guest order by sabun";
        return selectAll(sql, new Object[]{});
    }

    @Override
    public GuestVo selectOne(int pk) throws SQLException {
        String sql = "select * from guest where sabun=?";
        return selectAll(sql, new Object[]{pk}).get(0);
    }

    @Override
    public int insertOne(GuestVo guestVo) throws SQLException {
        String sql = "insert into guest (sabun, name, pay) values (?,?,?)";
        Object[] args = {guestVo.getSabun(), guestVo.getName(), guestVo.getPay()};
        return update(sql, args);
    }

    @Override
    public int updateOne(GuestVo guestVo) throws SQLException {
        String sql = "update guest set name=?, pay=? where sabun=?";
        Object[] args = {guestVo.getName(), guestVo.getPay(), guestVo.getSabun()};

        return update(sql, args);
    }

    @Override
    public int deleteOne(int pk) throws SQLException {
        String sql = "delete from guest where sabun=?";
        Object[] args = {pk};
        return update(sql, args);
    }
}

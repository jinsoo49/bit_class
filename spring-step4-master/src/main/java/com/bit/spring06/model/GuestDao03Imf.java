package com.bit.spring06.model;

import com.bit.spring06.model.entity.GuestVo;
import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class GuestDao03Imf implements GuestDao{
    Logger logger = Logger.getLogger(getClass());
    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    @Override
    public List<GuestVo> selectAll() throws SQLException {
        String sql = "select * from guest order by sabun";
        return template.query(sql, new RowMapper<GuestVo>(){

            @Override
            public GuestVo mapRow(ResultSet resultSet, int i) throws SQLException {
                logger.debug(i);
                GuestVo bean = new GuestVo();
                bean.setSabun(resultSet.getInt("sabun"));
                bean.setName(resultSet.getString("name"));
                bean.setNalja(resultSet.getDate("nalja"));
                bean.setPay(resultSet.getInt("pay"));
                return bean;
            }
        });
    }

    @Override
    public GuestVo selectOne(int pk) throws SQLException {
        String sql = "select * from guest where sabun=?";

        Object[] params = new Object[]{pk};

        return template.queryForObject(sql, params, new RowMapper<GuestVo>() {
            @Override
            public GuestVo mapRow(ResultSet resultSet, int i) throws SQLException {
                logger.debug(i);
                GuestVo bean = new GuestVo();
                bean.setSabun(resultSet.getInt("sabun"));
                bean.setName(resultSet.getString("name"));
                bean.setNalja(resultSet.getDate("nalja"));
                bean.setPay(resultSet.getInt("pay"));
                return bean;
            }
        });
    }

    @Override
    public int insertOne(GuestVo bean) throws SQLException {
        String sql = "insert into guest (name, nalja, pay) values (?, now(), ?)";
        Object[] params = {bean.getName(), bean.getPay()};
        return template.update(sql, params);
    }

    @Override
    public int updateOne(GuestVo bean) throws SQLException {
        String sql = "update guest set name=?, pay=? where sabun=?";
        Object[] params = {bean.getName(), bean.getPay(), bean.getSabun()};
        return template.update(sql, params);
    }

    @Override
    public int deleteOne(int pk) throws SQLException {
        String sql = "delete from guest where sabun=?";
        Object[] params = {pk};
        return template.update(sql, params);
    }
}

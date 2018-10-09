package com.bit.spring06.model;

import com.bit.spring06.model.entity.GuestVo;
import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class GuestDao02Imf implements GuestDao{
    Logger logger = Logger.getLogger(getClass());
    private JdbcTemplate template = new JdbcTemplate();

    public GuestDao02Imf(DataSource dataSource) {
        template.setDataSource(dataSource);
    }

    @Override
    public List<GuestVo> selectAll() throws SQLException {
        String sql = "select * from guest order by sabun desc";
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

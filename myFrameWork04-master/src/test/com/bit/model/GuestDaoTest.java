package com.bit.model;

import com.bit.model.entity.GuestVo;
import org.junit.Before;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;

import static org.junit.Assert.*;

public class GuestDaoTest {
    GuestDao dao;

    @Before
    public void setUp(){
        dao = new GuestDao();
    }

    @Test
    public void test() throws SQLException {
        List<GuestVo> list = dao.selectAll();
        assertNotNull(list);
        assertTrue(list.size() > 0);
    }
}

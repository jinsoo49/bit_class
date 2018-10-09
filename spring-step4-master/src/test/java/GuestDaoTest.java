package java;
import com.bit.spring06.model.GuestDao;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;


import java.sql.SQLException;

import static org.junit.Assert.*;

public class GuestDaoTest {
    org.apache.log4j.Logger logger = org.apache.log4j.Logger.getLogger(getClass());
    static GuestDao guestDao;

    @BeforeClass
    public static void setUpBeforeClass() throws Exception{
        Resource resource = new ClassPathResource("applicationContext.xml");
        BeanFactory beanFactory = new XmlBeanFactory(resource);
        guestDao = (GuestDao) beanFactory.getBean("guestDao");
    }

    @Before
    public void setUp() throws Exception {
        logger.debug(guestDao);
    }

    @Test
    public void testSelectAll() throws SQLException {
        assertNotNull(guestDao.selectAll());
    }
}

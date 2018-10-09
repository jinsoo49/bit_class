
import com.bit.myapp03.model.GuestDaoImp01;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class GuestDaoTest {
    private Object guestDao;

    @Test
    public void testConnection() {
        assertNotNull(((GuestDaoImp01)guestDao).getDataSource());
    }

    @Test
    public void testSelectAll() {
//        assertNotNull(guestDao.selectAll());
//        assertTrue(guestDao.selectAll().size()>0);
    }

    @After
    public void tearDown() throws Exception {

    }


    @Before
    public void setUp() throws Exception {

    }
}

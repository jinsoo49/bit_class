package com.bit.utils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

public class FrontController extends HttpServlet {

    @Override
    public void init() throws ServletException {

        super.init();

        Properties properties = new Properties();
        InputStream ras = getClass().getClassLoader().getResourceAsStream("bit.properties");

        try {
            properties.load(ras);
        } catch (IOException e) {
            e.printStackTrace();
        }

        Set<Object> keys = properties.keySet();
        Iterator<Object> iterator = keys.iterator();

        while (iterator.hasNext()){
            String key = (String) iterator.next();
            String value = properties.getProperty(key);
            HendlerMapping.setMap(key, value);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        doProgress(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        doProgress(req, resp);
    }

    protected void doProgress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        // list.do      ListController      list
        // add.do       AddController       add
//        Map<String, String> map = new HashMap<>();
//        map.put("/list.do", "com.bit.controller.ListController");
//        map.put("/add.do", "com.bit.controller.AddController");
//        map.put("/insert.do", "com.bit.controller.InsertController");

        String uri = request.getRequestURI();
        String root = request.getContextPath();
        uri = uri.substring(root.length());

        BitController controller = HendlerMapping.getMap(uri);

        String path = controller.execute(request);
        // /WEB-INF/view/이름.jsp

        String prefix="/WEB-INF/view/";
        String suffix=".jsp";
        String redirect = "redirect:";

        if(path.startsWith(redirect)){
            response.sendRedirect(path.substring(redirect.length()));
        }else{
            request.getRequestDispatcher(prefix+path+suffix).forward(request, response);
        }
    }
}

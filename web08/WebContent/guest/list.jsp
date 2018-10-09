<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
        <title>Insert title here</title>
    </head>
    
    <!-- DB 작업 시작 --> 
        <%
        String keyword = request.getParameter("keyword");
        String search = request.getParameter("search");
        
        String sql = "SELECT ROWNUM, SABUN, NAME, NALJA, PAY FROM GUEST";
        
        if(keyword != null){
        	sql += " where "+search+" like '%"+keyword+"%'";
        }
        
        String driver = application.getInitParameter("driver");
        String url = application.getInitParameter("url");
        String user = application.getInitParameter("user");
        String password = application.getInitParameter("password");
        
        ArrayList<HashMap> list = new ArrayList<HashMap>();
        
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        
        try{
        	Class.forName(driver);
        	conn = DriverManager.getConnection(url, user, password);
        	stmt = conn.createStatement();
        	rs = stmt.executeQuery(sql);
        	while(rs.next()){
        		HashMap map = new HashMap();
        		
        		map.put("rn", rs.getInt(1));
        		map.put("sabun", rs.getInt(2));
        		map.put("name", rs.getString(3));
        		map.put("nalja", rs.getDate(4));
        		map.put("pay", rs.getInt(5));
        		
        		list.add(map);
        	}
        } catch (Exception e){
        	e.printStackTrace();
        } finally {
        	if(rs != null){
        		rs.close();
        	}
        	if(stmt != null){
        		stmt.close();
        	}
        	if(rs != null){
        		stmt.close();
        	}
        }        
        %>
    <!-- DB 작업 종료-->
    
    
    <body>
       <table align="center">
           <!-- 상단부 시작 -->
           <tr>
               <td align="center">
                  <img alt = "logo" src = "<%=application.getContextPath()%>/imgs/logo.png">
               </td>
           </tr>
           <tr>
               <td align="center" bgcolor="#ebebeb">
                  <a href = "<%=application.getContextPath()%>" style="text-decoration: none">[HOME]</a>
                  <a href = "<%=application.getContextPath()%>/guest/list.jsp" style="text-decoration: none">[GUEST]</a>
                  <a href = "#" style="text-decoration: none">[LOGIN]</a>
               </td>
           </tr>
           <!-- 상단부 종료 -->
           <!-- 메인페이지 시작 -->
           <tr>
               <td align="center">
                  <h1>리스트페이지</h1>
                  <hr>
                  <table align="center" border="1" cellspacing="0">
                    <tr>
                        <th width=100>번호</th>
                        <th width=100>사번</th>
                        <th width=100>이름</th>
                        <th width=100>날짜</th>
                        <th width=100>금액</th>
                    </tr>
                    <%
                    	for(int i = 0; i < list.size(); i++){
                    		HashMap hmap = list.get(i);
                    %>
                    <tr>
                        <td height="60">
                        	<%=hmap.get("rn") %>
                        </td>
                        <td height="60">
                        	<a href = "detail.jsp?sabun=<%=hmap.get("sabun") %>" style="text-decoration: none">
                        		<%=hmap.get("sabun") %>
                        	</a>
                        </td>
                        <td height="60">
                        	<%=hmap.get("name") %>
                        </td>
                        <td height="60">
                        	<%=hmap.get("nalja") %>
                        </td>
                        <td height="60">
                        	<%=hmap.get("pay") %>
                        </td>
                    </tr>
                    <%
                    	}
                    %>
                    <tr>
                    	<td colspan="5" align="center">
                    		<a href = "add.jsp" style="text-decoration: none">
                    			[입 력]
                    		</a>
                    	</td>
                    </tr>
                  </table>
                  <!-- 검색기능 -->
                  <br>
                  <hr>
                  	<form action="list.jsp">
                  		<select name="search">
                  			<option value="name">이름</option>
                  			<option value="sabun">사번</option>
                  		</select>
	                  	<input type="text" name = "keyword">
	                  	<input type="submit" value = "검 색">
                  	</form>
                  <hr>
                  
               </td>
           </tr>
           <!-- 하단부 시작 -->
           <tr>
               <td>
                  Copyright &copy; 비트캠프 All rights reserved.
               </td>
           </tr> 
           <!-- 하단부 종료-->
       </table>
    </body>
</html>
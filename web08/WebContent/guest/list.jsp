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
    
    <!-- DB �۾� ���� --> 
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
    <!-- DB �۾� ����-->
    
    
    <body>
       <table align="center">
           <!-- ��ܺ� ���� -->
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
           <!-- ��ܺ� ���� -->
           <!-- ���������� ���� -->
           <tr>
               <td align="center">
                  <h1>����Ʈ������</h1>
                  <hr>
                  <table align="center" border="1" cellspacing="0">
                    <tr>
                        <th width=100>��ȣ</th>
                        <th width=100>���</th>
                        <th width=100>�̸�</th>
                        <th width=100>��¥</th>
                        <th width=100>�ݾ�</th>
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
                    			[�� ��]
                    		</a>
                    	</td>
                    </tr>
                  </table>
                  <!-- �˻���� -->
                  <br>
                  <hr>
                  	<form action="list.jsp">
                  		<select name="search">
                  			<option value="name">�̸�</option>
                  			<option value="sabun">���</option>
                  		</select>
	                  	<input type="text" name = "keyword">
	                  	<input type="submit" value = "�� ��">
                  	</form>
                  <hr>
                  
               </td>
           </tr>
           <!-- �ϴܺ� ���� -->
           <tr>
               <td>
                  Copyright &copy; ��Ʈķ�� All rights reserved.
               </td>
           </tr> 
           <!-- �ϴܺ� ����-->
       </table>
    </body>
</html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.day06.util.MyOracle"%>
<%@page import="com.day06.bean.GuestBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<%
	// ~개씩 보기
	int rowcnt;
	if(request.getParameter("rowcnt")==null){
		rowcnt = 10;
	}else{
		rowcnt = Integer.parseInt(request.getParameter("rowcnt"));
	}
	
	
	int tot = 0;
	String sql2 = "select count(*) as tot from guest";
	
	try{
		Statement stmt = MyOracle.getConnection().createStatement();
		ResultSet rs = stmt.executeQuery(sql2);
		if(rs.next()){
			tot = rs.getInt(1);
		}
	} catch (Exception ex){
		ex.printStackTrace();
	} finally {
		MyOracle.getConnection().close();
	}
	
	
	int startNum = 1;
	String pg = request.getParameter("page");
	if(pg != null){
		// p1->1 p2->11 p3->21 p4->31
		startNum = rowcnt*(Integer.parseInt(pg)-1)+1;
	}
	
	String keyword = request.getParameter("keyword");
	
	
	
	String sql = "SELECT ROWNUM AS RN, SABUN, NAME, NALJA, PAY FROM"
			+" (select * from guest order by sabun desc)";
	
	if(keyword != null){
		// sql += " where name like '%"+keyword+"%'";
		// select rownum, sabun, name, nalja, pay from (select * from guest "+" where name like '%"+keyword+"%'" order by sabun")
		sql = "select rownum as page, rn, sabun, name, nalja, pay from ("+sql+") where name like '%"+keyword+"%'";
		sql = "select * from ("+sql+") where page between "+startNum+" and "+(startNum+(rowcnt-1));
	}else{
		sql = "select * from ("+sql+") where rn between "+startNum+" and "+(startNum+(rowcnt-1));		
	}
	
	ArrayList<GuestBean> list = new ArrayList<GuestBean>();
	
	
	try{
		stmt = MyOracle.getConnection().createStatement();
		rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			
			GuestBean bean = new GuestBean();
			bean.setRn(rs.getInt("rn"));
			bean.setSabun(rs.getInt("sabun"));
			bean.setName(rs.getString("name"));
			bean.setNalja(rs.getDate("nalja"));
			bean.setPay(rs.getInt("pay"));
			
			list.add(bean);
		}
	} catch(Exception e){
		
	} finally {
		MyOracle.getConnection().close();		
	}
	
	
	%>
	<body>
		<%@ include file = "../template/header.jspf" %>
		<%@ include file = "../template/menu.jspf" %>
			<tr>
				<td align="center" valign="top">
				<!-- content start -->
					<h1>
						리스트 페이지
					</h1>
					<form action="list.jsp">
						<input type = "text" name = "keyword">
						<input type = "submit" value = "검색">
					</form>
					<form action="list.jsp">
						<select name="rowcnt">
							<option value="5">5개씩 보기</option>
							<option value="10" selected="selected">10개씩 보기</option>
							<option value="15">15개씩 보기</option>
							<option value="20">20개씩 보기</option>
						</select>
						<input type="submit" value="보기">
					</form>
					<table width="80%" align="center" border="1" cellspacing="0">
					<tr>
						<th width = "60">
							글번호
						</th>
						<th>
							사번
						</th>
						<th>
							이름
						</th>
						<th width="100">
							날짜
						</th>
						<th width="60">
							금액
						</th>
					</tr>
					<% 
						for(int i = 0; i < list.size(); i++){							
							GuestBean javaBean = list.get(i);
					%>
					<tr>
						<td>
							<%=javaBean.getRn() %>
						</td>
						<td>
							<a href="detail.jsp?sabun=<%=javaBean.getSabun() %>">
							<%=javaBean.getSabun() %>
							</a>
						</td>
						<td>
							<%=javaBean.getName() %>
						</td>
						<td>
							<%=javaBean.getNalja() %>
						</td>
						<td>
							<%=javaBean.getPay() %>
						</td>
					</tr>
					<%
						}	// for end
					%>
					</table>
					
					<%
					int leng = 3;
					int p = 1;
					if(pg!=null){
						p = Integer.parseInt(pg);
					}
					int start = (p-1)/leng*leng;
					int end = start + leng;
					tot = ((tot-1)/rowcnt)+1;
					if(start != 0){
					%>
						<a href ="list.jsp?page=<%=start %>&rowcnt=<%=rowcnt %>" style="text-decoration: none">[prev]</a>
					<%
					}
					for(int i = p-2; i < p+1; i++){
						if(i==-2 || i == tot)break;
					%>
						<a href = "list.jsp?page=<%=i+2 %>&rowcnt=<%=rowcnt %>" style="text-decoration: none">[<%=i+2 %>]</a>
					<%
					}
					if(tot>end){
						%>
						<a href = "list.jsp?page=<%=end+1 %>&rowcnt=<%=rowcnt %>" style="text-decoration: none">[next]</a>
						<%
					}
					%>
					
					<p>
						<a href="add.jsp" style="text-decoration: none">[입 력]</a>
					</p>
				<!-- content end -->
			<%@ include file = "../template/footer.jspf" %>
	</body>
</html>
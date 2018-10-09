<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>JSTL 제어문</h1>
		<h2>조건문 - else, else if가 존재하지 않음</h2>
		<h3>if문</h3>
		<c:set var="a" value="1"></c:set>
		<c:if test="${a>0 }">
			양수
			<c:if test="${a eq 0 }">
				0
			</c:if>
			입니다
		</c:if>
		<c:if test="${a eq 0 }">
			0입니다
		</c:if>
		<c:if test="${a lt 0 }">
			음수입니다
		</c:if>
		<h3>choose문</h3>
		<!-- switch문의 default와 같은 역할 -->
		<c:choose>
			<c:when test="${a lt 0 }">음수</c:when>
			<c:when test="${a gt 0 }">양수</c:when>
			<c:otherwise>양수</c:otherwise>				
		</c:choose>
		<h2>반복문 (for, while)</h2>
		<c:forEach begin="1" end="5" var="num">
			<p>반복 : ${num }</p>
		</c:forEach>
		<%
			String[] msgs = {"a", "ab", "abc", "abcd", "abcde"};
			ArrayList<String> list = new ArrayList<String>();
			list.add("item1");
			list.add("item2");
			list.add("item3");
			list.add("item4");
			list.add("item5");
			pageContext.setAttribute("arr", list);
			for(String temp:msgs){
				System.out.println(temp);
			}
		%>
		<ul>
			<c:forEach items="${arr }" var="msg" varStatus="status">
				<li>${status.last} : ${msg }</li>
			</c:forEach>
		</ul>
		<h3>루프</h3>
		<ul>
			<c:forTokens var="msg" items="${'java,web,db,framework' }" delims=",">
				<li>${msg }</li>	
			</c:forTokens>
		</ul>
	</body>
</html>
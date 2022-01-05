<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>


<%

	String id = request.getParameter("id");
	int idint =  Integer.parseInt(id);
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");

%>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>[Phonebook1]</h1>

	<h2>전화번호 수정화면</h2>

	<form action="./update.jsp?" method="get">
		이름(name) : <input type="text" name="name" value="">
		<br> 핸드폰(hp) : <input type="text" name="hp" value="">
		<br> 회사(company) : <input type="text" name="company" value="">
		<br> <input type="hidden" name="id" value="<%= id %>">
		<button type="submit">수정</button>
	</form>
</body>
</html>


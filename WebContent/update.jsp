<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.util.List"%>
<%@ page import="com.javaex.vo.PersonVo"%>
<%@ page import="com.javaex.dao.PhoneDao"%>


<%
//PoneDao를 메모리에 올린다
	PhoneDao phoneDao = new PhoneDao();

	String id = request.getParameter("id");
	int idint =  Integer.parseInt(id);
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");

	PersonVo personVo = new PersonVo(idint, name, hp, company);

	phoneDao.personUpdate(personVo);
	
	//리다이렉트 리스트 페이지로 돌려버내준다
	response.sendRedirect("./list.jsp");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
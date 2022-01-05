<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%	
	//PoneDao를 메모리에 올린다
	PhoneDao phoneDao = new PhoneDao();

	
	
	//파라미터 값 가져오기
	String name = request.getParameter("name"); // wirte에서 name="name" 와 같은 이름이여야함
	String hp = request.getParameter("hp");
	String company = request.getParameter("company"); 
	
	/*
	테스트
	System.out.println(name);
	System.out.println(hp);
	System.out.println(company);
	*/
	
	//전승된 값을 vo객체로 만든다
	PersonVo personVo = new PersonVo(name, hp, company);
	
	
	
	//저장
	phoneDao.personInsert(personVo);
	
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%	
	//PoneDao를 메모리에 올린다
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> personList = phoneDao.getPersonList();
	//파라미터 값 가져오기
	String id = request.getParameter("id");
	
	int idint =  Integer.parseInt(id);

	
	//삭제
	phoneDao.personDelete(idint);
	
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
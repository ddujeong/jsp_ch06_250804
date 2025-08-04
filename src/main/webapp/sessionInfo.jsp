<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션의 모든 정보</title>
</head>
<body>
	<h2>모든 세션 정보 확인 하기</h2>
	<hr>
	<%
		Enumeration sessionEnum =  session.getAttributeNames();
		// 세션의 모든 정보를 열거형으로 반환
		while(sessionEnum.hasMoreElements()){
			String sName = sessionEnum.nextElement().toString();
			String sValue = session.getAttribute(sName).toString();
			out.println(sName + " : " + sValue + "<br>");
		}
		String session_id = session.getId();
		// 접속한 브라우저별로 매칭되는 유니크한 고유 ID값
		out.println("세션의 고유 아이디 : " + session_id);
	
	%>
	<hr>
	<a href="loginUser.jsp">로그인 유저 페이지 바로 가기</a><br><br>
	<a href="login.jsp">로그인 바로 가기</a>
</body>
</html>
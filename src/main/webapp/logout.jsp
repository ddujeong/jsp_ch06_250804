<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<%
		session.removeAttribute("memberId"); // 세션에 있는 memberId 지우기

	%>
	<a href="sessionInfo.jsp">세션정보 바로가기</a>
</body>
</html>
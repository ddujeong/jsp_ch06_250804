<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 유효 시간</title>
</head>
<body>
	<%
		int sTime = session.getMaxInactiveInterval();// 현재 세션 유효시간을 초단위로 가져오기
		out.println("세션의 유호시간 : " + sTime + " 초" + "<br>");
		out.println("세션의 유호시간 : " + (sTime/60) + " 분");
		out.println("<hr>");
		
		session.setMaxInactiveInterval(60 * 5); // 세션 유효시간 설정(초 단위) -> 5분으로 변경
		sTime = session.getMaxInactiveInterval();
		out.println("세션의 유호시간 : " + sTime + " 초" + "<br>");
		out.println("세션의 유호시간 : " + (sTime/60) + " 분");
		
	%>
</body>
</html>
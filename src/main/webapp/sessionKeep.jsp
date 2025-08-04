<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 유지 시간 확인</title>
</head>
<body>
	<%
	String sessionId  = session.getId();
	long lastTime = session.getLastAccessedTime(); // 마지막 세션 접근 시간(밀리세컨)
	long startTime =  session.getCreationTime(); // 세션이 생성된 시간
	long keepTime = (lastTime - startTime)/ 1000; //초 단위로 출력

		out. println("세션 아이디 : "  +sessionId + "<br>");
		out. println("세션 지속시간 : "  +keepTime + " 초");
		out. println("<hr>");
		
	long currentTime = System.currentTimeMillis();
	long keepTime2 = (currentTime - startTime) / 1000;
		out.println("세션 지속 시간 : " + keepTime2 + "초");
		out.println("<hr>");
		
	long loginTime = (long) session.getAttribute("loginTime");
	long keepTime3 = (currentTime - loginTime) / 1000;
	// 로그인 성공 후 경과 시간
		out.println("로그인 경과 후 시간 : " + keepTime3 + " 초");
	
	
	%>
</body>
</html>
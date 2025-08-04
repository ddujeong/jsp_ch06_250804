<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("loginId");
	String pw = request.getParameter("loginPw");
	
	if(id.equals("tiger") && pw.equals("12345")){
		session.setAttribute("sessionFlag", "yes"); // 로그인 상태만 확인
		session.setAttribute("memberId", id); // (세션이름(작명),세션에 저장한 로그인한 유저의 아이디값)
		long currentTime = System.currentTimeMillis();
		session.setAttribute("loginTime", currentTime);
		response.sendRedirect("loginSuccess.jsp"); //강제 페이지 이동 -> 로그인 성공시 성공페이지로 이동
	} else{
		System.out.print("로그인 실패");
		response.sendRedirect("login.jsp"); // 강제 페이지 이동 -> 로그인 실패시 로그인 페이지로 강제 이동
	}
	
	%>
</body>
</html>
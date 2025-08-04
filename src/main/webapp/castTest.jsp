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
	Object objstring = "hello";
	String str = (String) objstring; // 다운캐스팅 가능
	// objstring에 문자열만 들어있을경우 다운캐스팅 가능
	out.println(str);
	
	Object objstring2 = new Integer(123);
	// String str2 = (string) objstring2; // 다운캐스팅 불가
	String str2 = objstring2.toString();

%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="el.jsp">
		<input type="text" name="num1" value="${param.num1}">+<input type="text" name="num2" value="${param.num2}">
		<input type="submit" value="="> 
		<input type="text" name="result" value="${param.num1+param.num2}">
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dept" class="com.et.jc.Query"  scope="page"></jsp:useBean>
<%--${pageScope.dept.table } --%>

<%--获取table中的数据 --%>
<c:set var="list" value="${pageScope.dept.table }"></c:set>
<table border="1">
	<tr><th>deptno</th><th>dname</th><th>loc</th></tr>
	<c:forEach var="ls" items="${pageScope.list}">
		<tr><td>${pageScope.ls.deptno }</td><td>${pageScope.ls.dname }</td><td>${pageScope.ls.loc }</td></tr>	
	</c:forEach>
</table>
</body>
</html>
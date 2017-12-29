<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib tagdir="/WEB-INF/tags"  prefix="ex"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 自定义标签 -->
<!-- add -->
<ex:add p2="12" p1="56"></ex:add>

<!-- minus -->
<ex:minus p2="66" p1="24"></ex:minus>

<!-- if -->
<ex:if test="${1==1 }">
hello
</ex:if>

<!-- for循环 -->
<ex:for var="i" begin="1" end="10" step="1">
${requestScope.i }
</ex:for>	

<!-- forEach -->
<!-- 遍历集合 -->
<%
	List list = new ArrayList();
	list.add("zs");
	list.add("ls");
	pageContext.setAttribute("list", list);
%>
<ex:forEach var="mystr" items="${pageScope.list }">
${requestScope.mystr }
</ex:forEach>


<br/>
<!-- 遍历数组 -->
<ex:forEach var="i" items="${fn:split('a,b,c',',')}">
${requestScope.i }
</ex:forEach>

</body>
</html>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- core标签库 -->
	<c:set var="name" value="zs" scope="page"></c:set>
	<c:set var="sum" value="${1+1 }" scope="page"></c:set>
	${pageScope.name }
	${pageScope.sum }
	
	<!-- if -->
	<c:set var="sal" value="30000" scope="page"></c:set>
	<c:if test="${pageScope.sal<20000 }">
		低薪
	</c:if>
	<c:if test="${pageScope.sal>20000 }">
		高薪
	</c:if>
	
	<!-- choose when otherwise相当于if...else -->
	<c:set var="sex" value="男" scope="page"></c:set>
	<c:choose>
		<c:when test="${pageScope.sex=='男' }">
		男<br/>
		</c:when>
		<c:when test="${pageScope.sex=='女' }">
		女<br/>
		</c:when>
		<c:otherwise>
		布吉岛<br/>
		</c:otherwise>
	</c:choose>
	
	<!-- forEach循环 可操作数组或集合-->
	<c:forEach var="i" begin="1" end="10" step="1">
	
		${pageScope.i}<br/>
	</c:forEach>
	
	<%
		String[] cs = new String[]{"语文","数学","语文"};
		pageContext.setAttribute("cs", cs);
		
		java.util.List list = new java.util.ArrayList();
		list.add("看书");
		list.add("写字");
		list.add("吃火锅");
		pageContext.setAttribute("mylist", list);
	%>
	
	<c:forEach var="c" items="${pageScope.cs }">
		${pageScope.c}<br/>
	</c:forEach>
	
	<c:forEach var="ml" items="${pageScope.mylist}">
		${pageScope.ml }<br/>
	</c:forEach>
	
	<!-- out输出内容 -->
	<c:set var="comm" value="12000" scope="page"></c:set>
	${pageScope.comm }
	<c:out value="${pageScope.comm }" escapeXml="true"></c:out>
	<!-- 其他core标签 -->
	<%--<c:redirect url="http://www.baidu.com"></c:redirect>--%>
	<%--<c:import url=""></c:import><!--动态包含（跟jsp:include类似） --> --%>
	
	<c:catch var="myex">
		<%
			String s = null;
			s.toString();
		%>
	</c:catch>
	${pageScope.myex }
	
	
</body>
</html>
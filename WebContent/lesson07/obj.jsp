<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 将日期类型转化成字符串 -->
	<jsp:useBean id="date" class="java.util.Date" scope="page"></jsp:useBean>
	<fmt:formatDate value="${pageScope.date }" pattern="yyyy-MM-dd HH:mm:ss"/>
	
	<!-- 将字符串转成日期类型 -->
	<fmt:parseDate pattern="yyyy/MM/dd" value="2017/10/13"></fmt:parseDate>
	
	<!-- 将数字类型格式化输出   将数字类型转化成字符串 -->
	<fmt:formatNumber value="125.02554" pattern="###.###"></fmt:formatNumber>
	
	<!--设置请求浏览器的locale对象 国际化 -->
	<fmt:setLocale value="${pageContext.request.locale }"/>
	<!-- 设置读取资源文件的basename -->
	<fmt:setBundle basename="/my"/>
	<!-- 读取资源文件的消息 -->
	<fmt:message key="tag"></fmt:message>
	<c:forEach var="i" begin="1" end="10" step="1">
	hello
	</c:forEach>
</body>
</html>
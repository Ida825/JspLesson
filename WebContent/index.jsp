<!-- 
	pageEncoding -- jsp编译成servlet的Java文件时，设置的Java文件的字符集
	contentType -- 是响应时，响应给浏览器的字符集
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="java.lang.*"%>

<!-- 是否忽略el表达式 -->
<%@ page  isELIgnored="false"%>

<!-- 是否是线程安全的 默认：true 
	 servlet单实例，线程不安全，
	 改成多实例，线程安全，每请求一次都会新建一个对象，但是内存开销大
-->
<%@ page isThreadSafe="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		//你好呀 
	%>
	你好8888
	
	<%-- isELIgnored="false"，值为6，“true”时 ，值为${2+4} --%>
	${2+4}
	
	<%!
		int i=0;		
	%>
	<% i++; %>
	<%=i %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--scope="page"代表作用域是当前页面  -->
	<jsp:useBean id="mc" class="com.et.jc.MyCard" scope="page"></jsp:useBean>
	<jsp:setProperty property="id" name="mc" value="110"/>
	<jsp:setProperty property="cardNo" name="mc" value="620121199008104322"/>
	<jsp:setProperty property="bornDate" name="mc" value ="1990" />
	
	<jsp:setProperty property="cardAddress" name="mc" value="lanzhou"/>
	
	<!-- <%=pageContext.getAttribute("mc") %> -->
	id:<jsp:getProperty property="id" name="mc"/><br/>
	cardNo:<jsp:getProperty property="cardNo" name="mc"/><br/>
	bornDate:<jsp:getProperty property="bornDate" name="mc"/><br/>
	cardAddress:<jsp:getProperty property="cardAddress" name="mc"/><br/>
</body>
</html>
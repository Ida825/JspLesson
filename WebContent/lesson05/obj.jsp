<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 四大作用域对象 -->
	<jsp:useBean id="mc" class="com.et.jc.MyCard" scope="page"></jsp:useBean>
	<jsp:setProperty property="id" name="mc" value="1"/>
	<jsp:setProperty property="cardNo" name="mc" value="1454647984136"/>
	
	<!-- el表达式拥有四个对应的内置对象：pageScope requestScope sessionScope applicationScope -->
	<!-- 用el表达式中的pageScope对象取值 -->
	${pageScope.mc.id }<br/>
	${pageScope.mc.cardNo }<br/>
	
	<!-- 用el表达式中的requestScope对象取值 -->
	<jsp:useBean id="mc1" class="com.et.jc.MyCard" scope="request"></jsp:useBean>
	<jsp:setProperty property="id" name="mc1" value="2"/>
	<jsp:setProperty property="cardNo" name="mc1" value="216346413"/>
	${requestScope.mc1.id}<br/>
	${requestScope.mc1.cardNo }<br/>
	
	<!-- 用el表达式中的applicationScope对象取值 -->
	<jsp:useBean id="mc2" class="com.et.jc.MyCard" scope="application"></jsp:useBean>
	<jsp:setProperty property="id" name="mc2" value="3"/>
	<jsp:setProperty property="cardNo" name="mc2" value="464321436"/>
	${applicationScope.mc2.id }<br/>
	${applicationScope.mc2.cardNo }<br/>
	
	<%
		//如果不指定作用域，会从作用域最低的那个作用域开始搜索pageScope< requestScope <sessionScope <applicationScope
		//虽然可以不写作用域对象，但会影响搜索效率 建议指定作用域 
		//pageContext.setAttribute("id",1);
		//request.setAttribute("id", 2);
		//session.setAttribute("id", 3);
		application.setAttribute("id", 4);
	%>
	${id }
	
	<!-- el表达式提供了全局对象pageContext 可以用于处理页面上任意的内置 -->
	${pageContext.request.contextPath }<!-- pageContext是全局对象，取上下文路径 -->
	${pageContext.session.id }
	<!-- 使用param内置对象获取URL上的参数 -->
	${param.id}
	${paramValues.id}<br/><!-- 获取数组 -->
	
	
	<!-- 用header内置对象获取URL上的请求头 -->
	${header.Accept}<br/>
	${header.Connection}<br/>
	${header['User-Agent'] }<br/>
	<!-- 用cookie获取 -->
	${cookie.JSESSIONID.value }
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//只能在本页面获取到值 
		//pageContext.setAttribute("sex","boy");
		//当前页面能取到 ，其他页面取不到，一响应就挂啦 
		application.setAttribute("sex","boy");
		request.getRequestDispatcher("b.jsp").forward(request, response);
	%>
	<%=application.getAttribute("sex") %>
</body>
</html>
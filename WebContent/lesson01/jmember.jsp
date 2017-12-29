<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--html标签-->
	
	<%-- 1. <%!  jsp声明 在翻译的servlet中定义全局变量和方法 --%>	
	<%!
		int i=0;
		public static int add(int p1,int p2){
			return p1+p2;
		}
	%>
	
	<%-- 2. <%=  jsp输出 （相当于 out.print()） --%>
	<%= ++i %>		
	<br/>
	<%=add(111,222) %>
	<br/>
	<%-- 3. <%  jsp代码段(实际是定义在_JspService中的局部  每次请求都会调用)  --%>
	<%		
		for(int j=1;j<=10;j++){		
	%>
	<%= j %>
	<%
		//啦啦啦啦
		}
	%>
</body>
</html>
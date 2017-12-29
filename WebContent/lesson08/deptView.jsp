<!-- jsp是MVC设计模式中的View层
主要用于和用户进行交互（可以看到的界面）
 -->
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
	<!-- 表单提交后，调度到servlet控制层去查询数据 -->
	<form action="${pageContext.request.contextPath}/dept"><!-- 从根路径下找dept -->
		<input type="text" name="ename">
		<input type="submit" value="提交" >
	</form>	
	<table>
		<tr><th>empno</th><th>ename</th><th>sal</th></tr>
		<c:forEach var="ls" items="${requestScope.pt.data}">
			<tr><td>${pageScope.ls.EMPNO}</td><td>${pageScope.ls.ENAME}</td><td>${pageScope.ls.SAL}</td></tr>
		</c:forEach>
		
		<tr>
			<td colspan="3">
			<a href="${pageContext.request.contextPath}/dept?curPage=1">首页</a>
			<a href="${pageContext.request.contextPath}/dept?curPage=${requestScope.pt.prePage}">上页</a>
			<c:forEach var="i" begin="1" end="${requestScope.pt.totalPage}">
				<a href="${pageContext.request.contextPath}/dept?curPage=${pageScope.i}">${pageScope.i}</a>
			</c:forEach>
			<a href="${pageContext.request.contextPath}/dept?curPage=${requestScope.pt.nextPage}">下页</a>
			<a href="${pageContext.request.contextPath}/dept?curPage=${requestScope.pt.totalPage}">尾页</a>
			</td>
		</tr>
	</table>
</body>
</html>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@attribute name="p2" type="java.lang.Double" required="true"%>
<%@attribute name="p1" type="java.lang.Double" required="true"%>

<%
	double result=p1-p2;
%>

<%=result%>
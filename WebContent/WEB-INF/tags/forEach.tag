<%@ tag language="java" pageEncoding="UTF-8" %>
<%@tag import="java.util.Collection" %>
<%@attribute name="items" type="java.lang.Object"%>
<%@attribute name="var" type="java.lang.String"  %>
<%
	//集合类型 
	if(items instanceof Collection){
		//强转成集合 
		Collection<String> co = (Collection<String>)items;
		for(String c:co){
			request.setAttribute(var, c);
			%>
			<jsp:doBody></jsp:doBody>
			<% 
		}
		
	}

	//数组类型
	if(items.getClass().getName().startsWith("[")){
		//强转成数组  
		String[] co = (String[])items;
		for(String c:co){
			request.setAttribute(var, c);
			%>
			<jsp:doBody></jsp:doBody>
			<% 
		}
	}
%>



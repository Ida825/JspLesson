<%@ tag language="java" pageEncoding="UTF-8"%>
<%@attribute name="test" type="java.lang.Boolean" required="true"%>

<%
	if(test){
%>
		<jsp:doBody></jsp:doBody>	
<%
	}
%>
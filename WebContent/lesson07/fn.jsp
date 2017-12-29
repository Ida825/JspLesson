<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 是否包含 boolean-->
${fn:contains('ni hao wa','w')}<br/>

<!-- 忽略大小写是否包含指定字符 -->
${fn:containsIgnoreCase('CBd','b') }<br/>

<!-- 以指定字符结束 -->
${fn:endsWith('hello','o') }
${fn:endsWith('hello','l') }<br/>

<!--转译特殊字符  -->
${'&lt' } <!-- <  -->
${fn:escapeXml('&lt') }<br/> <!-- &lt -->

<!-- 指定字符的索引位置 -->
${fn:indexOf('hello','e') }<br/>

<!-- 连接 -->
-------------------
<%
String[] str={"a","b","c","d"};
pageContext.setAttribute("str",str);
%>
${fn:join(pageScope.str,'#')}



<!-- 获取字符串长度 -->
${fn:length('abc') }<br/>

<!-- 替换指定字符 -->
${fn:replace('abc','b','BBB') }<br/>

<!-- split切分 -->
<c:forEach var="b" items="${fn:split('a,b,c',',') }">
${pageScope.b }
</c:forEach><br/>

<!-- 以指定字符开始 -->
${fn:startsWith('happy','h') }<br/>

<!-- 截取字符串 -->
${fn:substring('abcd',0,2) }<br/>

<!--从后往前取到指定字符的位置（不包括）:cd  -->
${fn:substringAfter('abcd','b') }<br/>

<!-- 从后往前取到指定字符的位置（不包括）:a -->
${fn:substringBefore('abcd','b') }<br/>

<!-- 小写转大写 -->
${fn:toUpperCase('abc') }<br/>
<!-- 大写转小写 -->
${fn:toLowerCase('ABC') }<br/>

<!-- 去首尾空格 -->
${fn:trim('   hello fn    ') }

</body>
</html>
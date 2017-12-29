<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 输出1~1000的所有质数 --%>
	<%
		int num=0;
		for(int i=1;i<=1000;i++){
			//统计的个数每次清空为0 
			num=0;
			for(int j=1;j<=i;j++){
				//统计1-1000的数中，每个数能被1到它本身的数整除的个数
				if(i%j==0){
					num = num+1;
				}
			}
			//如果能被1到它本身的数整除的个数是2，就是质数
			if(num==2){
				out.println(i);
			}
		}
		
	%>
</body>
</html>
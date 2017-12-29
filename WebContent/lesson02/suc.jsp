<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!Connection con = null;	
			
		public void init() throws ServletException{
			String url = "jdbc:mysql://localhost:3306/test";
			//告诉jdbc使用的是什么数据库  不同数据库提供一些不同类型
			String driverClass="com.mysql.jdbc.Driver";	
			String username = "root";
			String password = "123456";		
			try {
				//需要使用jvm加载该类
				Class.forName(driverClass);
				//登录成功
				con = DriverManager.getConnection(url, username, password);		
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			 
		}
		
	%>
	注册成功！
	<%
		
		//获取邮箱
		String emailName = request.getParameter("emailName");
		//获取个人网址
		String personalUrl = request.getParameter("personalUrl");
		//获取密码
		String password = request.getParameter("password");
		//获取确认密码 
		String confirmPassword = request.getParameter("confirmPassword");
		//获取性别 
		String sex = request.getParameter("sex");
		if("1".equals(sex)){
			sex = "男";
		}else{
			sex = "女";
		}
		//获取生日
		String bornDate = request.getParameter("bornDate");
		//获取电话号码 
		String tel = request.getParameter("tel");
		//获取复选框中的爱好
		String[] hobby = request.getParameterValues("hobby");
		String hob = "";
		if(hobby!=null){
			for(String str:hobby){
				if("1".equals(str)){
					hob += "看书 ";
				}else if("2".equals(str)){				
					hob += " 旅游";	
				}else{					
					hob += " 上网";				
				}
			}
		}	
		
		
		//数据库中创建用户表，将提交的数据写入用户表 
		String sql = "insert into register (emailName,personalUrl,password,confirmPassword,sex,bornDate,tel,hobby) values (?,?,?,?,?,?,?,?)";
		//预编译SQL语句				
		PreparedStatement ps = con.prepareStatement(sql); 
		ps.setString(1, emailName);
		ps.setString(2, personalUrl);
		ps.setString(3, password);
		ps.setString(4, confirmPassword);
		ps.setString(5, sex);
		ps.setString(6, bornDate);
		ps.setString(7, tel);
		ps.setString(8, hob);
		
		//执行SQL语句 
		ps.executeUpdate();
		ps.close();
	%>
	
	您输入的邮箱是：<%=emailName %>
	您输入的个人网址是：<%=personalUrl %>
	您的密码是：<%=password %>
	您的确认密码是：<%=confirmPassword %>
	您选择的性别是：<%="1".equals(sex)?"男":"女"%> 
	您的出生日期是：<%=bornDate%> 
	您的电话是：<%=tel%> 
	您选择的爱好是:<%=hob %>

</body>
</html>
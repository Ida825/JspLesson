<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
	function checkForm() {
		//邮箱验证
		var emailName = document.getElementsByName("emailName")[0].value;
		if (emailName == null || emailName == "") {
			alert("请输入邮件地址");
			return;
		}
		var re=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
		if (!re.test(emailName)) {
			alert("请输入正确的邮箱地址");
			return;
		}
		
		//个人网址验证 
		var re2 = /http[s]?:\/{2}/;
		var personalUrl = document.getElementsByName("personalUrl")[0].value;
		if (personalUrl == null || personalUrl == "") {
			alert("请输入个人网址");
			return;
		}
		if (!re2.test(personalUrl)) {
			alert("请输入正确的个人网址");
			return;
		}
		
		//密码验证
		var password = document.getElementsByName("password")[0].value;
		if(password == null || password == ""){
			alert("请输入密码");
			return;
		}
		
		//确认密码验证 
		var confirmPassword = document.getElementsByName("confirmPassword")[0].value;
		if(confirmPassword == null || confirmPassword == ""){
			alert("请输入确认密码");
			return;
		}
		if(confirmPassword != password){
			alert("密码错误");
			return;
		} 
		
		//生日验证  
		var bornDate = document.getElementsByName("bornDate")[0].value;
		if (bornDate == null || bornDate == "") {
			alert("请选择您的生日");
			return;
		}
		
		//电话号码验证 
		var tel = document.getElementsByName("tel")[0].value;
		var regex = /^[0-9]{11}$/;
		if (!regex.test(tel)) {
			alert("请输入11位手机号码");
			return;
		}
		
		//checkbox
		var agree = document.getElementsByName("agree")[0].value;
		if (agree == null || agree == "") {
			alert("请勾选同意框");
			return;
		}
		
		//表单中添加 
		//     邮件地址 lixin@ww.com
		//     个人网址  https|http://www.baidu.com
		document.forms[0].submit();
	}
</script>
<head>
<meta charset="utf-8" />
<title></title>
</head>
<body bgcolor="aliceblue">
	<form action="suc.jsp" method="post">
		<table width="700" height="600" align="center">
			<tr>
				<td colspan="3"><big>注册**邮箱</big>
					<hr></hr></td>
			</tr>
			<tr>
				<td colspan="2" align="right">邮箱</td>
				<td><input type="text" name="emailName"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">个人网址</td>
				<td><input type="text" name="personalUrl"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">密码</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">确认密码</td>
				<td><input type="password" name="confirmPassword"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">性别</td>
				<td>男<input type="radio" name="sex" value="1" checked="checked">
					女<input type="radio" name="sex" value="2"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">生日</td>
				<td><input type="date" name="bornDate" /></td>
			</tr>
			<tr>
				<td colspan="2" align="right">手机号码</td>
				<td><input type="text" name="tel"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">兴趣爱好</td>
				<td>看书<input type="checkbox" name="hobby" value="1" /> 旅游<input
					type="checkbox" name="hobby" value="2" /> 上网<input type="checkbox"
					name="hobby" value="3" />
				</td>
			</tr>
			<tr>
				<td></td>
				<td colspan="2" align="left"><input type="checkbox" name="agree" value="我已阅读">我已阅读并同意相关服务条款和隐私政策</td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td><a href="javascript:checkForm()">立即注册</a></td>
			</tr>
		</table>
	</form>
</body>
</html>
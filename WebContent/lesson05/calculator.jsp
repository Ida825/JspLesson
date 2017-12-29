<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
	var str;
	function ck(num){
		str = document.getElementById("result");
		str.value = str.value+num
	}
	
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.keys input{
		width:60px;
		height:50px;
		margin:2px;
		}
		
		
</style>
</head>
<body bgcolor="aliceblue">	
	<form method="get" action="calculator.jsp" name="cal" align="center">
    	<div style="width:100%;height:100%">
    		<div><input type="text" id="result" style="width:280px;height:120px;font-size:30px" value="${param.calTag=='+'?(param.num1+param.num2):param.calTag=='-'?(param.num1-param.num2):param.calTag=='*'?(param.num1*param.num2):(param.num1/param.num2)}"></div>
    		<div class="keys" style="width:100%;height:100%">
	    		<div>
	    			<input type="hidden" name="calTag" value="${param.calTag}"/>
	    			<input type="hidden" name="num1" value="${param.num1 }"/>
	    			<input type="hidden" name="num2" value="${param.num2 }"/>
		    		<input type="button" value="7" name="num" onclick="ck(7)"/>
		    		<input type="button" value="8" name="num" onclick="ck(8)"/> 
		    		<input type="button" value="9" name="num" onclick="ck(9)"/>
		    		<input type="button" value="/" onclick="document.getElementsByName('calTag')[0].value=='/'"/> 
	    		</div> 		
	    		<div>
		    		<input type="button" value="4" name="num" onclick="ck(4)"/>
		    		<input type="button" value="5" name="num" onclick="ck(5)"/> 
		    		<input type="button" value="6" name="num" onclick="ck(6)"/>
		    		<input type="button" value="*" onclick="document.getElementsByName('calTag')[0].value=='*'"/>
	    		</div>   		
	    		<div>	
		    		<input type="button" value="1" name="num" onclick="ck(1)"/>
		    		<input type="button" value="2" name="num" onclick="ck(2)"/> 
		    		<input type="button" value="3" name="num" onclick="ck(3)"/>
		    		<input type="button" value="-" onclick="document.getElementsByName('calTag')[0].value=='-'"/>
	    		</div>
	    		<div>
		    		<input type="button" value="0" name="num" onclick="ck(0)")/>
		    		<input type="button" value="." name="nu" "/>
		    		<input type="submit" value="="/>
		    		<input type="button" value="+" onclick="document.getElementsByName('calTag')[0].value=='+'"/>
		    		
	    		</div>
    		</div>
    	</div>
    </form> 
</body>
</html>


<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCtype html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> 收集参数的表单 </title>
</head>
<body>
<form id="form1" method="post" action="request1.jsp">
用户名：<br/>
<input type="text" name="name"><hr/>
性别：<br/>
男：<input type="radio" name="gender" value="男">
女：<input type="radio" name="gender" value="女"><hr/>
喜欢的颜色：<br/>
红：<input type="checkbox" name="color" value="红">
绿：<input type="checkbox" name="color" value="绿">
蓝：<input type="checkbox" name="color" value="蓝"><hr/>
来自的国家：<br/>
<select name="country">
	<option value="AA">AAA</option>
	<option value="BB">BBB</option>
	<option value="CC">CCC</option>
</select><hr/>
<input type="submit" value="提交">
<input type="reset" value="重置">
</form>
</body>
</html>


<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> Java Bean测试 </title>
	<meta name="website" content="http://www.sohu.org" />
</head>
<body>
<!-- 创建lee.Person的实例，该实例的实例名为p1 -->
<jsp:useBean id="p1" class="lee.Person" scope="page"/>
<!-- 设置p1的name属性值 -->
<jsp:setProperty name="p1" property="name" value="ss"/>
<!-- 设置p1的age属性值 -->
<jsp:setProperty name="p1" property="age" value="23"/>
<!-- 输出p1的name属性值 -->
<jsp:getProperty name="p1" property="name"/><br/>
<!-- 输出p1的age属性值 -->
<jsp:getProperty name="p1" property="age"/>
</body>
</html>
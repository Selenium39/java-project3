<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Error</title>
<!-- 设置自动跳转 -->
<% response.setHeader("refresh","5,url=login.jsp"); %>
</head>
<style type="text/css">
h1{
 color:red;
}
div{
margin-left:400px;
}
</style>
<body>
<div>
<h1>用户名或者密码错误，请重新登录</h1>
<a href="login.jsp">5秒后将自动跳转登录页面,也可点击这里手动跳转</a>
</div>
</body>
</html>
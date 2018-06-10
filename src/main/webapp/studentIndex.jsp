<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index-Student</title>
<script src="static/jquery-3.2.1.min.js" type="text/javascript"></script>
<!-- 自定义jquery -->
<script type="text/javascript">
$(function(){

	$("#btn1").click(function(){
		$(location).attr("href","exam");
	});
	$("#btn2").click(function(){
		$(location).attr("href","login.jsp");
	});
});
</script>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<!--bootstrap  -->
<link href="static/bootstrap.min.css" rel="stylesheet">
<!--自定义css  -->
<style type="text/css">
body{
background-color:pink;
}
img{
 margin-top:50px;
 margin-left:500px;
}
#div1{
 margin-left:600px;
 margin-top:200px;
}
</style>
</head>
<body>
<img src="./images/12.png"></img>
<div id="div1">
<button class="btn btn-success" id="btn1">进行考试</button>
<c:forEach begin="1" end="20">
   &nbsp;
</c:forEach>
<button class="btn btn-info" id="btn2">返回登录界面</button>
</div>
</body>
</html>
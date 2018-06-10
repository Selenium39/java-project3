<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show Subject</title>

<script src="static/jquery-3.2.1.min.js" type="text/javascript"></script>
<!-- 自定义jquery -->
<script type="text/javascript">
$(function(){
	$("#btn1").click(function(){
		$(location).attr("href","beforeUpdateSubject?num=${sessionScope.subject.subjectId}");
	});
	$("#btn2").click(function(){
		$(location).attr("href","controlSubject");
	});
});
</script>

<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="static/bootstrap.min.css">
<!-- 自定义css -->
<style type="text/css">
h1{
margin-left:650px;
color:red;
}
body{
  background-color:pink;
}
div{
 margin: 30px auto;
 width:700px;
 height:300px;
 border:green solid 2px;
}
button{
 margin-left:150px;
}
</style>
</head>
<body>
<h1>查看试题</h1>
	<div>
		<table class="table">
			<tbody>
				<tr class="success">
					<th scope="row">试题编号:&nbsp;&nbsp;&nbsp;${sessionScope.subject.subjectId}</th>
				</tr>
				<tr class="success">
					<th scope="row">试题题目:&nbsp;&nbsp;&nbsp;${sessionScope.subject.subjectTitle}</th>
				</tr>
				<tr class="success">
					<th scope="row">选项A:&nbsp;&nbsp;&nbsp;${sessionScope.subject.subjectOptionA}</th>
				</tr>
				<tr class="success">
					<th scope="row">选项B:&nbsp;&nbsp;&nbsp;${sessionScope.subject.subjectOptionB}</th>
				</tr>
				<tr class="success">
					<th scope="row">选项C:&nbsp;&nbsp;&nbsp;${sessionScope.subject.subjectOptionC}</th>
				</tr>
				<tr class="success">
					<th scope="row">选项D:&nbsp;&nbsp;&nbsp;${sessionScope.subject.subjectOptionD}</th>
				</tr>
				<tr class="success">
					<th scope="row">答案:&nbsp;&nbsp;&nbsp;${sessionScope.subject.subjectAnswer}</th>
				</tr>
				<tr class="success">
					<th scope="row">解析:&nbsp;&nbsp;&nbsp;${sessionScope.subject.subjectParse}</th>
				</tr>
				
			</tbody>
		</table>
		<button class="btn btn-warning" id="btn1">修改试题</button>
		<button class="btn btn-success" id="btn2">返回上一页</button>
	</div>
</body>
</html>
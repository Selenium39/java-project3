<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<!--bootstrap  -->
<link href="static/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<form class="form-horizontal" method="post" action="register">
		<div class="form-group">
			<label for="studentId" class="col-sm-2 control-label">学生编号:</label>
			<div class="col-sm-4">
				<input type="input" class="form-control" placeholder="id"
					name="studentId">
			</div>
		</div>
		<div class="form-group">
			<label for="studentName" class="col-sm-2 control-label">学生姓名:</label>
			<div class="col-sm-4">
				<input type="input" class="form-control" placeholder="name"
					name="studentName">
			</div>
		</div>
		<div class="form-group">
			<label for="password" class="col-sm-2 control-label">密码:</label>
			<div class="col-sm-4">
				<input type="input" class="form-control" placeholder="password"
					name="password">
			</div>
		</div>
		<div class="form-group">
			<label for="sclass" class="col-sm-2 control-label">班级:</label>
			<div class="col-sm-4">
				<input type="input" class="form-control" placeholder="class"
					name="sclass">
			</div>
		</div>
		<div class="form-group">
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-success">注册</button>
					<button type="reset" class="btn btn-warning">重置</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
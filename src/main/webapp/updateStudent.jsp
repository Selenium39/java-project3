<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Student</title>

<script src="static/jquery-3.2.1.min.js" type="text/javascript"></script>
<!-- 自定义jquery -->
<script type="text/javascript">
	$(function() {//在修改前先将表单的值回显
		$("#studentName").attr("value", "${sessionScope.student.studentName}");
		$("#password").attr("value", "${sessionScope.student.password}");
		$("#score").attr("value", "${sessionScope.student.score}");
		$("#sclass").attr("value", "${sessionScope.student.sclass}");
	});
</script>
<script type="text/javascript">
	$(function() {
		$("button:last").click(function() {
			$(location).attr("href", "findStudent");
		});
	});
</script>
<script type="text/javascript">
	//检查是否有未输入的值
	$(function() {
		$("button:first").click(
				function() {
					if ($("#studentName").val() == ""
							|| $("#studentName").val() == null) {
						alert("学生姓名不能为空");
						return false;
					}
					if ($("#password").val() == ""
						|| $("#password").val() == null) {
					alert("学生密码不能为空");
					return false;
				}
					if ($("#sclass").val() == ""
						|| $("#sclass").val() == null) {
					alert("学生班级不能为空");
					return false;
				}

				});
	});
</script>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="static/bootstrap.min.css">
<style type="text/css">
#div0 {
	background-color: pink;
	width: 250px;
	height: 740px;
}

li {
	margin-top: 50px;
	padding-top: 50px;
}

#div1 {
	margin-top: -740px;
	padding-top: 50px;
	float: right;
	width: 1270px;
	height: 740px;
	border: solid 2px black;
}

#div2 {
	margin-left: 140px;
}
</style>
</head>
<body>
	<div id="div0" class="bs-example" data-example-id="simple-nav-stacked">
		<ul class="nav nav-pills nav-stacked nav-pills-stacked-example">
			<li><a href="teacherIndex.jsp">导入试题</a></li>
			<li><a href="controlSubject">管理试题</a></li>
			<li><a href="findSubject.jsp">查询试题</a></li>
			<li class="active"><a href="findStudent">管理学生</a></li>
		</ul>
	</div>
	<div id="div1">
		<form class="form-horizontal" method="post"
			action="updateStudent?num=${sessionScope.student.studentId} ">
			<div class="form-group">
				<label for="studentName" class="col-sm-2 control-label">学生姓名</label>
				<div class="col-sm-3">
					<input class="form-control" name="studentName" id="studentName">
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-sm-2 control-label">学生密码</label>
				<div class="col-sm-3">
					<input class="form-control" name="password" id="password">
				</div>
			</div>
			<div class="form-group">
				<label for="score" class="col-sm-2 control-label">学生成绩</label>
				<div class="col-sm-3">
					<input class="form-control" name="score" id="score">
				</div>
			</div>
			<div class="form-group">
				<label for="sclass" class="col-sm-2 control-label">学生班级</label>
				<div class="col-sm-3">
					<input class="form-control" name="sclass" id="sclass">
				</div>
			</div>
			<div id="div2">
				<button class="btn btn-success" type="submit">修改</button>
				&nbsp;&nbsp;&nbsp;
				<button class="btn btn-info" type="button">返回</button>
			</div>
		</form>
	</div>
</body>
</html>
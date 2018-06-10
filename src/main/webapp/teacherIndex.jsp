<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index-Teacher</title>

<script src="static/jquery-3.2.1.min.js" type="text/javascript"></script>
<!-- 自定义jquery -->
<script type="text/javascript">
	//检查是否有未输入的值
	$(function() {
		$("button:first").click(
				function() {
					var options=['A','B','C','D'];
					if ($("#subjectTitle").val() == ""
							||$("#subjectTitle").val() == null) {
						alert("试题题目不能为空");
						return false;
					}
					for(let i=0;i<4;i++){
						if ($("#subjectOption"+options[i]).val() == ""
							||$("#subjectOption"+options[i]).val() == null) {
						alert("选项"+options[i]+"不能为空");
						return false;
					}
					}
					if($("input[name='subjectAnswer']:checked").val()==null){
						alert("答案不能为空");
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
			<li class="active"><a href="teacherIndex.jsp">导入试题</a></li>
			<li><a href="controlSubject">管理试题</a></li>
			<li><a href="findSubject.jsp" class="active">查询试题</a></li>
			<li><a href="findStudent">管理学生</a></li>
		</ul>
	</div>
	<div id="div1">
		<form class="form-horizontal" method="post" action="addSubject">
			<div class="form-group">
				<label for="subjectTitle" class="col-sm-2 control-label">试题题目</label>
				<div class="col-sm-4">
					<input class="form-control" name="subjectTitle" placeholder="title"
						id="subjectTitle">
				</div>
			</div>
			<div class="form-group">
				<label for="subjectOptionA" class="col-sm-2 control-label">选项A</label>
				<div class="col-sm-3">
					<input class="form-control" name="subjectOptionA" placeholder="A"
						id="subjectOptionA">
				</div>
			</div>
			<div class="form-group">
				<label for="subjectOptionB" class="col-sm-2 control-label">选项B</label>
				<div class="col-sm-3">
					<input class="form-control" name="subjectOptionB" placeholder="B"
						id="subjectOptionB">
				</div>
			</div>
			<div class="form-group">
				<label for="subjectOptionC" class="col-sm-2 control-label">选项C</label>
				<div class="col-sm-3">
					<input class="form-control" name="subjectOptionC" placeholder="C"
						id="subjectOptionC">
				</div>
			</div>
			<div class="form-group">
				<label for="subjectOptionD" class="col-sm-2 control-label">选项D</label>
				<div class="col-sm-3">
					<input class="form-control" name="subjectOptionD" placeholder="D"
						id="subjectOptionD">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">答案</label> <label
					class="radio-inline"> <input type="radio"
					name="subjectAnswer" id="inlineRadio1" value="A"> A
				</label> <label class="radio-inline"> <input type="radio"
					name="subjectAnswer" id="inlineRadio2" value="B"> B
				</label> <label class="radio-inline"> <input type="radio"
					name="subjectAnswer" id="inlineRadio3" value="C"> C
				</label> <label class="radio-inline"> <input type="radio"
					name="subjectAnswer" id="inlineRadio3" value="D"> D
				</label>
			</div>
			<div class="form-group">
				<label for="subjectParse" class="col-sm-2 control-label">试题解析</label>
				<div class="col-sm-3">
					<textarea class="form-control" name="subjectParse"
						placeholder="description" id="subjectParse"></textarea>
				</div>
			</div>
			<div id="div2">
				<button class="btn btn-success" type="submit">录入</button>
				&nbsp;&nbsp;&nbsp;
				<button class="btn btn-info" type="reset">重置</button>
			</div>
		</form>
	</div>
</body>
</html>
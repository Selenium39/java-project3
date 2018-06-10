<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%><!--注意要老版的jsp要加上isELIgnored ="false"  -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>

<script src="static/jquery-3.2.1.min.js" type="text/javascript"></script>
<!-- 自定义jquery -->
<script type="text/javascript">
$(function(){
	$("button:first").click(function(){
		if($("input[name='role']:checked").val()==null){//判断单选框是否被选择
			alert("你未选中任何的角色");
			window.location.reload();
			return false;//通过return false 阻止表单的提交
		}
	});
});
</script>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="static/bootstrap.min.css">
<style type="text/css">
#login{
 margin-left:300px;
}
#div1{
 margin-left:210px;
 margin-bottom: 20px;
}
</style>
</head>
<body>
	<div id="login">
		<form class="form-horizontal" method="post" action="login">
			<div class="form-group">
				<label for="userId" class="col-sm-2 control-label">学号/工号：</label>
				<div class="col-sm-4">
					<input type="input" class="form-control" name="userId"
						placeholder="userId">
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-sm-2 control-label">密码：</label>
				<div class="col-sm-4">
					<input type="password" class="form-control" id="password"
						name="password" placeholder="password">
				</div>
			</div>
			<div id="div1">
				<label class="radio-inline"> <input type="radio"
					name="role" value="teacher"> 老师
				</label> <label class="radio-inline"> <input type="radio"
					name="role" value="student"> 学生
				</label>
			</div>
			<div class="form-group">
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-success">登录</button>
						<button type="reset" class="btn btn-warning">重置</button>
					</div>
				</div>
			</div>
		</form>

	</div>
</body>
</html>
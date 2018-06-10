<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Exam</title>

<!-- 自定义jquery -->
<script src="static/jquery-3.2.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	$("#btn1").click(function(){
		var ids=${subjectIds};
		for(let i=0;i<20;i++){	
		var choose="input[name='subjectOption-"+ids[i]+"']:checked";
		if($(choose).val()==null){//判断单选框是否被选择
			alert("第"+(i+1)+"题还没有做出选择");
			return false;//通过return false 阻止表单的提交
		}
		}
	});
	setTimeout(function(){
		$("#form1").submit();
	},600000);//这里设置表单自动提交时间，单位是毫秒
});
</script>


<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<!--bootstrap  -->
<link href="static/bootstrap.min.css" rel="stylesheet">
<!--自定义css  -->
<style type="text/css">
#div2 {
	border: solid 2px red;
	height: 50px;
	font-size: 30px;
	background-image: url("./images/004.jpg");
}

#tiles {
	margin-left: 1270px;
	margin-top: -40px;
}

#time {
	margin-left: 1000px;
	margin-top: -40px;
}

#div3 {
	background-color: pink;
	font-size: 20px;
}

#div4 {
	border: solid 2px black;
	margin-left: 350px;
	width: 700px;
}

#btn1 {
	margin-left: 300px;
	height: 50px;
}

#ad1 {
	position: fixed; <!--
	使这个会随下滑跟着下滑 --> float: left;
	margin-left: 150px;
	width: 50px;
	height: 200px;
	background-color: red;
}

#ad2 {
	position: fixed;
	margin-left: 1200px;
	width: 50px;
	height: 200px;
	background-color: red;
	margin-left: 1200px;
}
</style>
</head>
<body>
	<div id="div1">
		<div id="div2">
			端正考风,严肃考纪,振奋精神,考出水平 <input type="hidden" id="set-time" value="10" /><!-- 这里设置计时的时间 -->
			<div id="countdown">
				<div id='time'>距离考试结束还有:</div>
				<div id='tiles'></div>
			</div>
			<script
				src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
			<script src="countdown-timer/js/index.js"></script>
		</div>
	</div>
	<div id="div3">
		<div id="ad1">
			<tr>广
			</tr>
			<br />
			<tr>告
			</tr>
			<br />
			<tr>位
			</tr>
			<br />
			<tr>招
			</tr>
			<br />
			<tr>租
			</tr>
			<br />
		</div>
		<div id="ad2">
			<tr>广
			</tr>
			<br />
			<tr>告
			</tr>
			<br />
			<tr>位
			</tr>
			<br />
			<tr>招
			</tr>
			<br />
			<tr>租
			</tr>
			<br />
		</div>
		<div id="div4">
			<form action="getScore" method="post" id="form1">
				<c:forEach items="${subjects}" var="subject">
					<tr>${subject.subjectTitle}</tr>
					<br />
					<tr>
						<td><input type="radio"
							name="subjectOption-${subject.subjectId}"
							id="subjectOptionA-${subject.subjectId}" value="A">${subject.subjectOptionA}</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<td><input type="radio"
							name="subjectOption-${subject.subjectId}"
							id="subjectOptionB-${subject.subjectId}" value="B">${subject.subjectOptionB}</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<td><input type="radio"
							name="subjectOption-${subject.subjectId}"
							id="subjectOptionC-${subject.subjectId}" value="C">${subject.subjectOptionC}</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<td><input type="radio"
							name="subjectOption-${subject.subjectId}"
							id="subjectOptionD-${subject.subjectId}" value="D">${subject.subjectOptionD}</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</tr>
					<hr />
				</c:forEach>
				<button id="btn1" class="btn btn-success" type="submit">提交</button>
			</form>
		</div>
</body>
</html>

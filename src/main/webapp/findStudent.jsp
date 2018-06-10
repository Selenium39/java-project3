<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Control Subject</title>

<script src="static/jquery-3.2.1.min.js" type="text/javascript"></script>
<!-- 自定义jquery -->
<script type="text/javascript">
	$(function(){//控制分页的跳转
		$("#li"+${PageInfo.pageNum}).addClass("active");
		$("#previous").click(function(){
			if(${PageInfo.isFirstPage}){
				alert("当前为第一页，没有上一页了");
				return false;
			}
		});
		$("#next").click(function(){
			if(${PageInfo.isLastPage}){
				alert("当前为最后一页，没有下一页了");
				return false;
			}
		});
	});
</script>
<script type="text/javascript">
$(function(){//控制试题的操作
  var ids=${sessionScope.ids};
  for(let i=0;i<ids.length;i++){
	  $("#btn"+ids[i]+"-update").click(function(){
		  $(location).attr("href","beforeUpdateStudent?num="+ids[i]);
	  });
	  $("#btn"+ids[i]+"-delete").click(function(){
		  $(location).attr("href","deleteStudent?num="+ids[i]);
	  });
  }
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
    font-size:20px;
	margin-left: 140px;
	height:30px;
	width:300px;
}
#div3{
  margin-left:700px;
  margin-top:-55px;
  height:50px;
  width:300px;
}
</style>
</head>
<body>
	<div id="div0" class="bs-example" data-example-id="simple-nav-stacked">
		<ul class="nav nav-pills nav-stacked nav-pills-stacked-example">
			<li><a href="teacherIndex.jsp">导入试题</a></li>
			<li><a href="controlSubject.jsp">管理试题</a></li>
			<li><a href="findSubject.jsp">查询试题</a></li>
			<li class="active"><a href="findStudent">管理学生</a></li>
		</ul>
	</div>
	<div id="div1">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>学生编号</th>
					<th>学生姓名</th>
					<th>学生密码</th>
					<th>学生成绩</th>
					<th>学生班级</th>
					<th>更新学生</th>
					<th>删除学生</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${PageInfo.list}" var="student">
					<tr>
						<th scope="row">${student.studentId }</th>
						<td>${student.studentName}</td>
						<td>${student.password }</td>
						<td>${student.score }</td>
						<td>${student.sclass }</td>
						<td><button class="btn btn-info" id="btn${student.studentId}-update">更新学生</button></td>
						<td><button class="btn btn-warning" id=btn${student.studentId}-delete>删除学生</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div id="div2">总共有${PageInfo.pages}页${PageInfo.total}条记录,当前为第${PageInfo.pageNum}页</div>
		<div id="div3">
	<nav aria-label="...">
      <ul class="pagination">
        <li ><a href="findStudent?pn=${PageInfo.pageNum-1}" aria-label="Previous" id="previous"><span aria-hidden="true">«</span></a></li>
      <li><a href="findStudent">首页</a></li>
      <c:forEach begin="1" end="${PageInfo.pages}" var="id">
      <li id="li${id}"><a href="findStudent?pn=${id}">${id}</a></li>
      </c:forEach>
      <li><a href="findStudent?pn=${PageInfo.pages}">尾页</a></li>
        <li><a href="findStudent?pn=${PageInfo.pageNum+1}" aria-label="Next"><span aria-hidden="true" id="next">»</span></a></li>
     </ul>
   </nav>
		</div>
</body>
</html>
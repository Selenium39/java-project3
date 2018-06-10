<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Find Subject Result</title>

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
	  $("#btn"+ids[i]+"-select").click(function(){
		  $(location).attr("href","showSubject?num="+ids[i]);
	  });
	  $("#btn"+ids[i]+"-update").click(function(){
		  $(location).attr("href","beforeUpdateSubject?num="+ids[i]);
	  });
	  $("#btn"+ids[i]+"-delete").click(function(){
		  $(location).attr("href","deleteSubject?num="+ids[i]);
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
			<li  class="active"><a href="findSubject.jsp">查询试题</a></li>
			<li><a href="findStudent">管理学生</a></li>
		</ul>
	</div>
	<div id="div1">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>试题编号</th>
					<th>试题标题</th>
					<th>正确答案</th>
					<th>查看试题</th>
					<th>更新试题</th>
					<th>删除试题</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${PageInfo.list}" var="subject">
					<tr>
						<th scope="row">${subject.subjectId }</th>
						<td>${subject.subjectTitle}</td>
						<td>${subject.subjectAnswer }</td>
						<td><button class="btn btn-danger" id="btn${subject.subjectId}-select">查看试题</button></td>
						<td><button class="btn btn-info" id="btn${subject.subjectId}-update">更新试题</button></td>
						<td><button class="btn btn-warning" id=btn${subject.subjectId}-delete>删除试题</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div id="div2">总共有${PageInfo.pages}页${PageInfo.total}条记录,当前为第${PageInfo.pageNum}页</div>
		<div id="div3">
	<nav aria-label="...">
      <ul class="pagination">
        <li ><a href="controlSubject?pn=${PageInfo.pageNum-1}" aria-label="Previous" id="previous"><span aria-hidden="true">«</span></a></li>
      <li><a href="controlSubject">首页</a></li>
      <c:forEach begin="1" end="${PageInfo.pages}" var="id">
      <li id="li${id}"><a href="controlSubject?pn=${id}">${id}</a></li>
      </c:forEach>
      <li><a href="controlSubject?pn=${PageInfo.pages}">尾页</a></li>
        <li><a href="controlSubject?pn=${PageInfo.pageNum+1}" aria-label="Next"><span aria-hidden="true" id="next">»</span></a></li>
     </ul>
   </nav>
		</div>
</body>
</html>
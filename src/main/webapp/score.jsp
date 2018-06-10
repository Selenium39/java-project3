<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Score</title>
<style type="text/css">
a{
 margin-left:700px;
 font-size:20px;
 color: blue;
}
</style>
</head>
<body>
<c:if test="${sessionScope.score<60 }">
   <h1 align="center">革命尚未成功，同志仍需努力!</h1>
</c:if>
<c:if test="${sessionScope.score>=60 and sessionScope.score<90}">
   <h1 align="center">考的还行，仍需努力!</h1>
</c:if>
<c:if test="${sessionScope.score>=90}">
   <h1 align="center">真棒!</h1>
</c:if>
<h1 align="center" style="color: red;">你的最终得分:${sessionScope.score}</h1>
<a href="index.jsp">点击这里退出</a>
</body>
</html>
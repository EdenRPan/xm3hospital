<%--
  Created by IntelliJ IDEA.
  User: 11
  Date: 2019/3/9
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>今日喜报修改</title>
</head>
<body>
<table border="1px">
    <tr>
        <th>ID</th><th>父母</th><th>性别（1男2女）</th><th>体重</th>
    </tr>
    <c:forEach items="${newsList}" var="news">
        <tr>
            <td>${news.id}</td><td>${news.parents}</td><td>${news.sex.sex}</td><td>${news.weight}</td>
        </tr>
    </c:forEach>
</table>

<h2>增加一项</h2>
<form action="${pageContext.request.contextPath}/NavServlet/addNews" method="post" style="border: 1px double black; display: inline-block" >
    父母：<input type="text" name="parents"><br>
    性别：<input type="number" value="1" name="baby">*1表示男2表示女*<br>
    体重：<input type="text" name="weight">*输入数字，如4.5*<br>
    <input type="submit" value="添加">
</form>

<h2>删除一项</h2>
<form action="${pageContext.request.contextPath}/NavServlet/deleteNews" method="post" style="border: 1px double black; display: inline-block" >
    需要移除项ID：<input type="number" value="1" name="did"><br>
    <input type="submit" value="删除">
</form>

<h2>更改一项</h2>
<form action="${pageContext.request.contextPath}/NavServlet/modifyNews" method="post" style="border: 1px double black; display: inline-block" >
    需要更改项ID：<input type="number" value="1" name="mid"><br>
    修订父母字段：<input type="text" name="nparents"><br>
    修订性别：<input type="number" name="nbaby"><br>
    修订体重：<input type="text" name="nweight"><br>
    <input type="submit" value="更改">
</form>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: 11
  Date: 2019/3/6
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改二级页面内容</title>
</head>
<body>
<h2>二级页面内容表</h2>
<table border="1">
    <tr>
        <th>ID</th><th>标题</th><th>内容</th>
    </tr>
    <c:forEach items="${conList}" var="cons">
        <tr>
            <td>${cons.id}</td><td>${cons.title}</td><td>${cons.content}</td>
        </tr>
    </c:forEach>
</table>

<form action="${pageContext.request.contextPath}/Con_2Servlet/chaContent" method="post">
    需要更改项ID：<input type="number" name="cid" value="1"><br>
    新标题：<input type="text" name="ntitle"><br>
    新内容：<textarea name="ncontent"></textarea><br>
    <input type="submit" value="提交">
</form>
<%--<textarea name="content" form = "formName">表单之外的文本域指定于某个表单</textarea>--%>
<h3>添加标题</h3>
<form action="${pageContext.request.contextPath}/Con_2Servlet/chaContent" method="post">
    需要更改项ID：<input type="number" name="cid" value="1"><br>
    标题：<input type="text" name="ntitle"><br>
    <input type="submit" value="添加">
</form>
</body>
</html>

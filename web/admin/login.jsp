<%--
  Created by IntelliJ IDEA.
  User: 11
  Date: 2019/3/4
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="border: 2px solid black; display: inline-block">
    <form method="post" action="${pageContext.request.contextPath}/AdimnServlet/login">
        用户名：<input type="text" name="admin"><br>
        密码：<input type="password" name="pwd"><br>
        <input type="submit" value="登录">
    </form>
</div>

</body>
</html>

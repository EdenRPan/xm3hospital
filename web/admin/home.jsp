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
    <title>主页</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/admin/chome.jsp">主页交流中心修改</a>
<br>
<a href="${pageContext.request.contextPath}/NavServlet/searchAllNews">主页今日喜报修改</a>
<br>
<a href="${pageContext.request.contextPath}/NavServlet/pageBean">主页ul导航增删改</a>
<br>
<a href="${pageContext.request.contextPath}/Con_2Servlet/searchAllCon">所有二级内容及修改</a>
<br>
<a href="${pageContext.request.contextPath}/admin/content.jsp">添加二级页面内容</a>
<br>

</body>
</html>

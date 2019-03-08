<%--
  Created by IntelliJ IDEA.
  User: 11
  Date: 2019/3/8
  Time: 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>主页导航修改</title>
</head>
<body>
<table border="1px">
    <tr>
        <th>ID</th><th>列名</th><th>连接地址</th>
    </tr>
    <c:forEach items="${pagelist.dataList}" var="lis">
        <tr>
            <td>${lis.id}</td><td>${lis.li}</td><td>${lis.href}</td>
        </tr>
    </c:forEach>
</table>

总记录数${pagelist.recordCount}<br>
当前页${pagelist.currentPage}<br>
<c:if test="${pagelist.currentPage != 1}">
    <a href="${pageContext.request.contextPath}/NavServlet/pageBean?currentPage=${pagelist.currentPage - 1}">上一页</a>
</c:if>
<c:forEach var="i" begin="1" end="${pagelist.totalPage}">
    <a href="${pageContext.request.contextPath}/NavServlet/pageBean?currentPage=${i}">
            ${i}
    </a>
</c:forEach>
<c:if test="${pagelist.currentPage != pagelist.totalPage}">
    <a href="${pageContext.request.contextPath}/NavServlet/pageBean?currentPage=${pagelist.currentPage + 1}">下一页</a>
</c:if>
<br>

<h2>增添数据</h2>
<form method="post" action="${pageContext.request.contextPath}/NavServlet/addNav" style="border: 1px solid black; display: inline-block">
    列名：<input type="text" name="li"><br>
    连接：<input type="text" name="href"><br>
    <input type="submit" value="添加">
</form>
<br>

<h2>删除数据</h2>
<form method="post" action="${pageContext.request.contextPath}/NavServlet/deleteNav" style="border: 1px solid black; display: inline-block">
    需要删除项ID：<input type="number" name="id" value="1"><br>
    <input type="submit" value="删除">
</form>
<br>

<h2>修改数据</h2>
<form method="post" action="${pageContext.request.contextPath}/NavServlet/modifyNav" style="border: 1px solid black; display: inline-block">
    更改项ID：<input type="number" name="id" value="1"><br>
    新列名：<input type="text" name="li"><br>
    新连接：<input type="text" name="href"><br>
    <input type="submit" value="修改">
</form>
<br>

</body>
</html>

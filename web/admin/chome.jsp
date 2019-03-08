<%--
  Created by IntelliJ IDEA.
  User: 11
  Date: 2019/3/4
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>新闻修改</title>
</head>
<body>
<h2>项目交流中心图文信息</h2>
<table border="1">
    <tr>
        <th>ID</th><th>路径</th><th>标题</th><th>简介</th>
    </tr>
    <c:forEach items="${three}" var="threes">
        <tr>
            <td>${threes.id}</td><td>${threes.src}</td><td>${threes.alt}</td><td>${threes.eng}</td>
        </tr>
    </c:forEach>
</table>
<br>

<c:if test="${empty content}">
    <h2>请先前往上传页面，上传所要更改的新图片<a href="${pageContext.request.contextPath}/admin/test.jsp">点击跳转</a></h2>
</c:if>
<c:if test="${!empty content}">
    <h3>上传图片信息：</h3> <c:out value="${content}" default="获取上传信息错误" escapeXml="true"/>
</c:if>
<br>

<h2>填写修改信息</h2>
<form method="post" action="${pageContext.request.contextPath}/AdimnServlet/changeThree">
    修改项ID：<input type="number" name="oid"><br>
    <h3>替换内容</h3><br>
    新图片路径：<input type="text" name="nsrc"><i>*格式：upload/image/xxxx.xxx*</i><br>
    新图片标题：<input type="text" name="nalt"><br>
    新图片简介：<input type="text" name="neng"><br>
    <input type="submit" value="提交">
</form>
</body>
</html>

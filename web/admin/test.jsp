<%--
  Created by IntelliJ IDEA.
  User: 11
  Date: 2019/3/3
  Time: 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图片上传</title>
    <script type="text/javascript" charset="utf-8" src="/hospital/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="/hospital/ueditor/ueditor.all.js"></script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="/hospital/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
<form action="/hospital/UploadServlet/img" method="post">
    <textarea id="editor" type="text/plain" style="height: 500px ;width: 1024px"></textarea>
    <input type="submit" value="保存">
</form>

</body>
<script>
    var ue = UE.getEditor("editor")
</script>
</html>

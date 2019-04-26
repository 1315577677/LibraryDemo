<%--
  Created by IntelliJ IDEA.
  User: Creams
  Date: 2017/11/30
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/loginScript.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>学生登录</title>
</head>
<body style="background-color:#F0F0F0">
<div class="welcome">

    <div class="loginform1">
        <div>
            <span id="labellogin">学生登录</span><br>
            <form action="LoginAction?action=login1" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" id="usernameinput" name="username" placeholder="用户名 "/>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" id="passwordinput" name="password" placeholder="密码"/>
                </div>
                <input type="submit" id="loginbutton" class="btn btn-primary" value="登录">
            </form>
            <div class="errorsubmit"></div>
            <span id="resiger"><p>没有账号？<a style="color:#007bff" href="ReaderResiger.jsp">注册</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a style="color: gray" href="damin.jsp">我是管理员</a></p></span>

        </div>
    </div>
</div>
</body>
</html>
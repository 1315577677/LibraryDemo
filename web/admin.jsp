<%--
  Created by IntelliJ IDEA.
  User: Creams
  Date: 2017/11/30
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
<%--<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">--%>
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/loginScript.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>管理员登录</title>
</head>
<body id="back">
<div class="welcome">

    <div class="loginform">
        <div id="form">
            <span id="labellogin" style="color: white; font-family: 幼圆; font-weight: 900">管理员登录</span><br>
            <div class="form-group">
                <input type="text" class="form-control" id="usernameinput" autofocus name="username" placeholder="用户名 "/>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" id="passwordinput" name="password" placeholder="密码"/>
            </div>
            <button id="loginbutton" class="btn btn-primary" onclick="logincheck()">登录</button>
            <div class="errorsubmit" id="checkinfo"></div>
            <span><a style="color:white" href="index.jsp">返回</a></span>
        </div>
    </div>
</div>
</body>
</html>

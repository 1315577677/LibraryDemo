<%--
  Created by IntelliJ IDEA.
  User: coolcats
  Date: 2019-04-24
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="utf-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/addbook.css">
<script src="${pageContext.request.contextPath}/js/AddScript.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>读者添加</title>
</head>
<body style="background-color:#F0F0F0">
<jsp:include page="nav.html"/>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("/Library/index.jsp");
    }
%>

<form action="ReaderAction?action=addreader"  method="post">
    <div class="bookinfo">
        <div class="title">
            <span>请输入书本信息</span>
        </div>
        <div class="title">
            <span class="infotitle"></span><input name="username" class="required" id="bookid" onkeyup="bookcheck()"  placeholder="用户名" ><span class="error"></span>
        </div>
        <div class="title">
            <span class="infotitle"></span><input class="required" name="password" placeholder="密码"><span  class="error" ></span>
        </div>
        <div class="title">
            <span class="infotitle"></span><input class="required" name="name"placeholder="名字"><span  class="error"></span>
        </div>
        <div class="title">
            <span class="infotitle"></span><input class="required" name="sex" placeholder="性别"><span  class="error"></span>
        </div>
        <div class="title">
            <span class="infotitle"></span><input class="required" name="mail" placeholder="邮箱"><span  class="error"></span>
        </div>
        <div class="title">
            <span class="infotitle"></span><input class="required" name="tel" placeholder="电话"><span  class="error"></span>
        </div>
        <div class="title">
            <span class="infotitle"></span><input class="required" name="grade" placeholder="系别" ><span class="error"></span>
        </div>
        <div class="title">
            <span class="infotitle"></span><input class="required" name="classnum" placeholder="班级" ><span  class="error"></span>
        </div>
        <div class="button">
            <button type="submit" class="btn btn-success" name="over" value="1">完成添加</button>
            <button type="submit" class="btn btn-default" name="over" value="0" id="send">继续添加</button>
        </div>
    </div>
</form>
</body>
</html>

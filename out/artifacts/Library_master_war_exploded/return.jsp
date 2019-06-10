<%--
  Created by IntelliJ IDEA.
  User: Creams
  Date: 2018/1/17
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/returnpage.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/return.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>图书归还</title>
</head>
<body>
<jsp:include page="nav.html"/>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("./index.jsp");
    }
%>
</body  style=" background-image: url(./image/mapBG.jpg);text-align:center">
<div class="returninfo">
    <div class="title" style="color:#4f8fbe;font-family: 幼圆; font-weight: 900; font-size: 35px;">
        图书归还
    </div>
    <form action="ReaderAction?action=GetBorrowListById"  onsubmit="return errorsubmit()" method="post">
        <div>
            <input type="text" autofocus onkeyup="readercheck()" style="height: 40px;width: 366px" name="readerid"  id="readerid" placeholder="请输入读者用户名">
            <div id="readeridcheck" class="error" style="text-align: center"></div>
        </div>
        <div style="margin-top:30px ">
            <button type="submit" class="btn" style="background-color: #2473ab;color: #fff">提交</button>
            <button type="reset" class="btn" style="background-color: #ddd">重填</button>
        </div>
    </form>
</div>
</html>

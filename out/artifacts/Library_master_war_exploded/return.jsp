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
</body  style=" background-image: url(./image/mapBG.jpg)">
<div class="returninfo">
    <div class="title">
        请输入读者用户名
    </div>
    <form action="ReaderAction?action=GetBorrowListById"  onsubmit="return errorsubmit()" method="post">
        <div>
            <span class="infotitle">读者用户名：</span><input type="text" autofocus onkeyup="readercheck()" name="readerid"  id="readerid">
            <div id="readeridcheck" class="error" style="text-align: center"></div>
        </div>
        <div class="button">
            <button type="submit" class="btn btn-success">提交</button>
            <button type="reset" class="btn btn-default">重填</button>
        </div>
    </form>
</div>
</html>

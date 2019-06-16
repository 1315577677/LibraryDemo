<%@ page import="com.dbconn.entity.DBBook" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Entity.Book" %>
<%@ page import="Entity.Reader" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/nav.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("reader")==null){
        response.sendRedirect("./index.jsp");
    }

%>
<html>
<head>
    <title>图书管理</title>
</head>
<body style="background-image: url(./image/mapBG.jpg)">
<jsp:include page="nav.jsp"/>
<div style="height: 59px;padding-top: 8px">
    <div style="height: 40px; float: left;" id="error"><h4></h4></div>
    <div style="width:490px;margin: 0 auto;height: 40px;background-color: white ">
        <form action="ReaderAction?action=ser" method="post">
            <input style="width:445px;height:41px;border: 0px ;outline: none;" name="bookname" autofocus placeholder="输入书名查询">
            <input id="search1" type="submit" value=" "/>
        </form>
    </div>
</div>
</body>
</html>
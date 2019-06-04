<%@ page import="com.dbconn.entity.DBBook" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Entity.Book" %>
<%@ page import="Entity.Reader" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<body style="background-color:#F0F0F0">
<jsp:include page="nav.jsp"/>
<div style="height: 41px; padding-top: 10px">
    <div style="width: 490px;margin: 0 auto;height: 40px;background-color: white ">
        <form action="ReaderAction?action=ser" method="post" style="height: 40px">
            <input style="width:445px;height:40px;border: 0px" name="bookname" autofocus placeholder="输入书名查询">
            <input style="border: 0px; width:40px;height:40px;background-image: url(image/search40px.png);background-color:#2473ab;background-repeat: no-repeat;" type="submit" value=""/>

        </form>
    </div>
</div>
</body>
</html>
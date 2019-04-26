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
        response.sendRedirect("index.jsp");
    }

%>
<html>
<head>
    <title>图书管理</title>
</head>
<body style="background-color:#F0F0F0">
<jsp:include page="nav.jsp"/>
<div>
    <form action="ReaderAction?action=ser" method="post">
        <input name="bookname" placeholder="书名">
        <input type="submit" value="查询"/>
    </form>
</div>

</body>
</html>
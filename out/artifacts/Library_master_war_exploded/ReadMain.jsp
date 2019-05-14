<%--
  Created by IntelliJ IDEA.
  User: coolcats
  Date: 2019-04-25
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/welcome.css"  type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<html>
<head>
    <title>学生账户</title>
</head>
<body id="back">
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("reader") == null) {
        response.sendRedirect("./index.jsp");
    }
    //Cookie cookie= new Cookie("cis","0");
%>
<%@include file="nav.jsp"%>
</body>
</html>

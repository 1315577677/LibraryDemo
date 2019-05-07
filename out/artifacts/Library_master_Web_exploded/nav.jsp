<%@ page import="Entity.Reader" %><%--
  Created by IntelliJ IDEA.
  User: coolcats
  Date: 2019-04-26
  Time: 09:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <link rel="stylesheet" href="css/login.css"  type="text/css" />
    <link rel="stylesheet" href="css/bootstrap.min.css"  type="text/css" />
</head>
<body style="background-color:#F0F0F0">
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("reader")==null){
        response.sendRedirect("index.jsp");

    }
    Reader reader = (Reader)session.getAttribute("reader");
%>
<div id="logo">
    <h4><%=reader.getName()%>,你好</h4>
</div>
<nav class="navbar navbar-expand-md bg-dark ac-globalnav navbar-dark">
    <div class="collapse navbar-collapse" >
        <ul class="navbar-nav" id="nva">
            <li class="nav-item ">
                <a class="nav-link" href="ReadMain.jsp">首页</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ReaderBorrow.jsp">借书</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="IOAction?action=returnbook&readerid=<%=reader.getUsername()%>">还书</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="LoginAction?action=logout">注销</a>
            </li>

        </ul>
    </div>
</nav>


</body>

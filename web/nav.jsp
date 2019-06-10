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
    <link rel="stylesheet" href="css/nav.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap.min.css"  type="text/css" />
</head>
<body style="background-image: url(./image/mapBG.jpg)">
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("reader")==null){
        response.sendRedirect("./index.jsp");
    }
    Reader reader = (Reader)session.getAttribute("reader");
%>
<nav class="navbar navbar-expand-md ac-globalnav navbar-dark">
    <div class="collapse navbar-collapse" >
                <div id="logo" style="float: left">
                    <h6 style="background-image: url(image/LMSwhite.png);width: 205px;height: 36px"></h6>
                </div>
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
        </ul>
        <div style="color: white; margin-left: 205px" class="nav-link" float="right">
            <div style="float: left;padding:16px 10px 2px">
                <h6 style="margin:0px"><%=reader.getName()%></h6>
            </div>
            <div style="float:right">
                <a id="logoutLogo" class="nav-link" href="LoginAction?action=logout"></a>
            </div>

        </div>
    </div>
</nav>


</body>

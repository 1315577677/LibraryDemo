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
<body style="background-color:#F0F0F0">
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("reader")==null){
        response.sendRedirect("./index.jsp");
    }
    Reader reader = (Reader)session.getAttribute("reader");
%>
<%--<div>--%>
<%--    <h4><%=reader.getName()%>,你好</h4>--%>
<%--</div>--%>
<nav class="navbar navbar-expand-md ac-globalnav navbar-dark">
    <div class="collapse navbar-collapse" >
        <ul class="navbar-nav" id="nva">
            <li style="padding: 0px;margin: -10px 0px 10px">
                <div id="logo" >
                    <h6 style="background-image: url(image/LMSwhite.png);width: 205px;height: 36px"></h6>
                </div>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="ReadMain.jsp">首页</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ReaderBorrow.jsp">借书</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="IOAction?action=returnbook&readerid=<%=reader.getUsername()%>">还书</a>
            </li>
<%--            <li class="nav-item">--%>
<%--                <a class="nav-link" href="LoginAction?action=logout">注销</a>--%>
<%--            </li>--%>
<%--            <li class="nav-item dropdown">--%>
<%--                <a class="nav-link dropdown-toggle" data-toggle="dropdown"><%=reader.getName()%></a>--%>
<%--                <div class="dropdown-menu">--%>
<%--                    <a class="dropdown-item" href="LoginAction?action=logout">注销</a>--%>
<%--                </div>--%>
<%--            </li>--%>
            <li style="color: white; margin-left: 640px" class="nav-link">
                <%=reader.getName()%>
            </li>
            <li class="nav-item"  >
                <a id="logoutLogo" class="nav-link" href="LoginAction?action=logout"><h6> </h6></a>
            </li>

        </ul>
<%--        <div>--%>
<%--            <h4><%=reader.getName()%>,你好</h4>--%>
<%--        </div>--%>
    </div>
</nav>


</body>

<%@ page import="Entity.Book" %><%--
  Created by IntelliJ IDEA.
  User: Creams
  Date: 2018/1/14
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/detail.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("./admin.jsp");
    }
%>
<html>
<head>
  <title>编辑图书</title>
</head>
<body style="background-image: url(./image/mapBG.jpg)">
<jsp:include page="nav.html"/>
<%
    Book book = (Book)session.getAttribute("resultbook");
%>
<form action="BookAction?action=EditDone" method="post">
    <div class="detail">
        <div class="title" style="color:#4f8fbe;font-family: 幼圆; font-weight: 900; font-size: 35px;">
            <span>编辑图书详情信息</span>
        </div>
        <div class="title">
            <span class="infotitle">书本编号&nbsp;</span><input  autofocus name="id" value="<%=book.getId()%>" readonly="readonly">
        </div>
        <div class="title">
            <span class="infotitle">书本名称&nbsp;</span><input name="name" value="<%=book.getName()%>">
        </div>
        <div class="title">
            <span class="infotitle">书本作者&nbsp;</span><input name="author" value="<%=book.getAuthor()%>">
        </div >
        <div class="title">
             <span class="infotitle">出版单位&nbsp;</span><input name="publisher" value="<%=book.getPublisher()%>">
        </div>
        <div class="title">
            <span class="infotitle">书本价格&nbsp;</span><input name="price" value="<%=book.getPrice()%>">
        </div>
        <div class="title">
            <span class="infotitle">书本类目&nbsp;</span><input name="category" value="<%=book.getCategory()%>">
        </div >
        <div class="title">
            <span class="infotitle">书本库存&nbsp;</span><input name="store" value="<%=book.getStore()%>">
        </div>
        <div class="title">
            <span class="infotitle">所在位置&nbsp;</span><input name="location" value="<%=book.getLocation()%>">
        </div>
        <div class="title">
            <span class="infotitle">书本详情&nbsp;</span><textarea name="desc"><%=book.getDesc()%></textarea>
        </div>
        <div class="button">
            <button type="submit" class="btn" style="background-color: #2473ab;color: #fff">编辑完成</button>
            <a href="BookAction?action=DeleteById&id=<%=book.getId()%>"><button type="button" class="btn" style="background-color: #ddd">删除书本</button></a>
            <a href="BookAction?action=getall"><button type="button" class="btn btn-info">返回总表</button></a>
        </div>
    </div>
</form>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="utf-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/addbook.css">
<script src="${pageContext.request.contextPath}/js/AddScript.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>书本添加</title>
</head>
<body>
<jsp:include page="nav.html"/>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("./admin.jsp");
    }
%>
<form action="BookAction?action=addtemp" onsubmit="return formcheck()" method="post">
    <div class="bookinfo">
        <div class="title">
            <span>请输入书本信息</span>
        </div>
        <div class="title">
            <span class="infotitle"></span><input name="bookid" class="required" id="bookid" autofocus onkeyup="bookcheck(),this.value=this.value.replace(/\D/g,'')"required placeholder="书本编号" ><span id="bookidcheck" class="error"></span>
        </div>
        <div class="title">
            <span class="infotitle"></span><input class="required" id="name" name="bookname" placeholder="书本名称" required><span id="booknamecheck" class="error" ></span>
        </div>
        <div class="title">
            <span class="infotitle"></span><input class="required" id="author" name="bookauthor"placeholder="书本作者" required><span id="bookauthorcheck" class="error"></span>
        </div>
        <div class="title">
            <span class="infotitle"></span><input class="required" id="publisher"name="bookpublisher" placeholder="出版单位" required><span id="bookpublishercheck" class="error"></span>
        </div>
        <div class="title">
            <span class="infotitle"></span><input class="required" id="price" name="bookprice" placeholder="书本价格" onkeyup="this.value=this.value.replace(/\D/g,'')" required><span id="bookpricecheck" class="error"></span>
        </div>
        <div class="title">
            <span class="infotitle"></span><input class="required" id="category" name="bookcategory" placeholder="书本类目" required><span id="bookcategorycheck" class="error"></span>
        </div>
        <div class="title">
            <span class="infotitle"></span><input class="required" id="store" name="bookstore" placeholder="书本库存" onkeyup="this.value=this.value.replace(/\D/g,'')" required><span id="bookstorecheck" class="error"></span>
        </div>
        <div class="title">
            <span class="infotitle"></span><input class="required" id="location" name="booklocation" placeholder="所在位置" required><span id="booklocationcheck" class="error"></span>
        </div>
        <div class="title">
            <span class="infotitle"></span><textarea name="bookdesc" class="required" placeholder="书本详情"></textarea><span id="bookdesccheck" class="error"></span>
        </div>
        <div class="button">
            <button type="submit" class="btn btn-success" name="over" value="1">完成添加</button>
            <button type="submit" class="btn btn-default" name="over" value="0" id="send">继续添加</button>
        </div>
    </div>
</form>
</body>
</html>
    

<%--
  Created by IntelliJ IDEA.
  User: Creams
  Date: 2018/1/15
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/borrow.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/InfoScript.js"></script>
<script language="JavaScript" src="js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>图书借出登记</title>
</head>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("./admin.jsp");
    }
%>
<body style="background-image: url(./image/mapBG.jpg)">
<jsp:include page="nav.html"/>
<div>
<div class="borrowinfo">
    <div class="title"style="color:#4f8fbe;font-family: 幼圆; font-weight: 900; font-size: 35px;">
        图书借出登记
    </div>
    <form action="IOAction?action=borrow" onsubmit="return errorsubmit()" method="post">
        <div>
            <span class="infotitle">读者学号&nbsp;</span><input type="text" placeholder="" autofocus onkeyup="readercheck()" name="readerid" id="readerid"><span id="readeridcheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">读者姓名&nbsp;</span><input type="text" placeholder="" name="readername" id="readername" disabled>
        </div>
        <div>
            <span class="infotitle">读者班级&nbsp;</span><input type="text" placeholder="" name="readername" id="readerclass" disabled>
        </div>
        <div>
            <span class="infotitle">用户状态&nbsp;</span><input type="text" placeholder="" name="readername" id="readerstatus" disabled><span id="readerstatuscheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">用户已借&nbsp;</span><input type="text" placeholder="" name="readerborrow" id="readerborrow" disabled><span id="readerborrowcheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">书本编号&nbsp;</span><input type="text" placeholder="" name="bookid" onkeyup="bookcheck()" id="bookid"><span id="bookidcheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">书本名称&nbsp;</span><input type="text" placeholder="" name="bookname" id="bookname"disabled>
        </div>
        <div>
            <span class="infotitle">书本作者&nbsp;</span><input type="text" placeholder="" name="bookauthor" id="bookauthor" disabled>
        </div>
        <div>
            <span class="infotitle">出版单位&nbsp;</span><input type="text" placeholder="" name="bookpublisher" id="bookpublisher" disabled>
        </div>
        <div>
            <span class="infotitle">书本剩余&nbsp;</span><input type="text" placeholder=""name="bookremain" id="bookremain" disabled><span id="booknumcheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">借阅时间</span>
            <select name="borrowday">
                <option value="7">7天</option>
                <option value="14">14天</option>
                <option value="30">30天</option>
            </select>
        </div>
        <div class="button">
            <button type="submit" class="btn" style="background-color: #2473ab;color: #fff" name="over" value="1">提交</button>
            <button type="reset" class="btn" style="background-color: #ddd">重填</button>
            <button type="submit" class="btn btn-info" name="over" value="0" id="send">继续借书</button>
        </div>
    </form>
</div>
</div>
</body>
</html> 

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
    if(session.getAttribute("reader") == null){
        response.sendRedirect("index.jsp");
    }
    Reader reader = new Reader();
    reader=(Reader)session.getAttribute("reader");
    ArrayList<Book> booklist = (ArrayList<Book>)session.getAttribute("readerbooklist");
%>
<script>
    var xmlHttp=false;
    function createXMLHttpRequest()
    {
        if (window.ActiveXObject)  //在IE浏览器中创建XMLHttpRequest对象
        {
            try{
                xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
            }
            catch(e){
                try{
                    xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                catch(ee){
                    xmlHttp=false;
                }
            }
        }
        else if (window.XMLHttpRequest) //在非IE浏览器中创建XMLHttpRequest对象
        {
            try{
                xmlHttp = new XMLHttpRequest();
            }
            catch(e){
                xmlHttp=false;
            }
        }
    }
    function readercheck(){
        var readerid = "<%=reader.getUsername()%>";
        createXMLHttpRequest();   //调用创建XMLHttpRequest对象的方法
        xmlHttp.onreadystatechange=readercheckResult;   //设置回调函数
        var url="ReaderAction?action=QueryReaderById&readerid=" + readerid;
        xmlHttp.open("POST",url,true);      //向服务器端发送请求
        xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=utf8");
        xmlHttp.send(null);
    }

    function readercheckResult() {
        if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
            var data = xmlHttp.responseText;
            var parameters = data.split("||");
            var getreadername=parameters[0]
            var getreaderstatus = parameters[2];
            var getreaderborrow = parameters[3];
            if (getreaderstatus == "异常" && getreadername != "null") {
                document.getElementById("error").innerHTML = "<p style='color: red'>*用户异常无法借阅,请联系管理员</p>";
            } else if (getreaderborrow == "5") {
                document.getElementById("error").innerHTML = "<p style='color: red'>*用户借阅过多无法借阅</p>";
            } else {
                document.getElementById("error").innerHTML = "";
            }

        }
    }
        function  errorsubmit(a) {
        if(!a){
            document.getElementById("error").innerHTML="<p style='color: red'>该书已借完</p>";
        }
        var check =  document.getElementById("error").innerHTML;
            if(check.length>0)return false;
        }

</script>
<html>
<head>
    <title>图书管理</title>
</head>
<body style="background-color:#F0F0F0">
<jsp:include page="ReaderBorrow.jsp"/>
<div style="height: 16px" id="error"></div>
<table class="table">
        <thead>
        <tr>
            <th>书本编号</th>
            <th>书名</th>
            <th>作者</th>
            <th>出版社</th>
            <th>价格</th>
            <th>类目</th>
            <th>库存总量</th>
            <th>借出数量</th>
            <th>剩余数量</th>
            <th>所在位置(柜号)</th>
            <th>操作</th>
        </tr>
        </thead>
    <%
        if(booklist!=null && booklist.size() > 0)
        {
            for(int i = 0; i < booklist.size(); i++)
            {
                Book b = booklist.get(i);
    %>
    <tbody>
    <tr>
        <td><%=b.getId()%></td>
        <td><%=b.getName()%></td>
        <td><%=b.getAuthor()%></td>
        <td><%=b.getPublisher()%></td>
        <td><%=b.getPrice()%></td>
        <td><%=b.getCategory()%></td>
        <td><%=b.getStore()%></td>
        <td><%=b.getLend()%></td>
        <td><%=b.getRemain()%></td>
        <td><%=b.getLocation()%></td>
        <td><a href="IOAction?action=readerborrow&bookid=<%=b.getId()%>&readerid=<%=reader.getUsername()%>"  onclick="return errorsubmit(<%=b.getRemain()%>)" onmousemove="readercheck()" >借书</a></td>
    </tr>

    <%
            }
        }
    %>
    </tbody>
</table>

</body>
</html>
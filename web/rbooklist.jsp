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
<html>
<head>
    <title>图书管理</title>
</head>
<body style="background-color:#F0F0F0">
<jsp:include page="ReaderBorrow.jsp"/>
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
        <td><a href="IOAction?action=readerborrow&bookid=<%=b.getId()%>&readerid=<%=reader.getUsername()%>">借书</a></td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>

</body>
</html>
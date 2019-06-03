<%@ page import="Entity.Reader" %><%--
  Created by IntelliJ IDEA.
  User: coolcats
  Date: 2019-05-29
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("check") == null){
        response.sendRedirect("./error.jsp");
    }
    Reader reader = (Reader) session.getAttribute("check");
%>
<html>
<head>
    <title>修改密码</title>
    <SCRIPT>
        function check_pass() {
            var pass1= document.getElementById("pass1").value;
            var pass2 = document.getElementById("pass2").value;
            if(pass1==pass2){
                document.getElementById("passC2").innerHTML = "";
                return true;
            }else{
                document.getElementById("passC2").innerHTML = "两次密码不一致";
            }
            return false;
        }
        function checkpasswordleng() {
            var pass1= document.getElementById("pass1").value;
            if(isPasswd(pass1)){
                document.getElementById("passC1").innerHTML = "";
                return true;
            }else{
                document.getElementById("passC1").innerHTML = "密码长度或格式不合法";
            }
            return false;
        }

        function isPasswd(s)
        {
            var patrn=/^(\w){6,20}$/;
            if (!patrn.exec(s)) return false;
            return true;

        }
        function formcheck() {
            return  check_pass()&&checkpasswordleng();
        }

    </SCRIPT>
</head>
<body>
<form action="ReaderAction?action=changepassword&UUID=<%=reader.getUUID()%>" method="post" ONSUBMIT="return formcheck()">
    <div>
        <input name="password" type="password" id="pass1" placeholder="新密码" ONKEYUP="checkpasswordleng()"><span id="passC1"></span>
    </div>
    <div>
        <input type="password" id="pass2" placeholder="确认新密码" onkeyup="check_pass()"><span id="passC2"></span>
    </div>
    <input type="submit">
</form>
</body>
</html>

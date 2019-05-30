<%--
  Created by IntelliJ IDEA.
  User: coolcats
  Date: 2019-05-29
  Time: 12:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script>
        function checkusernameleng() {
            var pass= document.getElementById("username").value;
            if(isPasswd(pass)){
                document.getElementById("usernameC").innerHTML = "";
                return true;
            }else{
                document.getElementById("usernameC").innerHTML = "用户名长度或格式不合法";
            }
            return false;
        }
        function checkmail() {
            var mail = document.getElementById("mail").value;
            if (ismail(mail)){
                document.getElementById("mailC").innerHTML = "";
                return true;
            } else {
                document.getElementById("mailC").innerHTML = "请输正确的邮箱";
            }
            return false;

        }

        function isPasswd(s)
        {
            var patrn=/^(\w){6,20}$/;
            if (!patrn.exec(s)) return false;
            return true;

        }
        function ismail(s) {
            var patrn=/^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
            if (!patrn.exec(s)) return false;
            return true;
        }

        function formcheck() {
            return  checkusernameleng()&&checkmail();
        }
    </script>
    <title>修改密码</title>
</head>
    <form action="ReaderAction?action=chapw" method="post" ONSUBMIT="return formcheck()">
        <div>
            <input type="text" id="username" name="username" placeholder="用户名" ONKEYUP="checkusernameleng()"><span id="usernameC"></span>
        </div>
        <div>
            <input type="email" id="mail" name="mail" placeholder="验证邮箱" onkeyup="checkmail()"><span id="mailC"></span>
        </div>
        <div>
            <input type="submit">
        </div>

    </form>
</body>
</html>

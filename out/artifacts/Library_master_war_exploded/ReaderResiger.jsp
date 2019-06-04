<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="utf-8"%>
<%--<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">--%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ReaderResiger.css">
<script src="${pageContext.request.contextPath}/js/res_reader.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script>
    function check_pass() {
        var pass1= document.getElementById("pass1").value;
        var pass2 = document.getElementById("pass2").value;
        if(pass1==pass2){
            document.getElementById("checkpass2").innerHTML = "";
            return true;
        }else{
            document.getElementById("checkpass2").innerHTML = "两次密码不一致";
        }
        return false;
    }
    function checkpasswordleng() {
        var pass1= document.getElementById("pass1").value;
        if(isPasswd(pass1)){
            document.getElementById("checkpass1").innerHTML = "";
            return true;
        }else{
            document.getElementById("checkpass1").innerHTML = "密码长度或格式不合法";
        }
        return false;
    }

    function checkusernameleng() {
        var pass= document.getElementById("username").value;
        if(isPasswd(pass)){
            document.getElementById("usernamecheck").innerHTML = "";
            return true;
        }else{
            document.getElementById("usernamecheck").innerHTML = "用户名长度或格式不合法";
        }
        return false;
    }
    function checkname() {
        var name = document.getElementById("name").value;
        if (isname(name)) {
            document.getElementById("namecheck").innerHTML = "";
            return true;
        } else {
            document.getElementById("namecheck").innerHTML = "请输入真实姓名";
        }
        return false;
    }
    function checktel() {
        var name = document.getElementById("tel").value;
        if (istel(name)) {
            document.getElementById("telcheck").innerHTML = "";
            return true;
        } else {
            document.getElementById("telcheck").innerHTML = "请输正确电话号码";
        }
        return false;

    }
    function checkmail() {
        var mail = document.getElementById("mail").value;
        if (ismail(mail)){
            document.getElementById("mailcheck").innerHTML = "";
            return true;
        } else {
            document.getElementById("mailcheck").innerHTML = "请输正确的邮箱";
        }
        return false;

    }


    function isPasswd(s)
    {
        var patrn=/^(\w){6,20}$/;
        if (!patrn.exec(s)) return false;
        return true;

    }
     function isname (s) {
         var patrn=/^[\u4E00-\u9FA5\uf900-\ufa2d]{2,4}$/;
         if (!patrn.exec(s)) return false;
         return true;

     }
    function istel (s) {
        var patrn=/^1[34578]\d{9}$/;
        if (!patrn.exec(s)) return false;
        return true;

    }
    function ismail(s) {
        var patrn=/^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
        if (!patrn.exec(s)) return false;
        return true;
    }
    function formcheck() {
      return  check_pass()&&checkpasswordleng()&&checkusernameleng()&&checkname()&&checktel()&&bookcheckResult();
    }


</script>
<html>
<head>
    <title>欢迎注册</title>
</head>
<body class="mapBG ">
<form action="Resiger?action=resiger"  onsubmit="return formcheck()" method="post">
    <div class="loginform1">
    <div class="bookinfo">
        <div class="size" style="text-align: center;color:#4f8fbe;font-family: 幼圆; font-weight: 900; font-size: 35px;padding-top: 20px;padding-bottom: 20px">
            读者注册
        </div>
        <div class="size">
            <span class="infotitle"></span><input name="username" class="required" autofocus id="username" onkeyup="readercheck()"  onblur="checkusernameleng()" placeholder="用户名：6-20个字母、数字、下划线" ><span class="error" id="usernamecheck"></span>
        </div>
        <div class="size ">
            <span class="infotitle"></span><input id="pass1" type="password" class="required" name="password" placeholder="密码：6-20个字母、数字、下划线"onkeyup="checkpasswordleng()"  ><span  class="error"id="checkpass1" ></span>
        </div>
        <div class="size">
            <span class="infotitle"></span><input id="pass2" type="password" class="required" name="password" placeholder="确认密码密码"  onkeyup="check_pass()"><span id="checkpass2"  class="error"></span>
        </div>
        <div class="size">
            <span class="infotitle"></span><input id="name" class="required" name="name" onblur="checkname()" placeholder="名字"><span class="error" id="namecheck"></span>
        </div>
        <div class="size">
            <span class="infotitle"></span><input  id="mail" type="email" class="required"onblur="checkmail()"name="mail"  placeholder="邮箱"><span class="error" id="mailcheck"></span>
        </div>
        <div class="size">
            <span class="infotitle"></span><input type="tel" class="required" name="tel" id="tel" placeholder="电话" onblur="checktel()"><span class="error" id="telcheck"></span>
        </div>
        <div class="size" style="font-family: 'Adobe 黑体 Std R'">
            系别<select style="width: 110px" name="grade">
                <option value="计算机">计算机</option>
                <option value="云计算">云计算</option>
                <option value="图艺">图艺</option>
                <option value="航空分院">航空分院</option>
                <option value="文理">文理</option>
                <option value="电气">电气</option>
            </select>
            班级<select style="width: 110px" name="classnum">
                <option value="一">一班</option>
                <option value="二">二班</option>
                <option value="三">三班</option>
                <option value="四">四班</option>
                <option value="五">五班</option>
                <option value="六">六班</option>
                <option value="七">七班</option>
                <option value="八">八班</option>
                <option value="九">九班</option>
                <option value="十">十班</option>
                <option value="十一">十一班</option>
                <option value="十二">十二班</option>
            </select>
            性别<select name="sex">
            <option value="男">男</option>
            <option value="女">女</option>
            </select>
        </div>
<%--        <div>--%>
<%--            <input style="width:10px"  type="radio" name="sex" value="男" checked/>男  <input style="width:10px" type="radio" name="sex" value="女"/>女--%>
<%--        </div>--%>
        <div class="button">
                <button id="resigerbutton" type="submit" href="index.jps">完成注册</button>
        </div>
    </div>
    </div>
</form>
</body>
</html>

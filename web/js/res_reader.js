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
    var readerid = document.getElementById("username").value;
    createXMLHttpRequest();   //调用创建XMLHttpRequest对象的方法
    var url="ReaderAction?action=QueryReaderUserNameById&id=" + readerid;
    xmlHttp.onreadystatechange=bookcheckResult;   //设置回调函数
    //document.getElementById("bookidcheck").innerHTML = "";
    xmlHttp.open("POST",url,true);      //向服务器端发送请求
    xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=utf8");
    xmlHttp.send(null);
}

function bookcheckResult(){
    if (xmlHttp.readyState==4 && xmlHttp.status==200){
        var data= xmlHttp.responseText;
        if(data=="true"){
            document.getElementById("usernamecheck").innerHTML = "该用户已存在";
            return false;
        }else {
            document.getElementById("usernamecheck").innerHTML = "";
            return true;
        }
    }



}

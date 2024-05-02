<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/earlyaccess/cwtexyen.css">
<script type="text/javascript" src="https://ff.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=XoJqzIZC0Oe8wX6zlv8P7GjUtGa7hcOxrHUZ2mYuIeanFSsFb6w4YhyBvdk8be1-5UDIdCMN_Qnwdx9qqMS33g" charset="UTF-8"></script><script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/headers_rwd.css">
<%
           String Answer = (String)session.getAttribute("Answer");
%>
<head>
<style>
    * {
        margin: 0;
        padding: 0;
        list-style: none;
        font-family:'cwtexyen' ;
      }
.font{
position: absolute;
font-family: 'cwtexyen';
text-align: center;
}
input{
    border-radius: 5px;
    background-color: #51ACDC;
    opacity: 0.75;
    color:white;
}
img{
    position: absolute;background-size:cover;background-repeat: no-repeat;background-position: center;
}
a{
    color: #083A64;
}
body{
    overflow: hidden;height: 100%;
}
#content{
  height: 100%;
}
@media screen and  (max-width: 1800px) and (min-width: 1250px)  { 
#mirror{
    width: 80%;
    right: 10%;
    height: 800px;
    position: absolute;
}
@media screen and  (max-height: 800px){
    body{
    overflow-y: scroll;
}
}
.font{
    width:30%;
    height:60%;
    right:20%;
    top:25%;
}
img{
    width:30%;
    height:60%;
    left:10%;
    top:20%;
}
.font input{
    height: 5%;
    width: 40%;
}
#forget{
    bottom: 5%;
}
}
@media screen and  (max-width: 1250px) and (min-width: 868px)  { 
@media screen and  (max-height: 600px){
    body{
    overflow-y: scroll;
}
}
#mirror{
    width: 80%;
    right: 10%;
    height: 600px;
    position: absolute;
}
.font{
    width:30%;
    height:60%;
    right:20%;
    top:25%;
}
.font input{
    height: 5%;
    width: 40%;
}
img{
    width:30%;
    height:70%;
    left:10%;
    top:25%;
}
#forget{
    bottom: -40%;
}
}
@media screen and  (max-width: 868px){ 
    body{
    overflow-y: scroll;
}
#mirror{
    width: 80%;
    right: 10%;
    height: 100%;
    position: absolute;
}
.font{
    width:80%;
    height:40%;
    right:10%;
    top:45%;
}
.font input{
    height:8%;
    width: 50%;
}
img{
    width:50%;
    height:25%;
    left:25%;
    top:15%;
}
#forget{
    bottom: -40%;
}
}
#password{
    position:relative;top:-0.5%;background-color: aliceblue;color: black;
}
</style>
</head>
<body style="background-color:#86CAF0;">
<div style="position: fixed;width: 100%;z-index: 5;">
<input type="checkbox" name="" id="menu_control">
<div class="header">
<label for="menu_control" class="menu_btn">
<div id="s0" style="position: absolute;border-radius: 5px;width: 100%;height: 20%;background-color: #A6D9EA;top:0%"></div>
<div id="s0" style="position: absolute;border-radius: 5px;width: 100%;height: 20%;background-color: #A6D9EA;top:40%"></div>
<div id="s0" style="position: absolute;border-radius: 5px;width: 100%;height: 20%;background-color: #A6D9EA;top:80%"></div>
</label>
<ul class="nav">
<li>
<a href="tabout.jsp">關於海龜</a>
</li>
<li>
<a href="tms.jsp">塑膠危機</a>
</li>
<li>
<a>活動新知</a>
<ul>
<li><a href="tnews.jsp">活動新知</a></li>
<li><a href="Query2.jsp">論壇</a></li>
</ul>
</li>
<li>
<a href="tgroup.jsp">公益團體</a>
</li>
<li>
<a href="tmember.jsp">會員登入</a>
</li>
</ul>
<div id="link" style="height:100%;position: relative;">
<h1 id="L1" class="link" style="height:100%;" onclick="location.href='frontpage.jsp'">首頁></h1>
<h1 id="L2" class="link" style="height: 100%; position: relative; right: -100%; top: -100%; margin-left: 10%; color: white; width: 100%;" onclick="location.href='loging.html'">登入</h1></div>
</div>
</div>
<div id="content" style="position:relative;width:100%;">
<div id="mirror">
<div class="img"><img src="team/login.png"></div>
<div class="font">
<h1>欲登入龜龜會員<br>請填寫帳號密碼</h1><br>
<h1>若無會員帳號請先<a href="Asignu.jsp">註冊</a></h1>
<br>
<form style="font-size:20px;width: 100%;bottom: -5%;position:relative;scale:1.5;" action="Alog.jsp" method="get">
<br>
帳號 <input style="position:relative;top:-0.5%;background-color:aliceblue;color: black;" type="text" style="background-color:#E8E7E7" name="user" /><br />
<br>
密碼 <input type="password" value="" name="pwd" id="password" class="password" />
<br>
<div style="position:relative;right: -20%;bottom: -10;font-size: 75%;">
<input type="checkbox" style="width:10%;height: 3%;" id="chkPasw"><label style="position: relative;top:-10%;" for="chkPasw"><span>顯示密碼</span></label>
</div>
<br>
<input style="position: relative;bottom: 0%;width: 20%;right: 0%;" class="btn" type="submit" value="登入" />
</form>
<h1 id="forget" style="position:absolute;right:-25%;"><a href="forget.html">忘記密碼</a></h1>
</div>
</div>
</div>
<script>
$(function(){
	var $password = $('#password'), 
		$passwordInput = $('<input type="text" name="' + $password.attr('name') + '" class="' + $password.attr('className') + '" />');
 
	$('#chkPasw').click(function(){
		if(this.checked){
			$password.replaceWith($passwordInput.val($password.val()));
		}else{
			$passwordInput.replaceWith($password.val($passwordInput.val()));
		}
	});
});
</script>
<script type="text/javascript" src="js/rwd_header.js"></script>
</html>
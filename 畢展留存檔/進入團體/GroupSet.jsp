<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<link rel="icon" href="/tlogo.ico" type="image/x-icon" />
<title>龜心塑箭-組織大門</title>
<link rel="stylesheet" type="text/css" href="css/headers_rwd.css">
<link rel="stylesheet" type="text/css" href="cs/rwd.css">
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/earlyaccess/cwtexyen.css">
   <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
button#buttonA:hover{
  cursor:pointer
}
button#buttonB:hover{
  cursor:pointer
}
.Aleft:hover{
  cursor:pointer
}
.Aright:hover{
  cursor:pointer
}
.btn:hover{
  background-color: #D7E4F1;
}
.btn{
  background-color:#BFDBF4;
}
  * {
    margin: 0;
    padding: 0;
    list-style: none;
    font-family: 'cwtexyen';
  }
body, html{
  height: 100%;
  background-image:url(content/A1.png);
  background-size:cover;
}
#imgsA{
    width:40%;height:70%;top:25%;left:10%
}
#imgsB{
    width:40%;height:70%;top:25%;right:10%;
}
@media screen and (max-width: 768px) and (min-width: 300px) { 
#imgsA{
    width:80%;height:30%;top:25%;left:10%
}
#imgsB{
    width:80%;height:30%;top:60%;left:10%;
}
}
.window1 {
overflow: hidden;
width: 100%;
height: 100%;
}
#images {
display: flex;
align-items: flex-start;
transition: transform 0.5s;
width: 100%;
height: 100%;
}
#images2 {
display: flex;
align-items: flex-start;
transition: transform 0.5s;
width: 100%;
height: 100%;
}
.window2 {
overflow: hidden;
width: 100%;
height: 100%;
}
    </style>
<%
 String user = null;
 user=(String)session.getAttribute("user");
 String pwd = null;
 pwd=(String)session.getAttribute("pwd");
%>
</head>
<body">
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
<a href="AboutSet.jsp">關於海龜</a>
</li>
<li>
<a href="DataSet.jsp">塑膠危機</a>
</li>
<li>
<a>活動新知</a>
<ul>
<li><a href="NewSet.jsp">活動新知</a></li>
<li><a href="ForumSet.jsp">論壇</a></li>
</ul>
</li>
<li>
<a href="GroupSet.jsp">公益團體</a>
</li>
<li>
<a href="AssertionID.jsp">會員登入</a>
</li>
</ul>
<div id="link" style="height:100%;position: relative;">
<h1 id="L1" class="link" style="height:100%;" onclick="location.href='home.jsp'">首頁></h1>
<h1 id="L2" class="link" style="height: 100%; position: relative; right: -65%; top: -100%; margin-left: 10%; width: 100%; color: white;" onclick="location.href='GroupSet.jsp'">公益團體</h1></div>
</div>
</div>
<div id="content" style="position:relative;width:100%;height:99vh">
<div id="imgsA" style="position:absolute;">
<button class="btn" onclick="location.href='GoverGroupSet.jsp'" style="border:none;font-size:24px;cursor: pointer;;font-weight: bold;color:white;right:20%;width: 60%;position: absolute;height:20%;border-radius: 10px;">政府組織</button>
<div id="imgA" style="border-radius:25px;width:60%;height:60%;position:absolute;top:30%;left:20%;background-color:rgb(41, 151, 255) ;">
<input style="top:30%;right:0;position: absolute;height:40%;width:10%;z-index: 8;background-color:#BFDBF4;border-radius:5px" type="button" value=">" class="Aleft">
<input style="top:30%;left:0;position: absolute;height:40%;width:10%;z-index: 8;background-color:#BFDBF4;border-radius:5px" type="button" value="<" class="Aright">
<div style="border-radius: 25px;" class="window1">
<div class="image" id="images">
<img src="team/f04.png" style="width: 100%;height: 100%;flex-shrink: 0;" alt="" />
<img src="team/f05.png" style="width: 100%;height: 100%;flex-shrink: 0;" alt="" />
<img src="team/f06.png" style="width: 100%;height: 100%;flex-shrink: 0;" alt="" />
</div>
</div>
<span style="width:100%;height:10%;position:absolute;bottom:0%;left: 0%;z-index: 12;display: flex;align-items: center;justify-content: center;" id="buttonA">
<button id=buttonA style="margin:2%;width:4%;height:60%;border-radius: 100px;background-color:#BFDBF4"></button>
<button id=buttonA style="margin:2%;width:4%;height:60%;border-radius: 100px;background-color:#BFDBF4"></button>
<button id=buttonA style="margin:2%;width:4%;height:60%;border-radius: 100px;background-color:#BFDBF4"></button>
</span>
</div>
</div>
<div id="imgsB" style="position:absolute;">
<button class="btn" onclick="location.href='PublicGroupSet.jsp'" style="border:none;font-size:24px;cursor: pointer;;font-weight: bold;color:white;right:20%;width: 60%;position: absolute;height:20%;border-radius: 10px;">非政府組織</button>
<div id="imgB" style="border-radius:25px;width:60%;height:60%;position:absolute;top:30%;left:20%;background-color:rgb(41, 151, 255) ;">
<input style="top:30%;right:0;position: absolute;height:40%;width:10%;z-index: 8;background-color:#BFDBF4;border-radius:5px" type="button" value=">" class="Bleft">
<input style="top:30%;left:0;position: absolute;height:40%;width:10%;z-index: 8;background-color:#BFDBF4;border-radius:5px" type="button" value="<" class="Bright">
<div style="border-radius: 25px;" class="window2">
<div class="image" id="images2">
<img src="team/f01.png" style="width: 100%;height: 100%;flex-shrink: 0;" alt="" />
<img src="team/f02.png" style="width: 100%;height: 100%;flex-shrink: 0;" alt="" />
<img src="team/f03.png" style="width: 100%;height: 100%;flex-shrink: 0;" alt="" />
</div>
</div>
<span style="width:100%;height:10%;position:absolute;bottom:0%;left: 0%;z-index: 12;display: flex;align-items: center;justify-content: center;" id="buttonB">
<button id=buttonB style="margin:2%;width:4%;height:60%;border-radius: 100px;background-color:#BFDBF4"></button>
<button id=buttonB style="margin:2%;width:4%;height:60%;border-radius: 100px;background-color:#BFDBF4"></button>
<button id=buttonB style="margin:2%;width:4%;height:60%;border-radius: 100px;background-color:#BFDBF4"></button>
</span>
</div>
</div>
</div>
</div>
        <div id="s17" class="ab"  style="background-color :white;position:relative;z-index: 0;bottom:-200px"><!--頁尾-->
            <div id="b0" style="position:absolute">
      <img class="logos" id="logos0" src="1/Li0.svg" style="position:absolute;">
      <img class="logos" id="logos1" src="1/L1.svg" style="position:absolute;">
      <img class="logos" id="logos2" src="1/L2.svg" style="position:absolute;">
      <img class="logos" id="logos3" src="1/L3.svg" style="position:absolute;">
      <img class="logos" id="logos4" src="1/L4.svg" style="position:absolute;">
      <img class="logos" id="logos5" src="1/L5.svg" style="position:absolute;">
      <img class="logos" id="logos6" src="1/L6.svg" style="position:absolute;">
      <img class="logos" id="logos7" src="1/Li7.svg" style="position:absolute;">
      <img class="logos" id="logos8" src="1/Li8.svg" style="position:absolute;">
      <img class="logos" id="logos9" src="1/Lo9.svg" style="position:absolute;">
            </div>
        
            <div id="b1" style="position:absolute;">
            <img id="school" src="1/school.svg" style="position:absolute"></div>
            
            <div id="b2" style="position:absolute">
            <img id="logo" src="1/tlogo.png" style="position:absolute">
            <h1 class="font" style="top:5%;position:absolute;">聯絡資訊 icsorteam@gmail.com</h1>
            <h1 class="font" style="top:40%;position:absolute;">地址 台北市文山區木柵路一段17巷1號</h1>
            <h1 class="font" style="top:70%;position:absolute;">龜心塑箭團隊 Hiturtle</h1>
            </div>
           
            <div id="b3" style="position:absolute">
          <a href="https://www.facebook.com/Hiturtle2022/"><img id="FG" src="1/facebook.png" style="position:absolute;border-radius: 5px"></a>
          <a href="https://www.instagram.com/hiturtle_tw/"><img id="IG" src="1/instgram.png" style="position:absolute;border-radius: 5px;"></a>
          <a href="https://www.pinterest.com/icsorteam/"><img id="PG" src="1/pinterest.png" style="position:absolute;border-radius: 5px"></a>
           </div>
           </div>
<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script type="text/javascript" src="js/rwd_footer.js"></script>
<script type="text/javascript" src="js/rwd_header.js"></script>
<script type="text/javascript" src="js/tgroup.js"></script>
</html>
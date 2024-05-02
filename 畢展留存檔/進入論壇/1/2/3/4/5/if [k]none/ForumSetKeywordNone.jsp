<html>
<head>
   <link rel="icon" href="/tlogo.ico" type="image/x-icon"/>
   <title>龜心塑箭-留言區</title>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/earlyaccess/cwtexyen.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/headers_rwd.css">
<link rel="stylesheet" type="text/css" href="css/rwdfoots.css">
<style>
@keyframes open{
  0%{opacity: 0;z-index:9;visibility: hidden}
  100%{opacity:1;z-index:9;visibility: visible}
}
.open{
  animation: open 0.5s;
  animation-fill-mode: forwards;
}

* {
    margin: 0;
    padding: 0;
    list-style: none;
    font-family: 'cwtexyen';
  }
/*內容調整*/
a.buttonT {
    appearance: button;
    background-color:083A64;
    opacity:0.75;
    border-radius:5px;
    text-decoration: none;
    color: white;
    text-align:center;
    font-size:2.5em;
    width:20%;
    height:15%;
    position:absolute;
    justify-content:center;
    display:grid;
}
.main{
 width:80%;
 left:10%;
 height:250px; /*版子高 變更*/
 }

.content{
width:70%;
position:relative;
right:-30%;
bottom:100%;
height:100%;
}
.photo{
width:30%;
height:100%;
position:relative;
}
#key{
width:50%;
height:500px;
top:20%;
right:25%;
position:absolute;
background-color:white;
z-index:0;
opacity:0;
visibility: hidden;
border-radius:15px;
}
 #talk{
 width:50%;
 height:500px;
 top:20%;
 right:25%;
 position:absolute;
 background-color:#B6EDFF;
 z-index:0;
 opacity:0;
visibility: hidden;
border-radius:15px;
}
#tool{
height: 120px;
width:600px;
}
#wordcloud{
background-color: #1A7DBB;
color:rgb(0, 0, 0);
background-image: url(cloud.png);
background-position: center;
background-size: cover;
font-weight: bolder;
width: 15%;
height: 30%;
border-radius: 5px;
left: 22.5%;
position: absolute;
top:10%;
}
#talkcloud{
background-color: #1A7DBB;
color:rgb(255, 255, 255);
font-weight: bolder;
width: 15%;
height: 30%;
border-radius: 5px;
left: 2.5%;
top:10%;
position: absolute;
}
#inputcloud{
color:rgb(0, 0, 0);
font-weight: bolder;
width: 70%;
height: 80%;
right: 30%;
top:10%;
position: absolute;
}
#entercloud{
background-color: #1A7DBB;
color:rgb(255, 255, 255);
font-weight: bolder;
width: 25%;
height: 80%;
right: 4.5%;
top:10%;
border-radius: 5px;
position:absolute;
}
#select{
    top:5%;
}
#tsubmit{
    right: -50%;top:-5%
}
h3{
    text-align: center;
}
#time{
font-size:0.8em
}
#content{
font-size:1.4em
}
#title{
font-size:1.8em
}
@media screen and  (max-width: 1000px) and (min-width: 768px)  { 
    a.buttonT{
    font-size: 1.8em;
}
#time{
font-size:0.6em
}
#content{
font-size:1.2em
}
#title{
font-size:1.5em
}
.main{
 height:200px; /*版子高 變更*/
 }
}
@media screen and  (max-width: 768px) and (min-width: 600px)  { 
    a.buttonT{
    font-size: 1.5em;
}
#time{
font-size:0.5em
}
#content{
font-size:0.8em
}
#title{
font-size:1.2em
}
.main{
 height:150px; /*版子高 變更*/
 }
}
@media screen and  (max-width: 600px) and (min-width: 300px)  { 
    a.buttonT{
    font-size: 0.8em;
}
.main{
 height:100px; /*版子高 變更*/
 }
#time{
font-size:0.2em
}
#content{
font-size:0.5em
}
#title{
font-size:0.7em
}
}
@media screen and  (max-width: 300px)  { 
.main{
 height:100px; /*版子高 變更*/
 }
#time{
font-size:0.2em
}
#content{
font-size:0.4em
}
#title{
font-size:0.5em
}
}

@media screen and  (max-width: 768px){
#tool{
height: 120px;
width:300px;
}
#key{
    width: 70%;
    right: 15%;
    height: 300px;
}
#talk{
    height: 300px;
}
#select{
    top:8%
}
#tsubmit{
    right: -65%;top:-2%
}
}
</style>
</head>
<body style="background-color:white;min-height:1000px"><!--整體-->
    <div style="width: 100%;z-index: 10;position:fixed"><!--浮動-->
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
      <h1 id="L2" class="link" style="height: 100%; position: relative; right: -65%; top: -100%; margin-left: 10%; color: white; width: 100%;" onclick="location.href='ForumSet.jsp'">龜龜論壇</h1></div>
    </div>
    </div>
    <div id="tool" style="position: absolute;right:0%;width: 100%;background-color: white;top:90px">

        <form style="width: 60%;height: 50%;right: 0;position: absolute;" action="ForumSetTakeKeyword.jsp">
        <input id="inputcloud" placeholder="關鍵字" onfocus="this.placeholder=''" onblur="this.placeholder='關鍵字'" type="text" name="keyword">
        <input id="entercloud" type="submit" value="查詢"/>
        </form>
        
        <button id="wordcloud">檢索</button>
        <button id="talkcloud">發布貼文</button>
        </div>



<div id="talk">
     <div id="closeT" style="cursor:pointer;border-radius:0 15px 0 0;position:absolute;right:0;width:10%;height:10%;top:0;background-color:#5CC4FF">
     <img style="width:100%;height:100%;border-radius:0 15px 0 0" src="7.5/x.png">
     </div>

      <form action="ForumSetWriteText.jsp"> 
      <div style="position:absolute;width:100%;height:90%;bottom:0;background-color:#E8E7E7;border-radius:0 0 15px 15px">
        <h3>標題</h3>
        <textarea placeholder="請輸入十字以內標題" onfocus="this.placeholder=''" onblur="this.placeholder='請輸入十字以內標題'" type="text" style="height:10%;width:80%;right: -10%;position: relative;margin-bottom: 1%;" name="title"></textarea>
        <br>
        <h3>內容</h3>
        <textarea placeholder="請輸入一百字以內內文" onfocus="this.placeholder=''" onblur="this.placeholder='請輸入一百字以內內文'" type="text" style="height:30%;width:80%;right: -10%;position: relative;margin-bottom: 1%;" name="content"></textarea>
        <br>
        <h3>來源</h3>
        <textarea style="height:10%;width:80%;right: -10%;position: relative;margin-bottom: 1%;" name="source"></textarea>
        <br>
      <h3 style="position:absolute;left:10%;text-align: none;">類別</h3>
      <select id="select" name="theme" style=";right: -10%;height:10%;position: relative;">
          <option name="theme" value="T0">海洋永續</option>
          <option name="theme" value="T1">海龜保育</option>
          <option name="theme" value="T2">海廢議題</option>
          <option name="theme" value="T3">減塑生活</option>
          <option name="theme" value="T4">其他新知</option>
        </select>
      <br>
      <input id="tsubmit" type="submit" value="發布" style="width:25%;height:10%;position: relative;">
      </form>
</div>

</div>
    <%
try{
    String user=(String)session.getAttribute("user");
    String password=(String)session.getAttribute("password");

    String driverName = "com.mysql.jdbc.Driver";
    //資料庫使用者名稱 
    String userName = "hiturtle_shuics_";
    //密碼 
    String userPasswd = "HeFJYDAj4kDPMrMN";
    //資料庫名 
    String dbName = "hiturtle_shuics_";
    //聯結字串 
    String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="
            + userName + "&password=" + userPasswd;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection(url);
   
   
       Statement st2=conn.createStatement();
       String strQuery2 = "SELECT COUNT(title like \'%海龜%\' or null),COUNT(title like \'%塑膠%\' or null) ,COUNT(title like \'%海洋%\' or null) ,COUNT(title like \'%環保%\' or null) ,COUNT(title like \'%綠蠵龜%\' or null) ,COUNT(title like \'%棱皮龜%\' or null) ,COUNT(title like \'%赤蠵龜%\' or null) FROM currentcontent";
       ResultSet rs2 = st2.executeQuery(strQuery2);
       if(rs2.next()){
        session.setAttribute("QUERYS2",rs2);
       }
       rs2=(ResultSet)session.getAttribute("QUERYS2");

    String K1="海龜";
    String K2="塑膠";
    String K3="海洋";
    String K4="環保";
    String K5="綠蠵龜";
    String K6="棱皮龜";
    String K7="赤蠵龜";
    %>
    <div id="key">
        <div id="closeS" style="cursor:pointer;border-radius:0 15px 0 0;position:absolute;right:0;width:10%;height:10%;top:0;background-color:#5CC4FF">
            <img style="width:100%;height:100%;border-radius:0 15px 0 0" src="7.5/x.png">
        </div>
        <div id="cloudy" style="width:100%;height:90%;position:absolute;top:10%;background-color:#20A794">
            <div style="align-items: center;">
                <a class="buttonT" href="ForumSetTakeKeyword.jsp?keyword=<%=K1%>" style="text-decoration:none;left:25%;top:10%">海龜<%=rs2.getString(1)%></a>
                <a class="buttonT" href="ForumSetTakeKeyword.jsp?keyword=<%=K2%>" style="text-decoration:none;right:25%;top:10%">塑膠<%=rs2.getString(2)%></a>
            </div><br>
            <div style="align-items: center;">
                <a class="buttonT" href="ForumSetTakeKeyword.jsp?keyword=<%=K3%>" style="text-decoration:none;left:10%;top:30%">海洋<%=rs2.getString(3)%></a>
                <a class="buttonT" href="ForumSetTakeKeyword.jsp?keyword=<%=K4%>" style="text-decoration:none;left:40%;top:30%">環保<%=rs2.getString(4)%></a>
                <a class="buttonT" href="ForumSetTakeKeyword.jsp?keyword=<%=K5%>" style="text-decoration:none;right:10%;top:30%">綠蠵龜<%=rs2.getString(5)%></a>
            </div><br>
            <div style="align-items: center;">
                <a class="buttonT" href="ForumSetTakeKeyword.jsp?keyword=<%=K6%>" style="text-decoration:none;right:25%;top:50%">棱皮<%=rs2.getString(6)%></a>
                <a class="buttonT" href="ForumSetTakeKeyword.jsp?keyword=<%=K7%>" style="text-decoration:none;left:25%;top:50%">赤蠵龜<%=rs2.getString(7)%></a>
            </div>
        </div>
    </div>

<div style="width:100%;position: relative;top:150px;min-height: 80vh">
<h1 id="title">資料筆數:0，頁數:第1頁/總頁數:1頁</h1>
<hr style="border:none"/>
<a id="content" href="ForumSet.jsp">返回</a>
<hr style="border:none"/>
</div>
<%
}catch(Exception e){
            response.sendRedirect("ForumSet.jsp");
       }
%>


<div id="s15" class="ab"  style="background-color :white;position:relative;z-index: 0;bottom:-200px"><!--頁尾-->
    <div id="b0" style="position:absolute">
      <h1 id="suport" style="position:absolute">大力支持者</h1>
  <img class="logos" id="logos0" src="1/L0.svg" style="position:absolute;">
  <img class="logos" id="logos1" src="1/L1.svg" style="position:absolute;">
  <img class="logos" id="logos2" src="1/L2.svg" style="position:absolute;">
  <img class="logos" id="logos3" src="1/L3.svg" style="position:absolute;">
  <img class="logos" id="logos4" src="1/L4.svg" style="position:absolute;">
  <img class="logos" id="logos5" src="1/L5.svg" style="position:absolute;">
  <img class="logos" id="logos6" src="1/L6.svg" style="position:absolute;">
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

</body>
<script type="text/javascript" src="js/rwd_header.js"></script>
<script type="text/javascript" src="js/rwd_footer.js"></script>
<script type="text/javascript" src="js/forum.js"></script>
</html>
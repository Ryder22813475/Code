<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/earlyaccess/cwtexyen.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.10/vue.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href=" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/headers_rwd.css">
<link rel="stylesheet" type="text/css" href="cs/rwd.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
    * {
        list-style: none;
        font-family:'cwtexyen' ;
      }
#buttonmode{
   position: absolute;
}
#modify{
   background-color: beige;
   position: absolute;
   font-weight: bolder;
}
#B-1{
   top:0%;
   left: 0;
   background-color: #86D3FF;
   color:rgb(255, 255, 255);-webkit-text-stroke: 0.4px rgb(0, 0, 0);font-weight: bolder;
}
#B-2{
   top:25%;
   left: 0;
   background-color: #5CC4FF;
   color:rgb(255, 255, 255);-webkit-text-stroke: 0.4px rgb(0, 0, 0);font-weight: bolder;
}
#B-3{
   top:50%;
   left: 0;
   background-color: #43BBFF;
   color:rgb(0, 0, 0);-webkit-text-stroke: 0.4px rgb(255, 255, 255);font-weight: bolder;
}
#B-4{
   top:75%;
   left: 0;
   background-color: #43BBFF;
   color:rgb(255, 255, 255);-webkit-text-stroke: 0.4px black;font-weight: bolder;
}
.B{
   width: 50%;height:25%;position: absolute;border-radius: 0 25px 25px 0;font-size: 180%;
}
@media screen and  (max-width: 1800px) and (min-width: 1200px)  { 
   #buttonmode{
   width: 25%;
   height: 60%;
   left: 0%;
   top:200px;
}
#modify{
   width: 40%;
   height: 750px;
   right: 30%;
   top:150px;
   font-size: 1.4rem;
}
}
@media screen and  (max-width: 1200px) and (min-width: 768px)  { 
   #buttonmode{
   width: 40%;
   height: 600px;
   left: 0%;
   top:150px;
}
#modify{
   width: 40%;
   height: 600px;
   right: 10%;
   top:150px;
   font-size: 1.2rem;
}
}
@media screen and  (max-width: 768px){ 
   #buttonmode{
   width: 80%;
   height: 500px;
   left: 10%;
   top:90px;
   position: fixed;
   z-index: 15;
}
#modify{
   width: 80%;
   height: 500px;
   left: 10%;
   top:200px;
   font-size: 1rem;
}
.B{
   width: 25%;height:15%;position: absolute;border-radius: 0 0 25px 25px;font-size: 16px;
}
#B-1{
   top: 0;
   left:10%;
   background-color: #86D3FF;
   color:rgb(255, 255, 255);-webkit-text-stroke: 0.4px rgb(0, 0, 0);font-weight: bolder;
}
#B-2{
   top: 0;
   left:35%;
   background-color: #5CC4FF;
   color:rgb(255, 255, 255);-webkit-text-stroke: 0.4px rgb(0, 0, 0);font-weight: bolder;
}
#B-3{
   top: 0;
   left:55%;
   background-color: #43BBFF;
   color:rgb(0, 0, 0);-webkit-text-stroke: 0.4px rgb(255, 255, 255);font-weight: bolder;
}
#B-4{
   top: 0;
   left:80%;
   -webkit-text-stroke: 0.1px rgb(255, 255, 255)
}
}
</style>
<%  
try{
  final int nPageLine = 5;  //每頁顯示的資料數量
    int nRowCountD = 0,nPageCount = 0,nPage = 0;
    String sId="", sRowCntD = "", sPage = "";
    ResultSet rsd = null;   
           rsd=(ResultSet)session.getAttribute("QUERYD");
           String user=(String)session.getAttribute("user");
           sRowCntD = (String)session.getAttribute("ROWCOUNTD");
	   nRowCountD = Integer.parseInt(sRowCntD);

	if(rsd==null)
		response.sendRedirect("usehomeNC.jsp");
	else{
		sPage = request.getParameter("page");
		if(sPage == null)
			nPage = 1;
		else{
			nPage = Integer.parseInt(sPage);
		if(nPage < 1)
			nPage = 1;
		}
		int nLine = (nPage-1)*nPageLine;   //計算此頁要顯示資料的起迄筆數
		int nMax = nLine+nPageLine-1;

		nPageCount = (nRowCountD+nPageLine-1)/nPageLine;
		if(nPage > nPageCount) nPage = nPageCount;
%>
<html>
    <body style="background-color:white"><!--整體-->
        <div style="width: 100%;z-index: 10;position: fixed;top: 0;"><!--浮動-->
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
            <a href="AssertionID.jsp.jsp">會員登入</a>
            </li>
          </ul>
          <div id="link" style="height:100%;position: relative;">
      <h1 id="L1" class="link" style="height:100%;" onclick="location.href='home.jsp'">首頁></h1>
      <h1 id="L2" class="link" style="height: 100%; position: relative; right: -65%; top: -110%; margin-left: 10%; width: 150%; color: white;" onclick="location.href='caChatManagement.jsp'">留言管理</h1></div>
      <h1 id="L3" class="link" style="height: 100%; position: relative; right: -70%; top: 5%;width: 100%; color: white;" onclick="location.href='https://hiturtle.shuics.tw/'">登出</h1></div> 
        </div>
    </div>

    <div id="body" style="width:100%;height: 100%;position: absolute;max-height: 900px;">
    <div id="buttonMode">
   <button class="B" id="B-1" onclick="location.href='UserManagement.jsp'">帳戶管理</button>
   <button class="B" id="B-2" onclick="location.href='caForumManagement.jsp'">論壇內容管理</button>
   <button class="B" id="B-3" onclick="location.href='caChatManagement.jsp'">留言內容管理</button>
   <button class="B" id="B-4" onclick="location.href='caTestManagement.jsp'">測驗內容管理</button>
    </div>

<div id="modify">
<%
    out.print("資料筆數:"+nRowCountD+"，頁數:第"+nPage+"頁/總頁數:"+nPageCount+"頁<hr/>");
    if(nPage > 1)  //顯示上一頁的超連結
        out.print("<a href=\"ChatManagement.jsp?page="+(nPage-1)+"\">上一頁</a>");
    if(nPage<nPageCount) //顯示下一頁
        out.print("<a href=\"ChatManagement.jsp?page="+(nPage+1)+"\">下一頁</a>");
    out.print("<a href=\"ChatManagement.jsp\">重整</a><hr/>");

rsd.absolute((nPage-1)*nPageLine+1);   //資料集指標指向此頁的第一筆
while(nLine <= nMax && !rsd.isAfterLast()){
  nLine++;  
%>
<div id="boardT" style="width:80%;left:10%;height:10%;background-color:#A6D9EA;position:relative;margin-bottom:2.5%">
<div id="img" style="width:10%;left:0%;height:100%;background-color:white;position:absolute"></div>
<div id="content" style="width:85%;left:10%;height:100%;background-color:#A6D9EA;position:absolute">
    <div id='pwd' style="display:initial"><%=rsd.getString("chat")%></div>
</div>
<div id="edit" style="width:8%;left:92%;height:100%;background-color:white;position:absolute">
    <a class=buttonT style="background-image:url(forum/eye.png);position:absolute;bottom:0%;background-position:center;background-size:cover;right:0%;width:100%;height:50%" href="ChatManagementEdit.jsp?tid=<%=rsd.getString("tid")%>"></a>
    <a class=buttonT style="background-image:url(forum/pencil.png);position:absolute;bottom:50%;background-position:center;background-size:cover;right:0%;width:100%;height:50%" href="ForumSetChat.jsp?id=<%=rsd.getString("tid")%>"></a>
</div>
</div>
<%  
      rsd.next();
    }
    }
}catch(Exception e){ 
    response.sendRedirect("nonChatManagement.jsp");
}
%>
</div>
</div>

        <div id="s17" class="ab"  style="background-color :white;position:relative;z-index: 0;bottom:-900px"><!--頁尾-->
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
</body>
<script type="text/javascript" src="js/rwd_headerL3.js"></script>
<script type="text/javascript" src="js/rwd_footer.js"></script>
</html>


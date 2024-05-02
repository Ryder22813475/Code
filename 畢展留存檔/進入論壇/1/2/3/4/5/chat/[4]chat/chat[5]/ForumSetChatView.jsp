<html>
<head>
   <link rel="icon" href="/tlogo.ico" type="image/x-icon"/>
   <title>龜心塑箭-留言區</title>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/earlyaccess/cwtexyen.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/headers_rwd.css">
<link rel="stylesheet" type="text/css" href="cs/rwd.css">
<style>
.board{
 width:80%;
 height:100px;
 margin-bottom:5%;
 }
#time{
font-size:1.2em
}
#content{
font-size:1.4em
}
#title{
font-size:1.8em
}
@media screen and  (max-width: 1200px) and (min-width: 800px)  { 
#body{
    top:20px;
}
}
@media screen and  (max-width: 1000px) and (min-width: 768px)  { 
    a.buttonT{
    font-size: 1.8em;
}
#time{
font-size:1em
}
#content{
font-size:1.5em
}
#title{
font-size:1.7em
}
.main{
 height:200px; /*版子高 變更*/
 }
 #body{
    top:40px;
}
}
@media screen and  (max-width: 768px) and (min-width: 600px)  { 
    a.buttonT{
    font-size: 1.5em;
}
#time{
font-size:0.8em
}
#content{
font-size:1em
}
#title{
font-size:1.4em
}
.main{
 height:150px; /*版子高 變更*/
 }
 #body{
    top:60px;
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
font-size:0.5em
}
#content{
font-size:0.8em
}
#title{
font-size:1em
}
#body{
    top:80px;
}
}
@media screen and  (max-width: 300px)  { 
.main{
 height:100px; /*版子高 變更*/
 }
#time{
font-size:0.4em
}
#content{
font-size:0.6em
}
#title{
font-size:0.7em
}
#body{
    top:100px;
}
}
.main{
    height:400px ;
    margin-top:10%;
    width:80%;
}
@media screen and  (max-width: 1280px) and (min-width: 1080px)  { 
.main{
    height:350px ;
}
.board{
    height:60px
}
}
@media screen and  (max-width: 1080px) and (min-width: 768px)  { 
.main{
    height:280px ;
}
.board{
    height:80px
}
}
@media screen and  (max-width: 768px) and (min-width: 600px)  { 
.main{
    height:200px ;
}
.board{
    height:80px
}
}
@media screen and  (max-width: 600px) and (min-width: 400px)  { 
.main{
    height:150px ;
}
.board{
    height:60px
}
}
@media screen and  (max-width: 400px) { 
.main{
    height:100px ;
}
.board{
    height:40px
}
}
input[type=checkbox][name=save]{
width:100%;
height:100%;
position:absolute;
z-index:5;
opacity:0;
cursor:pointer;
}
* {
    margin: 0;
    padding: 0;
    list-style: none;
    font-family:'cwtexyen';
  }
  /*內容調整*/
@keyframes open{
  0%{opacity: 0;}
  100%{opacity:1;}
}
.open{
  animation: open 0.5s;
  animation-fill-mode: forwards;
}

 #chatbar{
position:relative;
right:-10%;
width:80%;
height:50px;
opacity:0;
}
 #submit{
 width:20%;
 height:100%;
 color:white;
 background-color:gray;
 font-size:16px;
 position:absolute;
}
 .photoT{
 width:100%;
 background-color:gray;
 border-radius:50px;
 height:100%;
}
 #chatroom{
 width:80%;
 position:relative;
 right:-10%;
}
.content{
width:60%;
height:80%;
position:relative;
right:-40%;
bottom:80%;
}
.photo{
width:40%;
height:100%;
position:relative;
z-index:5;
}
.p1{
width:80%;
height:80%;
background-color:white;
position:absolute;
margin: 10%;
border-radius:15px;
}
a.buttonT {
    appearance: button;
    background-color:083A64;
    opacity:0.75;
    width:20%;
    height:20%;
    border-radius:5px;
    text-decoration: none;
    color: white;
    text-align:center;
    font-size:36px
}
#chat{
position:absolute;
right:30%;
bottom:15%;
width:15%;
background-color:083A64;
color:white;
height:15%;
border-radius:15px;
}
#url{
position:absolute;
right:10%;
bottom:15%;
width:15%;
background-color:083A64;
color:white;
height:15%;
border-radius:15px;
}
#cute{
    height: 30%;
    width: 20%;
    bottom:10%;
    right: 50%;
}
</style>
</head>
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
            <a href="AssertionID.jsp">會員登入</a>
            </li>
          </ul>
      <div id="link" style="height:100%;position: relative;">
      <h1 id="L1" class="link" style="height:100%;" onclick="location.href='home.jsp'">首頁></h1>
      <h1 id="L2" class="link" style="height: 100%; position: relative; right: -55%; top: -100%; margin-left: 10%; color: white; width: 100%;" onclick="location.href='ForumSet.jsp'">龜龜論壇></h1>
      <h1 id="L3" class="link" style="height: 100%; position: relative; right: -165%; top: -200%; margin-left: 10%; width: 100%; color: white;" onclick="location.href='ForumSetChat.jsp'">留言區</h1></div> 
    </div>
</div>

    <%
try{
    String pwd = null;
    String user = null;
    String id = null;
    user=(String)session.getAttribute("user");
    pwd=(String)session.getAttribute("pwd");
    id = (String)session.getAttribute("id");  
    String driverName = "com.mysql.jdbc.Driver";
    String userName = "hiturtle_shuics_";
    String userPasswd = "HeFJYDAj4kDPMrMN"; 
    String dbName = "hiturtle_shuics_";
    String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="
            + userName + "&password=" + userPasswd;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection ccon = DriverManager.getConnection(url);

    final int nPageLine = 10;  //每頁顯示的資料數量
    int nRowCount4 = 0,nPageCount = 0,nPage = 0;
    String sId="", sRowCnt4 = "", sPage = "";
    ResultSet rs = null;    
    ResultSet rs3 = null;
    ResultSet rs4 = null;

	try{    
                rs3=(ResultSet)session.getAttribute("QUERY3");
                rs4=(ResultSet)session.getAttribute("QUERY4");
                sRowCnt4=(String)session.getAttribute("ROWCOUNT4");
		        nRowCount4 = Integer.parseInt(sRowCnt4);
	}catch(Exception e){ 
		out.print("檢索結果資料存取發生錯誤:"+e.getMessage());
	}
    String URL=rs3.getString("source");
    %> 
        <div id="body" style="width:100%;min-height:90vh;position: relative;">
        <div class="main" style="position:relative;left:10%;background-color:#A6D9EA;border-radius:15px">
            <div class="photo">
                <img src="1/<%=rs3.getString("theme")%>.png" class="p1">
            </div>
            <h1 id="content" style="position:absolute;top:8%;color:black;;right:30%"><%=rs3.getString("title")%></h1>
            <div class="content" style="background-color:#badfeb;border-radius:15px 0px 15px 0px">
                <h2 id="time" style="left:5%;position:absolute;top:5%;color:black;"><%=rs3.getString("content")%></h2>
                <button id="chat">留言</button>
<!--貼圖-->
<%
if(pwd==null){
    %>
    <div id="cute" style="position:absolute">
    <form method="post" action="ForumSetCheck1.jsp" style="width:100%;height:100%;position:absolute">     
     <input type="checkbox" id="save" name="save" value="false" style="color:white" onChange="this.form.submit()">
     <label style="background-repeat: no-repeat;background-size: cover;background-image:url(1/cute.png);width:100%;height:100%;position:absolute;display:flex;z-index:0;"></label>
    </form> 
    </div>
    <%
    }
    else{
                PreparedStatement pcs = ccon.prepareStatement("select * from userchat where user=? and id=?");
                pcs.setString(1,user);
                pcs.setString(2,id);
                ResultSet rcs = pcs.executeQuery();
    if(rcs.next()){
    boolean checkSave= rcs.getBoolean("checkSave");
    if(checkSave==true){
    %>
    <div id="cute" style="position:absolute">
    <form method="post" action="ForumSetCheck1.jsp" style="width:100%;height:100%;position:absolute">     
     <input type="checkbox" id="save" name="save" value="false" style="color:white" onChange="this.form.submit()">
     <label style="background-repeat: no-repeat;background-size: cover;background-image:url(1/cute.png);width:100%;height:100%;position:absolute;display:flex;z-index:0;"></label>
    </form> 
    </div>
    <%
    }
    else{
    %>
    <div id="cute" style="position:absolute">
    <form method="post" action="ForumSetCheck1.jsp" style="width:100%;height:100%;position:absolute">    
     <input type="checkbox" id="save" name="save" value="true" style="color:black" onChange="this.form.submit()">
     <label style="background-repeat: no-repeat;background-size: cover;background-image:url(1/ok.png);width:100%;height:100%;position:absolute;display:flex;z-index:0;"></label>
    </form> 
    </div>
    <%
    }
    }
    else{
    %>
    <div id="cute" style="position:absolute">
    <form method="post" action="ForumSetCheck1.jsp" style="width:100%;height:100%;position:absolute">     
     <input type="checkbox" id="save" name="save" value="false" style="color:white" onChange="this.form.submit()">
     <label style="background-repeat: no-repeat;background-size: cover;background-image:url(1/cute.png);width:100%;height:100%;position:absolute;display:flex;z-index:0;"></label>
    </form> 
    </div>
    <%
    }
    }
%>
</div>
</div>

<!--聊天區-->
<div id="chatbar">
<form  action="ForumSetChatSend.jsp" method="get">
        <input style="width: 80%;height:100%" type="text" style="background-color:#E8E7E7"  name="chat"/>
    <input id="submit" type="submit" value="送出"/>
</form>
</div>
<div id="back" style="position:relative;height:40px;width:100%">
<a id="content" href="ForumSet.jsp" style="text-align:center;text-decoration:none;width:20%;left:40%;position:absolute">回到論壇</a>
</div>
<%
	if(rs4==null)
		response.sendRedirect("ForumSet.jsp");
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

		//計算總頁數
		nPageCount = (nRowCount4+nPageLine-1)/nPageLine;
		if(nPage > nPageCount) nPage = nPageCount;
%>
<h1 style="text-align:center" id="title">資料筆數:<%=nRowCount4%>，頁數:第<%=nPage%>頁/總頁數:<%=nPageCount%>頁</h1>
<hr style="border:none"/>
<hr style="border:none"/>
<div id="chatroom">
<%
       rs4.absolute((nPage-1)*nPageLine+1);   //資料集指標指向此頁的第一筆
       while(nLine <= nMax && !rs4.isAfterLast()){
	  nLine++;
          id=rs4.getString("cid");
          %>
          <div class="board">
            <table boder="1" width="100%">
                <tbody>
                    <tr>
                        <td style="height:100%;width:10%">
                            <div class="head" style="height:100%;width:100%">
                                <img class="photoT" src="P.png">
                            </div>
                        </td>
                        <td style="height:100%;width:30%">
                            <h1 id="title"><%=rs4.getString("user")%></h1>
                        </td>
                        <td style="height:100%;width:60%">
                            <h1 id="content"><%=rs4.getString("chat")%></h1>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
          <%
          rs4.next();
        }
        %>
        </div>
        </div>

        <div style="position:relative;width:50%;height:25px;left:40%">
            <%
            if(nPage > 1)  //顯示上一頁的超連結
            out.print("<a  id=\"content\" href=\"ForumSetChatView.jsp?page="+(nPage-1)+"\">上一頁</a>");
            for (int i=1 ; i<(nPageCount+1) ; i++){
            if(i==nPage){
            out.print("<a  id=\"content\" style=\"padding:1em;color:green\" href=\"ForumSetChatView.jsp?page="+i+"\">"+i+"</a>" );
            }
            else{
            out.print("<a  id=\"content\" style=\"padding:1em\" href=\"ForumSetChatView.jsp?page="+i+"\">"+i+"</a>" );
            }
            }
            if(nPage < nPageCount) //顯示下一頁
            out.print("<a  id=\"content\" href=\"ForumSetChatView.jsp?page="+(nPage+1)+"\">下一頁</a>");
            %>
        </div>
        <%
    }
}catch(Exception e){
            response.sendRedirect("ForumSet.jsp");
       }
%>
        <div id="s17" class="ab"  style="background-color :white;position:relative;z-index: 0;"><!--頁尾-->
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
<script>
  var chatbar = document.getElementById('chatbar')
  jQuery('#chat').click(function(){
  if(chatbar.classList.contains("open")){
  chatbar.classList.remove("open")  
  }
  else{
  chatbar.classList.add("open")  
  }
  })
</script>
<script type="text/javascript" src="js/rwd_headerL3.js"></script>
<script type="text/javascript" src="js/rwd_footer.js"></script>
</html>
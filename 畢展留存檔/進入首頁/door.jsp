<htmL>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<head>
   <meta charset="UTF-8">
   <link rel="icon" href="/tlogo.ico" type="image/x-icon"/>
    <title>歡迎蒞臨龜心塑箭專題網站</title>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/earlyaccess/cwtexyen.css">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/welo.css">
    <script type="text/javascript" src="js/welcome.js"></script>
<style>
.bubbs{height:10%;width:10%;}
.bubbf{font-size:1rem;}
#bubbs1{top:15%;left:5%;}
#bubbs2{top:5%;left:15%;}
#bubbs3{top:5%;right:15%;}
#bubbs4{top:15%;right:5%;}
 @media screen and  (max-width: 768px) { 
.bubbs{height:10%;width:20%;}
.bubbf{font-size:0.5rem;}
#bubbs1{top:15%;left:5%;}
#bubbs2{top:5%;left:15%;}
#bubbs3{top:5%;right:15%;}
#bubbs4{top:15%;right:5%;}
 }
</style>
</head>
<%
        ResultSet rs = null;
	try{    
           rs=(ResultSet)session.getAttribute("QUERY");
	}catch(Exception e){ 
		response.sendRedirect("index.jsp");
	}
	if(rs==null)
		response.sendRedirect("frontpage.jsp");
	else{
%>
    <body onload="fun()">
        <div id="mirror">
            <%rs.absolute(1);%>
            <div class="bubbs" id="bubbs1" style="position:absolute;z-index:6">
            <img style="width:100%;height:100%;position:absolute;top:0;left:0" src="run/bubble0.png">
            <h1 class="bubbf" style="width:100%;height:50%;position:absolute;top:25%;left:0"><%=rs.getString(1)%></h1>
            </div>
            <%rs.absolute(2);%>
            <div class="bubbs" id="bubbs2" style="position:absolute;z-index:6">
            <img style="width:100%;height:100%;position:absolute;top:0;left:0" src="run/bubble0.png">
            <h1 class="bubbf" style="width:100%;height:50%;position:absolute;top:25%;left:0"><%=rs.getString(1)%></h1>
            </div>
            <%rs.absolute(3);%>
            <div class="bubbs" id="bubbs3" style="position:absolute;z-index:6">
            <img style="width:100%;height:100%;position:absolute;top:0;left:0" src="run/bubble0.png">
            <h1 class="bubbf" style="width:100%;height:50%;position:absolute;top:25%;left:0"><%=rs.getString(1)%></h1>
            </div>
            <%rs.absolute(4);%>
            <div class="bubbs" id="bubbs4" style="position:absolute;z-index:6">
            <img style="width:100%;height:100%;position:absolute;top:0;left:0" src="run/bubble0.png">
            <h1 class="bubbf" style="width:100%;height:50%;position:absolute;top:25%;left:0"><%=rs.getString(1)%></h1>
            </div>
            <div id="title" style="position: absolute;left:30%;width:40%;text-align:center;top:15%">
              <h1 id="wel">
                <a style="font-size:28px">歡迎蒞臨龜心塑箭專題網站</a><br><br>
                We are a promotion team for sea turtles conservation.
                Please remember to take a nickname before the journey begins.
             </h1>
            </div>
            <div id="server" style="background-color:#51ACDC;border-radius: 25px;position: absolute">
                <form  action="nickname.jsp" method="get">
                    <input id="putname" placeholder="請輸入姓名" onfocus="this.placeholder=''" onblur="this.placeholder='請輸入姓名'" style="font-family:'cwtexyen';;text-align:center;background-color:#ffffff;width:50%;height:50%;position: absolute;top:25%;left: 10%;border-radius:20px;;color:black"  type = "text"  name="user"/>
                    <input id="conveyname" style="font-family:'cwtexyen';position:absolute;border-radius:20px;color:white;cursor: pointer;" id="submit" type="submit" value="進入網站"/>
                </form>
            </div>
         <div id=back style="background-color: black;width:100%;height:100% ;z-index:10;position: absolute;opacity: 0;"></div>
          <div id="bub" style="position:absolute">
          <img src="run/bubble0.png" id="bubble1" style="position:absolute;z-index: 12;height:5%;width:10%; max-width:100%;left:0%;top:10%;z-index: 5;opacity:0">
          <img src="run/bubble0.png" id="bubble2" style="position:absolute;z-index: 12;height:5%;width:10%; max-width:100%;left:20%;top:20%;z-index: 5;opacity:0">
          <img src="run/bubble0.png" id="bubble3" style="position:absolute;z-index: 12;height:5%;width:10%; max-width:100%;left:30%;top:2%;z-index: 5;opacity:0">
          <img src="run/bubble0.png" id="bubble4" style="position:absolute;z-index: 12;height:5%;width:10%; max-width:100%;left:70%;top:15%;z-index: 5;opacity:0">
          <img src="run/bubble0.png" id="bubble5" style="position:absolute;z-index: 12;height:5%;width:10%; max-width:100%;left:80%;top:40%;z-index: 5;opacity:0">

          <img src="run/bubble0.png" id="bubble6" style="position:absolute;z-index: 12;height:20%;width:20%; max-width:100%;left:70%;bottom:15%;z-index: 5;">
        </div>
    </div>
    </body>
<%
}
%>
    </htmL>
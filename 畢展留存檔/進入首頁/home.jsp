<htmL>
    <head>
      <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %> 
      <%
      String pwd = null;
      String user = null;
      String name = null;
      user=(String)session.getAttribute("user");
      pwd=(String)session.getAttribute("pwd");
      name=(String)session.getAttribute("name");
     %>
              <link rel="icon" href="/tlogo.ico" type="image/x-icon"/>
              <meta charset="UTF-8">
              <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
              <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
              <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
              <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
              <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/earlyaccess/cwtexyen.css">
              <title>龜心塑箭-首頁</title>
              <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
              <meta name="viewport" content="width=device-width, initial-scale=1.0">
              <link rel="stylesheet" type="text/css" href="cs/menu.css">
              <link rel="stylesheet" type="text/css" href="cs/rwd.css">
              <link rel="stylesheet" type="text/css" href="cs/nfontss.css">
            <link rel="stylesheet" type="text/css" href="cs/fontsss.css">
            <link rel="stylesheet" type="text/css" href="cs/carousels.scss">
    </head>
<style>
  .block{
    background-color:#66A2D8;
  }
@media screen and  (max-width: 768px) and (min-width: 0px) { 
body{
overflow-x: hidden
}
}
</style>
    <body  style="z-index:1" onload="fun()">
      <div style="position: fixed;width: 100%;">
      <input type="checkbox" name="" id="menu_control">
        <div class="header">
         <div  id="hello" style="position:relative;left: 10%;height:100%">
         <a id="href" href="https://hiturtle.shuics.tw/maps.jsp" target="_blank" style="position:absolute;height:100%;align-items: center;display: flex;color:black">網站地圖</a>
        <h2 class="logo" style="background-image: url(1/cute.png);background-size: cover;border-radius: 50px;position:absolute;top:10%;height:80%">
         </h2>
        <h1 id="Ji" style="color:rgb(232, 242, 255);font-weight: bolder;position:absolute;top:30%;right:0">歡迎<%out.print(user);%>前來~~</h1>
         </div>
          <label for="menu_control" class="menu_btn">
            <span> 選單 </span>
          </label>
          <nav>
            <a href="AboutSet.jsp">關於海龜</a>
            <a href="DataSet.jsp">塑膠危機</a>
            <a href="ForumSet.jsp">龜龜論壇</a>
            <a href="NewSet.jsp">活動新知</a>
            <a href="GroupSet.jsp">公益團體</a>
            <a href="AssertionID.jsp">會員</a>
          </nav>
          </h2>
          </div>
      </div>
        <div id="Container" style="position: fixed;right: 5%;top:25%">
           <ul id="li" style="display: none">
            <li id='1' style="list-style:disc;font-size:40px;color: #A6D9EA;cursor: pointer;line-height: 1.5;"></li>
            <li id='2' style="list-style:disc;font-size:40px;color: #A6D9EA;cursor: pointer;line-height: 1.5;"></li>
            <li id='3' style="list-style:disc;font-size:40px;color: #A6D9EA;cursor: pointer;line-height: 1.5;"></li>
            <li id='4' style="list-style:disc;font-size:40px;color: #A6D9EA;cursor: pointer;line-height: 1.5;"></li>
            <li id='5' style="list-style:disc;font-size:40px;color: #A6D9EA;cursor: pointer;line-height: 1.5;"></li>
            <li id='6' style="list-style:disc;font-size:40px;color: #A6D9EA;cursor: pointer;line-height: 1.5;"></li>
           </ul>
        </div>
        </div>

        <div id="stool">
        <div id="s1" class="s"  style="background-color :#0473BB;position:relative;z-index: 0">
        <div id="tw" style="left:10%;top:5%;position:absolute;z-index: 1">
        <img src="1/台灣.png" class='png' id="s1left" style="width:70%;height:50%;right:-5%;top:15%;position:absolute;z-index: 1">
        <div id="t1w" class="cellw"><h3 style="margin:3%;color:white">赤蠵龜，分佈於世界各地的海龜。它是一種海洋爬行動物，屬於龜科。完全長大後的平均甲殼長度約為 90 厘米。</h3></div>
        <img src="1/赤蠵龜.png" class='png' id="turtle01" style="transform-origin: 50% 50%;position: absolute;z-index: 2;cursor: pointer;">
        <div id="t2w" class="cellw"><h3 style="margin:3%;color:white">玳瑁海龜是一種極度瀕危的海龜，屬於龜科。該物種在世界範圍內分佈，有大西洋和印度-太平洋亞種。</h3></div>
        <img src="1/玳瑁.png" class='png' id="turtle02">
        <div id="t3w" class="cellw"><h3 style="margin:3%;color:white">棱皮海龜，有稱為琵琶龜或革龜。棱皮海龜是所有現存龜類中最大的，也是最重的非鱷魚爬行動物。長度可達 1.8 米，重達 500 公斤。</h3></div>
        <img src="1/革龜.png" class='png' id="turtle03">
        <div id="t4w" class="cellw"><h3 style="margin:3%;color:white">綠海龜，又稱綠海龜、黑龜或太平洋綠海龜，是海龜科大型海龜的一種。</h3></div>
        <img src="1/綠蠵龜.png" class='png' id="turtle04">
        <div id="t5w" class="cellw"><h3 style="margin:3%;color:white">欖蠵龜是海龜的一種，又稱太平洋欖蠵龜、麗龜、橄龜、姬賴利海龜。<br>牠最大的特色是灰黑色心型背甲，外觀像一顆大橄欖而得名為欖蠵龜。</h3></div>
        <img src="1/欖蠵龜.png" class='png' id="turtle05">
        </div>
        <div id="tword" style="height: 30%;width: 40%;position:absolute">
        <p id='s1p' style="margin-bottom: 5%;font-weight: bold;color: aliceblue;font-family:'cwtexyen';">台灣海域可見到的海龜共有五種</p>
        <h1 style="font-weight: bold;color: aliceblue;">雖然是保育動物<br>但近十年來因為受到台灣產業變化以及人為的影響<br>尤其接近冬季時海龜死傷的事件數就會暴增<br>海洋廢棄物使海龜深受其害</h1>
        </div>
        <div id="word" style="font-weight: bold;color: rgb(0, 0, 0);opacity: 1;;width:20%;height:15%;right:10%;top:15%;position:absolute"> 
        </div>
        <img src="1/OPEN.png" id="s1right" style="height:30%;right:10%;bottom:10%;position:absolute;z-index: 1;">
        <img src="1/箭頭向下.png" id="arrow" style="width:10%;height:20%;right:5%;bottom:35%;position:absolute;z-index: 1;">
        </div>
    
       <div id="s2" class="s" style="background-size:cover;background-image: url(2/s2back.png);background-repeat: no-repeat;background-position: center;position:relative;z-index: 0">
        <img src="page/cli.png" id="click1" style="cursor: pointer;width:10%;height:10%;right:10%;top:20%;position:absolute;z-index:99;">
        <img src="2/雲0.png" id="s2right" style="width:40%;height:40%;right:0%;top:0%;position:absolute;z-index:3;">
        <img src="2/雲.png" id="s2right1" style="width:40%;height:40%;right:0%;top:0%;position:absolute;z-index:2;opacity: 0;">
        <img src="2/垃圾1.png" id="s2right2" style="width:10%;height:15%;right:-20%;top:50%;position:absolute;z-index: 2;">
        <img src="2/垃圾2.png" id="s2right3" style="width:10%;height:15%;right:-30%;top:40%;position:absolute;z-index: 2;">
        <img src="2/垃圾3.png" id="s2right4" style="width:10%;height:15%;right:-20%;top:30%;position:absolute;z-index: 2;">
        <img src="2/垃圾4.png" id="s2right5" style="width:10%;height:15%;right:-40%;top:20%;position:absolute;z-index: 2;">
        <img src="2/垃圾5.png" id="s2right6" style="width:10%;height:15%;right:-20%;top:10%;position:absolute;z-index: 2;">
        <img src="2/垃圾6.png" id="s2right7" style="width:10%;height:15%;right:-30%;top:40%;position:absolute;z-index: 2;">
        <img src="2/垃圾7.png" id="s2right8" style="width:10%;height:15%;right:-20%;top:50%;position:absolute;z-index: 2;">
        <div style="width:50%;height:20%;left:0%;top:10%;position: absolute;z-index: 2;">
        <h1 id="s2h" style="opacity:0;margin:10%;;color:white;z-index: 2;font-family: 'cwtexyen';font-weight: bolder;">2022<br>總共統計出四百多噸的海漂垃圾。</h2>
        </div>
        <img src="2/海龜.png" id="s2turtle" style="position: absolute;left:20%;top:40%;width:20%;height:20%;opacity:0;;z-index: 2;"></img>
        <img src="page/cli.png" id="click2" style="cursor: pointer;width:10%;height:10%;bottom:15%;left:20%;position:absolute;z-index:99;">
        <img src="2/海龜蛋.png" id=pick style="position: absolute;opacity:1;width:40%;height:40%;bottom:0%;left:0%;z-index:2"></img>
       </div>
    
       <div id="s3" class="s" style="background-size:cover;background-image: url(3/s3back.png);background-repeat: no-repeat;background-position: center;position:relative;z-index: 1">
         <img src="3/阿拳.png" id="s3person" style="left: 0%;bottom:10%;width:40%;height:60%;position:absolute;opacity: 1;;">
         <img src="3/egg11.png" id="s3egg" style="right:0%;bottom:0%;width:30%;height:40%;position:absolute;opacity: 0">
         <div id="cover" style="background-size:cover;width:100%;height:100%;position:absolute;background-color:black;opacity:0 ;">
          <div id="covert" style="position: absolute;top:0%;background-size:cover;background-image: url(3/正.png);background-repeat: no-repeat;"></div>
         </div>
         <H1 id="s3word" style="opacity: 0;;color: aliceblue;width:40%;height: 30%;bottom: 40%;right:20% ;position: absolute;">然而在這種惡劣的環境下，沙灘上有隻勇敢的小海龜從蛋殼裡蹦了出來，這時騎著車來到海邊旁放風的阿拳看見了牠。</H1>
       </div>
    
        <div id="s4" class="s" style="background-size:cover;background-image: url(4/back.png);background-repeat: no-repeat;background-position: center;position:relative;z-index: 0">
        <div id="s4turtles2" style="opacity:0;width:30%;height:30%;top:5%;right:0%;position:absolute;">
          <div id="door1" style="cursor:pointer;z-index: 2;;width:20%;height:10%;background-color:#B2FFFA;text-align: center;transform: rotate(55deg);left:30%;bottom:70%;position: absolute;"><h1 id="about">關於海龜</h1></div>
        <img id="s4turtle2" style="width: 100%;height:100%;;z-index: 0;position: absolute;"src="4/turtle1.png" id="s4 turtle">
        </div>
        <div id="s4turtles1" style="width:30%;height:30%;top:5%;right:0%;position:absolute;">
        <img id="s4turtle1" style="width: 100%;height:100%;;z-index: 0;position: absolute;"src="4/turtle1.png" id="s4 turtle">
        </div>
        <H1 id="s4word" style="opacity: 1;;color: aliceblue;width:60%;height: 30%;bottom: 35%;right:20% ;position: absolute;">阿拳看了非常感動，他在遠處一邊聽著海浪拍打的聲音，一邊看顧著游向大海懷抱的小海龜<br>從這一刻起，阿拳深深的迷戀上海龜，也燃起了對於海龜的好奇心</H1>
        <img src="page/cli.png" id="click4" style="cursor:pointer;width:10%;height:10%;top:20%;right:10%;position:absolute;z-index:99;">  
      </div>
        
        <div id="s5" class="s"  style="background-color :#0473BB;position:relative;z-index: 0">
        <img id="cell01" src="5/phone.png" style="height:100%;position: absolute;right: 0%;bottom: -10%;z-index: 1;">
        <img id="cell2" src="5/phone2.png" style="height:100%;position: absolute;right: 0%;bottom: -10%;z-index: 0;">
        <div id="hover" style="cursor: pointer;opacity:0;z-index:3;width:20% ;height:52%;position: absolute;right: 22%;bottom: 18%;background-color: aqua;transform: rotate(-31deg);z-index: 5;"></div>
        <img src="page/cli.png" id="click5" style="width:10%;height:10%;top:60%;right:15%;position:absolute;z-index:99;"> 
        <H1 id="s5-1word" style="opacity: 1;;color: aliceblue;width:30%;height: 30%;bottom: 30%;left:10% ;position: absolute;">所有關於海龜的一切，不管是母龜如何產卵、海龜的生長環境還是生活習性，他都想知道。查看手機後..</H1>
        <H1 id="s5-2word" style="opacity: 0;;color: aliceblue;width:30%;height: 30%;bottom: 30%;left:10% ;position: absolute;">才發覺現實不如他想像的那麼美好，映入眼簾的不是海龜生長的歷程或身體構造，而是一篇又一篇的新聞報導、讓人痛心的照片和影片...</H1>
      </div>
    
        <div id="s6" class="s" style="background-size:cover;background-image: url(6/back.png);background-repeat: no-repeat;background-position: center;position:relative;z-index: 0">
          <H1 id="s6word" style="opacity: 1;;color: aliceblue;width:30%;height: 30%;top: 20%;left:10% ;position: absolute;">看到海龜的生活環境遭到破壞的各種資訊，讓他發現海龜經常受到塑膠垃圾的迫害<br></H1>
          <div id="smilet" style="position: absolute;height: 30%;width: 30%;right: 20%;top:10%;opacity: 0;">
            <img style="width: 100%;height: 100%;" src="6/smile.png">
            <div id="clicks6" style="cursor:pointer;opacity:0;border-radius:50%;background-color:rgb(0, 157, 255);width: 5%;height: 8%;position: absolute;top:20%;right: 77%;"></div>
            <h1 style="opacity: 1;;color: aliceblue;width:100%;height: 10%;top: 90%;left:0% ;position: absolute;color:rgb(255, 255, 255);font-weight: bolder;">小海龜感謝你的幫助</h1>
          </div>
          <div id="sadt" style="position: absolute;height: 30%;width: 30%;right: 20%;top:10%">
            <img style="width: 100%;height: 100%;" src="6/s6turtle.png">
            <div id="clicks6" style="cursor:pointer;opacity:0;border-radius:50%;background-color:rgb(0, 157, 255);width: 5%;height: 8%;position: absolute;top:20%;right: 80%;"></div>
            <h1 style="opacity: 1;;color: aliceblue;width:100%;height: 10%;top: 90%;left:0% ;position: absolute;color:rgb(255, 255, 255);font-weight: bolder;">這隻海龜需要你的協助，請幫忙牠將垃圾撿起</h1>
          </div>
        <img id="trash1" src="6/叉子.png" style="position: absolute;height:15%;width: 10%;left:10%;top:40%;opacity: 0;cursor: pointer;z-index: 4;">
        <img id="trash2"src="6/吸管1.png" style="position: absolute;height:15%;width: 10%;left:20%;top:60%;opacity: 1;z-index: 6;">
        <img id="trash3"src="6/塑膠袋1.png" style="position: absolute;height:15%;width: 10%;left:70%;top:40%;opacity: 0.8;z-index: 6;">
        <img id="trash4"src="6/塑膠袋2.png" style="position: absolute;height:15%;width: 10%;left:35%;top:70%;opacity: 1;z-index: 6;">
        <img id="trash5"src="6/寶特瓶1.png" style="position: absolute;height:15%;width: 10%;left:60%;top:60%;opacity: 0.8;z-index: 6;">
        <img id="trash6"src="6/寶特瓶2.png" style="position: absolute;height:15%;width: 10%;left:50%;top:40%;opacity: 0.8;z-index: 6;">
        <img id="trash11" src="6/抓叉子.png" style="position: absolute;height:15%;width: 10%;left:10%;top:40%;opacity: 1;cursor: pointer;z-index: 4;">
        <img id="trash12"src="6/抓吸管.png" style="position: absolute;height:15%;width: 10%;left:20%;top:60%;opacity: 0;cursor: pointer;z-index: 4;">
        <img id="trash13"src="6/抓塑膠1.png" style="position: absolute;height:15%;width: 10%;left:70%;top:40%;opacity: 0;cursor: pointer;z-index: 4;">
        <img id="trash14"src="6/抓塑膠2.png" style="position: absolute;height:15%;width: 10%;left:35%;top:70%;opacity: 0;cursor: pointer;z-index: 4;">
        <img id="trash15"src="6/抓瓶子.png" style="position: absolute;height:15%;width: 10%;left:60%;top:60%;opacity: 0;cursor: pointer;z-index: 4;">
        <img id="trash16"src="6/抓瓶子2.png" style="position: absolute;height:15%;width: 10%;left:50%;top:40%;opacity: 0;cursor: pointer;z-index: 4;">
        </div>
    
      <div id="s7" class="s"  style="background-color :#3271b6;position:relative;z-index: 0;">
        <H1 id="s7word" style="opacity: 1;;color: aliceblue;width:30%;height: 30%;top: 20%;left:10% ;position: absolute;">阿拳抬頭一看放在桌上的珍珠奶茶和便當，只是日常的一餐，就可能產生出非常多的塑膠垃圾</H1>
        <div id="table"style="width:50%;height:50%;position:absolute;bottom:0;left:15%">
        <img src="7/Bundonm.png" style="width:30%;height:30%;left:20%;top:30%;position:absolute;z-index: 2;">
        <img src="7/pmilk.png" style="width:20%;height:30%;right:20%;top:20%;position:absolute;bottom:30%;z-index: 2;">
        <img src="7/桌子.png" style="width:100%;height:80%;left:0%;position:absolute;bottom:0%;z-index: 1;">
        <img src="7/eat.png" style="width:80%;height:130%;left:10%;position:absolute;bottom:10%;z-index: 0;">
        </div>
        <div id="window"style="width:40%;height:40%;position:absolute;top:10%;right:5%">
          <img src="7/窗.png" style="width:100%;height:100%;top:0%;right:0%;position:absolute;z-index: 2;">
          <img src="7/仙人掌.png" style="width:30%;height:30%;right:50%;top:68%;position:absolute;bottom:0%;z-index: 3;">
          <img id="opend" src="7/放大鏡.png" style="width:30%;height:30%;right:35%;top:55%;position:absolute;bottom:0%;z-index: 4;">
          <img src="page/cli.png" id="click7" style="cursor: pointer;width:20%;height:20%;right:45%;top:70%;position:absolute;z-index:99;">
          <img src="7/垃圾.png" style="width:30%;height:30%;right:30%;top:68%;position:absolute;bottom:0%;z-index: 3;">
          <img id='trash' src="7/垃圾.png" style="width:30%;height:30%;right:25%;top:68%;position:absolute;bottom:0%;z-index: 3;">
        </div>
        <div id="dow" style="opacity:0;background-color:#5cc1ed;width: 40%;height: 40%;position: absolute;top:30%;right: 30%;z-index: 5;">
        <div id="close" style="background-color:#9ed7ef;width: 10%;height: 10%;position: absolute;top:0%;right: 0%;z-index: 5;cursor: pointer;">
        <img src="7.5/x.png" style="width:100%;height:100%">
        </div>
        <img src="7.5/塑膠袋.png" style="width:30%;height:40%;right:42%;top:10%;position:absolute;bottom:0%;z-index: 3;">
        <img src="7.5/吸管.png" style="width:30%;height:40%;right:28%;top:10%;position:absolute;bottom:0%;z-index: 3;">   
        <img src="7.5/寶特瓶.png" style="width:30%;height:40%;right:18%;top:10%;position:absolute;bottom:0%;z-index: 3;">
        <img src="7.5/免洗餐具.png" style="width:30%;height:40%;right:0%;top:10%;position:absolute;bottom:0%;z-index: 3;">   
        <img src="7.5/驚嘆號.png" style="width:10%;height:15%;left:25%;top:10%;position:absolute;bottom:0%;z-index: 3;"> 
        <img src="7.5/海龜.png" style="width:40%;height:40%;left:0%;bottom:25%;position:absolute;z-index: 3;">
        <div style="width:50%;height:40%;position:absolute;right:10%;bottom:10%">
        <H2 id="s7-5word" style="opacity: 1;color: aliceblue;width:100%;height: 100%;position: absolute;">名列前茅的有：塑膠袋、吸管、寶特瓶、免洗餐具等，當然還有一些海龜遭到魚網纏繞而死亡。</H2>
        </div>
      </div>
      </div>
      <div id="s8" class="s" style="background-size:cover;background-image: url(8/back.png);background-repeat: no-repeat;background-position: center;position:relative;z-index: 0">
        <H1 id="s8word" style="font-weight: bolder;opacity: 1;;color: aliceblue;width:30%;height: 30%;bottom: 40%;right:35% ;position: absolute;text-align: center;">更可怕的是垃圾一旦流入海洋<br>就會讓海龜和其他生物受到傷害<br>光是想到這樣，他就覺得很心疼<br>也很難過沒有早一點發現這件事</H1>
        <img src="8/海龜.png" style="width:20%;height:20%;left:15%;bottom:50%;position:absolute;z-index: 3;">
        <img src="8/叉子.png" style="width:10%;height:15%;left:40%;bottom:10%;position:absolute;z-index: 3;">
        <img src="8/叉子3.png" style="width:20%;height:20%;left:0%;bottom:55%;position:absolute;z-index: 3;">
        <img src="8/刀子1.png" style="width:10%;height:15%;left:50%;bottom:25%;position:absolute;z-index: 3;">
        <img src="8/吸管1.png" style="width:10%;height:15%;left:40%;bottom:80%;position:absolute;z-index: 3;">
        <img src="8/吸管2.png" style="width:10%;height:15%;left:5%;bottom:35%;position:absolute;z-index: 3;">
        <img src="8/寶特瓶2.png" style="width:15%;height:15%;left:35%;bottom:30%;position:absolute;z-index: 3;">
        <img src="8/寶特瓶1.png" style="width:15%;height:20%;left:60%;bottom:80%;position:absolute;z-index: 3;">
        <img src="8/塑膠袋1.png" style="width:15%;height:20%;left:80%;bottom:70%;position:absolute;z-index: 3;">
        <img src="8/塑膠袋2.png" style="width:15%;height:20%;left:5%;bottom:75%;position:absolute;z-index: 3;">
        <img src="8/塑膠袋3.png" style="width:15%;height:20%;left:65%;bottom:55%;position:absolute;z-index: 3;">
        <img src="8/湯匙1.png" style="width:10%;height:15%;left:60%;bottom:40%;position:absolute;z-index: 3;">
        <img src="8/湯匙2.png" style="width:10%;height:15%;left:20%;bottom:72%;position:absolute;z-index: 3;">
      </div>
      <div id="s9" class="s"  style="background-size:cover;background-image: url(9/back.png);background-repeat: no-repeat;background-position: center;position:relative;z-index: 0">
        <img src="9/b1.svg" id="bubble1" style="position:absolute;z-index: 12;height:30%;width:10%; max-width:100%;left:0%;top:10%;z-index: 5;">
        <img src="9/b2.svg" id="bubble2" style="position:absolute;z-index: 12;height:40%;width:15%; max-width:100%;left:20%;top:20%;z-index: 5;">
        <img src="9/b3.svg" id="bubble3" style="position:absolute;z-index: 12;height:20%;width:20%; max-width:100%;left:30%;top:2%;z-index: 5;">
        <img src="9/b4.svg" id="bubble4" style="position:absolute;z-index: 12;height:30%;width:15%; max-width:100%;left:70%;top:15%;z-index: 5;">
        <img src="9/b5.svg" id="bubble5" style="position:absolute;z-index: 12;height:30%;width:10%; max-width:100%;left:80%;top:40%;z-index: 5;">
        <img src="9/turtle.png" id="s9turtle" style="position:absolute;z-index: 12;height:30%;width:30%; max-width:100%;left:40%;top:40%;z-index: 5;opacity: 1;">
        <img src="9/smile.png" id="s9smile" style="position:absolute;z-index: 12;height:30%;width:30%; max-width:100%;left:40%;top:40%;z-index: 5;opacity: 1;">
        <H1 id="s9word" style="color: aliceblue;width:30%;height: 30%;bottom: 40%;right:40% ;position: absolute;">於是他下定決心，從日常生活開始做起，每天嘗試著改變自己的壞習慣</H1>
      </div>

      <div id="s10" class="s"  style="background-color :#0473BB;position:relative;z-index: 0">
        <H1 id="s9word" style="text-align: center;opacity: 1;;color: aliceblue;width:35%;height:10%;top:20%;left:15% ;position: absolute;">購買手搖杯也會自行攜帶環保杯<br>減少使用塑膠杯跟吸管</H1>
        <div style="width:35%;height:25%;left:15%;top:30%;position:absolute;z-index: 3;">
          <img src="10/塑膠杯NG.png" style="width:50%;height:80%;left:0%;bottom:10%;position:absolute;z-index: 4;">
          <img src="10/環保杯.png" style="width:50%;height:100%;right:0%;bottom:0%;position:absolute;z-index: 4;">
        </div>
        <div style="width: 35%;height: 20%;border-radius: 5px;left:15%;bottom:15%;background-color: #74b4dd;position: absolute;">
          <H1 id="s10word" style="opacity: 1;;color: aliceblue;width:80%;height: 30%;margin-top:5%;left:15% ;position: absolute;">現在的他，很慶幸做了這樣的決定<br>阿拳雖然知道自己力量有限<br>但也不能就此忽略<br>更應該從自身做起，影響身邊朋友<br>一同成為對環境友善的人類</H1>
        </div>
        <div style="width:30%;height:40%;right:10%;top:12%;position:absolute;z-index: 3;">
          <img src="10/環保袋.png" style="width:80%;height:100%;right:10%;bottom:0%;position:absolute;z-index: 4;">
        </div>
        <div style="width:30%;height:20%;right:10%;bottom:40%;position:absolute;z-index: 3;">
          <h1 id="s9word" style="opacity: 1;;color: gold;width:100%;text-align: center;height: 30%;bottom: 10%;position: absolute;">你也一起來進行環保行動吧!</H1>
        </div>
        <div style="width:30%;height:40%;right:10%;bottom:8%;position:absolute;z-index: 3;">
          <img src="10/人.png" style="width:100%;height:100%;right:0%;bottom:0%;position:absolute;z-index: 4;">
          <div id="s10btn" style="cursor:pointer;"><img src="10/按鈕.png" style="width:50%;height:35%;right:25%;bottom:0%;position:absolute;z-index: 5;"></div>
        </div>
      </div>

      <div id="s11" class="s"  style="background-size:cover;background-image: url(11/11back.png);background-repeat: no-repeat;background-position: center;position:relative;z-index: 0">
        <H1 id="s11word" style="opacity: 1;;color: aliceblue;width:30%;height: 30%;bottom: 40%;right:5% ;position: absolute;">阿拳不但在日常生活中實踐了減塑行動，也積極參與各組織所舉辦的海洋保育活動，認識很多夥伴並且從中更加了解海龜<br><a  target="_blank" style="color: gold," href="tgroup.jsp">了解更多團體！</a></H1>
    
        <div style="width:60%;height:70%;left:5%;bottom:10%;position:absolute">
      <img src="11/組織1.png" style="width:45%;height:60%;left:0%;bottom:5%;position:absolute;z-index: 4;">
      <img src="11/阿拳.png" style="width:55%;height:80%;left:22%;bottom:5%;position:absolute;z-index: 5;">
      <img src="11/組織2.png" style="width:45%;height:60%;left:52%;bottom:5%;position:absolute;z-index: 6;">
      </div> 
      <img src="11/海龜.png" style="width:30%;height:40%;right:0%;bottom:2%;position:absolute;z-index: 6;">
      </div>
      <div id="s12" class="s"  style="background-size:cover;background-image: url(12/12back.png);background-repeat: no-repeat;background-position: center;position:relative;z-index: 0">
        <H1 id="s12word" style="opacity: 1;;color: aliceblue;width:80%;height: 30%;bottom: 55%;right:10% ;position: absolute;">某一天晚上，阿拳再度來到最初與海龜相遇的海邊<br>想碰碰運氣、希望能再看見生命的奇蹟，順便清理沙灘上的垃圾<br>忽然間，他發覺沙灘上有些動靜</H1>
        <img src="12/阿拳.png" style="width:40%;height:60%;right:2%;bottom:15%;position:absolute;z-index: 6;">
        <img src="12/垃圾1.png" style="width:5%;height:10%;right:45%;bottom:5%;position:absolute;z-index: 6;">
        <img src="12/垃圾2.png" style="width:5%;height:10%;right:60%;bottom:15%;position:absolute;z-index: 6;">
        <img src="12/垃圾3.png" style="width:10%;height:15%;right:30%;bottom:10%;position:absolute;z-index: 6;">
        <img id="omg" src="12/驚嘆號.png" style="width:15%;height:20%;left:2%;bottom:5%;position:absolute;z-index: 6;">
        <img src="page/cli.png" id="click12" style="cursor: pointer;width:10%;height:10%;bottom:15%;left:10%;position:absolute;z-index:99;"> 
      </div>
      <div id="s13" class="s"  style="background-size:cover;background-image: url(13/13back.png);background-repeat: no-repeat;background-position: center;position:relative;z-index: 0">
        <img src="13/阿拳.png" style="width:40%;height:60%;right:2%;bottom:15%;position:absolute;z-index: 6;">  
        <H1 id="s13word" style="opacity: 0;;color: aliceblue;width:80%;height: 30%;bottom: 55%;right:10% ;position: absolute;">原本以為只是螃蟹，但仔細一看，驚喜地發現是好幾隻可愛的小東西正在沙灘上努力地前進著<br>阿拳站在遠處滿足的看著小海龜們朝著大海邁進<br>從上次僅看見一隻小海龜，到這次看見了一群，讓阿拳更加堅信只要持續保育海洋環境<br>一定可以讓更多海龜媽媽們願意產卵在沙灘上，也能還給海龜們美麗的海洋</H1>
        <div id="s13turtle" style="width:45%;height:45%;position:absolute;left:0%;bottom:0%;opacity: 0;">
          <img src="13/左前海龜.png" style="width:40%;height:50%;left:10%;bottom:25%;position:absolute;z-index: 6;">
          <img src="13/左後海龜.png" style="width:35%;height:45%;left:5%;bottom:10%;position:absolute;z-index: 7;">
          <img src="13/右後海龜.png" style="width:40%;height:50%;left:25%;bottom:25%;position:absolute;z-index: 7;">
          <img src="13/右前海龜.png" style="width:40%;height:50%;left:25%;bottom:8%;position:absolute;z-index: 8;">
        </div>
      </div>

    </div>


      <div id="s" class="s" style="background-color :#0E58A4;position:relative;z-index: 0">
        <div style="position:absolute;z-index: 4;width: 100%;height: 100%;background-image:url(9/back.png);right: 0%;top:0%;background-size: cover;">
        </div>
        <h1 style="position:absolute;left:40%;bottom:80%">在閱覽網站前可先點擊下方按鈕</h1>
 <a target="_blank" id="start" style="text-decoration:none;text-align:center;background-color:#f7f7f7;cursor:pointer;position:absolute;z-index: 5;width: 40%;height: 20%;left:30% ;top:30%;border-radius: 25px;" href="newfont.jsp">開始故事</a>
        <div id="creature1" style="left: 60%;bottom: 60%;background-image: url(Goti.png);width:20%;height:25%;position: absolute;z-index: 5;background-size: cover;"></div>
    </div>

      <div id="s14" class="s"  style="background-color :#AFD3F9;position:relative;z-index: 0">
        <a target="_blank" id="s1p" style="text-decoration:none;text-align:center;line-height:3;font-weight:bolder;color:aliceblue;margin:auto;border: #1A7DBB;background-color: #1A7DBB;cursor: pointer;;border-radius: 5px;width:20%;height:10%;position: absolute;top:10%;right:40%" href="Go.jsp">龜龜測驗</a>
          <div class="col-6" style="top:30%">           
        <div id="carousel-rwd" class="carousel slide" data-ride="carousel">
          <div class="carousel-inner " style="border-radius:25px">
            <div class="carousel-item  active">
              <div class="rwdimg " style="background-image:url(titokk/Ap.png)"></div>
            </div>
            <div class="carousel-item">
                    <div class="rwdimg" style="background-image:url(titokk/Bp.png)"></div>
            </div>
            <div class="carousel-item">
                    <div class="rwdimg" style="background-image:url(titokk/Cp.png)"></div>
            </div>
            <div class="carousel-item">
                    <div class="rwdimg" style="background-image:url(titokk/Dp.png)"></div>
            </div>
            <div class="carousel-item">
                    <div class="rwdimg" style="background-image:url(titokk/Ep.png)"></div>
            </div>
          </div>
          <a class="carousel-control-prev" href="#carousel-rwd" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carousel-rwd" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
          </div>
        </div>
        </div>
        </div>
      <div id="s15" class="s"  style="background-color :#0E58A4;position:relative;z-index: 0">
        <h5 style="width:100%;height:20%;top:10%;position:absolute;text-align:center">關於我們</h5>
        <div id="imgB" style="border-radius:25px;position:absolute;background-color:rgb(41, 151, 255) ;">
        <input style="cursor: pointer;top:30%;right:0;position: absolute;height:40%;width:10%;z-index: 8;background-color:transparent;border:transparent;border-radius:5px;font-size:2.5rem;color:#AFD3F9" type="button" value=">" class="Bleft">
        <input style="cursor: pointer;top:30%;left:0;position: absolute;height:40%;width:10%;z-index: 8;background-color:transparent;border:transparent;border-radius:5px;font-size:2.5rem;color:#AFD3F9" type="button" value="<" class="Bright">
        <div style="border-radius: 25px;" class="window2"> 
            <div  class="image" id="images2"> 
            <img src="ours/PM0.png" style="width: 100%;height: 100%;flex-shrink: 0;" alt="" /> 
            <img src="ours/m1.png"  style="width: 100%;height: 100%;flex-shrink: 0;" alt="" /> 
            <img src="ours/m2.png"  style="width: 100%;height: 100%;flex-shrink: 0;" alt="" /> 
            <img src="ours/m3.png"  style="width: 100%;height: 100%;flex-shrink: 0;" alt="" /> 
            <img src="ours/m4.png"  style="width: 100%;height: 100%;flex-shrink: 0;" alt="" /> 
            </div> 
        </div> 
        <span style="width:100%;height:10%;position:absolute;bottom:0%;left: 0%;z-index: 12;display: flex;align-items: center;justify-content: center;" id="buttonBs">
                <button id=buttonB style="margin:2%;width:4%;height:60%;border-radius: 100px;"></button>
                <button id=buttonB style="margin:2%;width:4%;height:60%;border-radius: 100px;"></button>
                <button id=buttonB style="margin:2%;width:4%;height:60%;border-radius: 100px;"></button>
                <button id=buttonB style="margin:2%;width:4%;height:60%;border-radius: 100px;"></button>
                <button id=buttonB style="margin:2%;width:4%;height:60%;border-radius: 100px;"></button>
        </span>
    </div>
</div>
 <div id="loading" style="width:100%;height:100%;background-image:url(4/back.png);background-position:center;background-size:cover;position: absolute;z-index: 20;left: 0;top:0">
<style>
#ld{width:30%;height:35%;}
 @media screen and  (max-width: 768px) { 
 #ld{width:50%;height:30%;}
}
</style>   
<div id="ld" style="position: absolute;top:35%">
    <img src="Goti.png" style="width:100%;height:100%;position: absolute;">
   </div>
 </div>
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

<style>
#click1{
opacity: 0;
}
#click2{
opacity: 0;
}
#click4{
opacity: 0;
}
#click5{
opacity: 0;
}
#click7{
opacity: 0;
}
#click12{
opacity: 0;
}
/*箭頭*/
@keyframes arrow{
    0%{transform: translateY(30%);cursor:pointer}
    100%{transform: translateY(100%);cursor:pointer}
}
.arroweffect{
 animation:arrow 1s infinite;
}
/*書本出現*/
@keyframes obook{
    0%{opacity: 0;}
    100%{opacity: 1;z-index: 6;}
}
.obook{
 animation:obook 1s;
 animation-fill-mode:forwards
}

@keyframes os{
    0%{opacity: 0;z-index: 4;}
    100%{opacity: 1;z-index: 6;}
}
.opacitys{
 animation:os 1s;
 animation-fill-mode:forwards
}

/*淡入出現*/
@keyframes o{
    0%{opacity: 0;}
    100%{opacity: 1;}
}
.opacity{
 animation:o 2s;
 animation-fill-mode:forwards
}

@keyframes ow{
    0%{opacity: 0;}
    80%{opacity: 0;}
    100%{opacity: 1;}
}
.opacityw{
 animation:ow 2s;
 animation-fill-mode:forwards
}

/*淡入出現2*/
@keyframes opp{
    0%{opacity: 0;}
    100%{opacity: 1;}
}
.opppacity{
 animation:opp 8s;
 animation-fill-mode:forwards
}
/*淡出消失*/
@keyframes op{
    0%{opacity: 1;}
    100%{opacity: 0;}
}
.op{
 animation:op 1s;
 animation-fill-mode:forwards
}

</style>
    <script>
        window.onload =function fun(){
        var ar = document.getElementById('arrow')
        ar.classList.add("arroweffect")


  }
</script>
<script type="text/javascript" src="js/rwd_footer.js"></script>
<script type="text/javascript" src="js/S1row.js"></script>
<script type="text/javascript" src="js/s1hover.js"></script>
<style>
/*垃圾飄動*/
@keyframes r{
    0%{transform: translateX(-20%);}
    100%{transform: translateX(-800%);}
}
.run{
 animation:r 2s;
 animation-fill-mode:forwards
}
</style>
<script type="text/javascript" src="js/S2clouds.js"></script>
<style>

/*海龜蛋出生動畫*/
@keyframes c{
    0%{opacity: 1;background-color: white;}
    99%{opacity: 1;}
    100%{opacity: 0;}
}
.covery{
 animation:c 4s;
 animation-fill-mode:forwards
}
@keyframes covert{
    0%{opacity: 1;background-image: url(3/正.png);}
    10%{opacity: 1;background-image: url(3/egg2.png);}
    20%{opacity: 1;background-image: url(3/egg3.png);}
    30%{opacity: 1;background-image: url(3/egg4.png);}
    40%{opacity: 1;background-image: url(3/正.png);}
    50%{opacity: 1;background-image: url(3/egg6.png);}
    60%{opacity: 1;background-image: url(3/egg7.png);}
    70%{opacity: 1;background-image: url(3/egg8.png);}
    80%{opacity: 1;background-image: url(3/正.png);}
    90%{opacity: 1;background-image: url(3/egg10.png);}
    100%{opacity: 1;background-image: url(3/egg11.png);}
}
.covert{
 animation:covert 4s;
 animation-fill-mode:forwards
}
@keyframes sword{
  0%{opacity: 0;}
  90%{opacity:0;}
  100%{opacity:1;}
}
.sword{
  animation: sword 4s;
  animation-fill-mode: forwards;
}
.swords{
  animation: sword 5s;
  animation-fill-mode: forwards;
}
</style>
<script type="text/javascript" src="js/S2toS3.js"></script>
<script type="text/javascript" src="js/realscr.js"></script>
<style>

/*海龜移動*/
@keyframes turtlemove{
  0%{ transform:translate(0%,0%)rotate(0deg);opacity:1}
  49%{transform:translate(-150%,300%);}
  50%{transform:translate(-150%,300%)rotate(40deg)}
  51%{transform:translate(-150%,300%)rotate(100deg)}
  99%{transform:translate(-800%,-400%)rotate(100deg)}
  100%{transform:translate(-800%,-400%)rotate(150deg);opacity:1}
}
.turtle1{
 animation:turtlemove 4s;
 animation-fill-mode:forwards;
}
@keyframes turtlemove2{
  0%{transform:translate(-800%,-400%)rotate(150deg);opacity:1}
  50%{transform:translate(-800%,-400%)rotate(150deg)}
  100%{ transform:translate(0%,0%)rotate(0deg);opacity:1}
}
.turtle2{
 animation:turtlemove2 8s ;
 animation-fill-mode:forwards;
}


</style>
<script type="text/javascript" src="js/s4-swim.js"></script>
<style>
/*手機開關*/
@keyframes phover{
  0%{ z-index: 0;opacity: 1;}
  99%{opacity: 1;}
  100%{z-index: 4;opacity: 1;}
}
.phover{
 animation:phover 1s ;
 animation-fill-mode:forwards
}
/*開關放大鏡*/
@keyframes dow{
    0%{opacity: 0;}
    1%{opacity: 1;width: 40%;height: 40%;top:30%;right: 30%;font-size: 12px;}
    100%{opacity: 1;width: 60%;height: 60%;top:20%;right: 20%}
}
.dow{
 animation:dow 1s;
 animation-fill-mode:forwards
}
@keyframes big{
    0%{ transform: scale(1);}
    100%{ transform: scale(1.5);}
}
.big{
 animation:big 1s;
 animation-fill-mode:forwards
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
#imgB{
    width:60%;height:60%;top:20%;right:20%;
}
#covert{
right:25%;
width:50%;
height:80%;
top:10%;
}
h5{
font-size:3.2rem;
}
#s7-5word{
font-size:24px
}
#s2h{
font-size:36px
}
#href{
top:10%;;right:-20%;width:20%
}
#bubble1{
opacity:0
}
#bubble2{
opacity:0
}
#bubble3{
opacity:0
}
#bubble4{
opacity:0
}
#bubble5{
opacity:0
}
#s9word{
opacity:0
}
@media screen and (max-width: 768px) and (min-width: 0px) { 
#imgsB{
    width:60%;height:60%;top:30%;left:20%;
}
#covert{
right:20%;
width:60%;
height:70%;
top:15%;
}
h5{
font-size:1.2rem;
}
#s2h{
font-size:16px
}
#s7-5word{
font-size:10px
}
#href{
top:-5%;;right:45%;width:30%
}
#bubble1{
opacity:1
}
#bubble2{
opacity:1
}
#bubble3{
opacity:1
}
#bubble4{
opacity:1
}
#bubble5{
opacity:1
}
#s9word{
opacity:1
}
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


@keyframes delete{
    100%{opacity: 0;height: 0;visibility: hidden;}
  }
  .delete{
  animation:delete 1s forwards;
  }

  @keyframes loading{
    0%{visibility: visible;}
    90%{visibility: visible;}
    100%{visibility: hidden;}
}
.loading{
 animation: loading 1.2s;
 animation-fill-mode: forwards;
}
@keyframes load{
    0%{overflow:hidden;width: 100%;height: 100%;}
    100%{overflow:hidden;width: 100%;height: 100%;}
}
.load{
 animation: load 1.2s;
}
@keyframes ld{
    0%{left: 100%;}
    100%{left: 0;}
}
.ld{
 animation: ld 1.2s;
}
</style>
<script>
      document.getElementById("ld").classList.add("ld");
      document.getElementById("loading").classList.add("loading");
      document.body.classList.add("load")
      $(document).ready(function(){
        var screenWidth = $(window).width();
        if(screenWidth>=768){
      for (i=1; i < 14; i++) {
        document.getElementById('s'+ i).classList.add("delete")
          }
      document.getElementById("stool").classList.add("delete")
            }
    else{
      document.getElementById("stool").classList.remove("delete")
      for (i=1; i < 14; i++) {
        document.getElementById('s'+ i).classList.remove("delete")
          }
          document.getElementById('s').classList.add("delete")
    }
    $(window).resize(function() {
  var $window = $(window);
    var screenWidth = $(window).width();
    if(screenWidth>=768){
      for (i=1; i < 14; i++) {
        document.getElementById('s'+ i).classList.add("delete")
          }
      document.getElementById("stool").classList.add("delete")
      document.body.classList.add("height")
      document.getElementById('s').classList.remove("delete")
            }
    else{
      document.getElementById("stool").classList.remove("delete")
      document.body.classList.remove("height")
      for (i=1; i < 14; i++) {
        document.getElementById('s'+ i).classList.remove("delete")
          }
          document.getElementById('s').classList.add("delete")
    }
    })
})
</script>
<style>
@keyframes cli{
  0%{opacity: 0;}
    30%{opacity: 0.4}
    60%{opacity: 0.8}
    90%{opacity: 0.4}
    100%{opacity: 0;}
}
.cli{
 animation:cli 1s infinite
}
@media screen and  (max-width: 2180px) and (min-width: 1080px) { 
#start{line-height:3};
}
@media screen and  (max-width: 1080px) and (min-width: 768px) { 
#start{line-height:2};
}
</style>
<script>
  document.getElementById("click1").classList.add("cli")
  document.getElementById("click4").classList.add("cli")
  document.getElementById("click5").classList.add("cli")
  document.getElementById("click7").classList.add("cli")
  document.getElementById("click12").classList.add("cli")
       jQuery('#click1').click(function(){
        this.classList.remove("cli")
        document.getElementById("click2").classList.add("cli")
       })
       jQuery('#click2').click(function(){
        this.classList.remove("cli")
       })
       jQuery('#click5').click(function(){
        this.classList.remove("cli")
       })
       jQuery('#click7').click(function(){
        this.classList.remove("cli")
       })
       jQuery('#click12').click(function(){
        this.classList.remove("cli")
       })
       jQuery('#close').click(function(){
        document.getElementById("click7").classList.add("cli")
       })
</script>
<script type="text/javascript" src="js/S5hover.js"></script>
<script type="text/javascript" src="js/S6catch.js"></script>
<script type="text/javascript" src="js/click.js"></script>
<script type="text/javascript" src="js/S7windows.js"></script>
<script type="text/javascript" src="js/s12scroll.js"></script>
<script type="text/javascript" src="js/n15.js"></script>
</htmL>
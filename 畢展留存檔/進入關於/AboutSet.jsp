<html>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %> 
    <%
     String pwd = null;
     String user = null;
     user=(String)session.getAttribute("user");
     pwd=(String)session.getAttribute("pwd");
    %>
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/earlyaccess/cwtexyen.css">
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>
   <link rel="icon" href="/tlogo.ico" type="image/x-icon"/>
   <title>龜心塑箭-關於海龜</title>
  <link rel="stylesheet" type="text/css" href="cs/rwd.css">
  <link rel="stylesheet" type="text/css" href="css/headers_rwd.css">
</head>
<body  style="width:100%">
    <div style="position: fixed;width: 100%;z-index: 12;"><!--浮動-->
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
          <h1 id="L1" class="link" style="height:100%;" onclick="location.href=home.jsp'">首頁></h1>
          <h1 id="L2" class="link" style="height: 100%; position: relative; right: -65%; top: -100%; margin-left: 10%; color: white; width: 100%;" onclick="location.href='AboutSet.jsp'">關於海龜</h1></div> 
        </div>
    </div>
    
    <div id="title" style="z-index: 10;position: fixed;background-color:#97ceec">
        <div class="btns">
            <button class="btn" id="btn6" style="bottom:0;">海龜</button>
            <button class="btn"id="btn2" style="bottom:0;" >綠蠵龜</button>
            <button class="btn" id="btn3" style="bottom:0;">玳瑁</button>
            <button class="btn" id="btn4" style="bottom:0;" >欖蠵龜</button>
            <button class="btn" id="btn5" style="bottom:0;" >赤蠵龜</button>
            <button class="btn" id="btn1" style="bottom:0;">革龜</button>
        </div>
    </div>
    <!--革龜-->
    <div id="tbtn1" class="content" style="background-color: aqua">
        <div class="class1" style="height: 25%;top:0">
        <img class="Limgboard" src="about/C2.jpg">
        <div class="Rfontboard">
            <h2 class="titlefont">與綠蠵龜相同</h2>
            <h1 class="contentfont">是大洋洄游性物種。這是一件極耗費體力的事情<br>為了準備這漫長的旅程,牠們都是在
            覓食海域吃飽了以後,於次年才會發情<br>而且,有些海龜在產卵洄游期間幾乎
            不進食。</h1>
        </div>
        </div>
        <div class="class2" style="height: 25%;top:25%">
            <img class="Rimgboard" src="about/C3.jpg">
            <div class="Lfontboard">
                <h2 class="titlefont">羞羞配對</h2>
                <h1 class="contentfont">由於目前革龜交配的影像記錄非常稀少<br>牠們如何交配與在哪裡交
                    配往往都還是個謎。</h1>
            </div>
        </div>

        <div class="class3" style="height: 25%;top:50%">
            <img class="Limgboard" src="about/C1.jpg">
            <div class="Rfontboard">
                <h2 class="titlefont">母革龜產下龜蛋後即會回到海中</h2>
                <h1 class="contentfont">母革龜一次可產下七十到一百一十顆
                    蛋<br>經過六七十天才孵化,龜蛋孵化過程可能會被吃掉<br>孵化率約為 63%-76%</h1>
            </div>
        </div>
        <div class="class4" style="height: 25%;top:75%">
            <img class="Rimgboard" src="about/C4.jpg">
            <div class="Lfontboard">
                <h2 class="titlefont">小龜誕生後其體長只有 6-8CM。</h2>
                <h1 class="contentfont">在吃掉大量水母後,其體長
                    可達 1.22 公尺到 1.83 公尺</h1>
            </div>
        </div>
    </div>
    <div id="tbtn2" class="content" style="background-color:#A6D9EA">
        <div class="class1"  id="c1" style="height: 25%;top:0">
            <img class="Limgboard" src="about/A3.jpg">
            <div class="Rfontboard">
                <h2 class="titlefont">綠蠵龜成熟後,會返回出生地交配並繁衍後代</h2>
                <h1 class="contentfont">屬於大洋洄游性物種。<br>這是一件極耗費體力的事情,為了準備這漫長的旅程,牠們都是在
                覓食海域吃飽了以後,於次年才會發情,<br>而且,有些海龜在產卵洄游期間幾乎
                不進食。</h1>
            </div>
        </div>
        <div class="class2"  id="c2" style="height: 25%;top:25%">
            <img class="Rimgboard" src="about/A2.jpg">
            <div class="Lfontboard">
                <h2 class="titlefont">一頭母龜通常和數頭公龜交配<br>(真的是海「龜」,不是海王)</h2>
                <h1 class="contentfont">因此不會有近親繁殖問題。<br>交配期結束後,母龜會上岸產卵<br>公龜則直接返回覓食
                    海域。</h1>
            </div>
        </div>
        <div class="class3"  id="c3" style="height: 25%;top:50%">
            <img class="Limgboard" src="about/A1.jpg">
            <div class="Rfontboard">
                <h2 class="titlefont">產卵的考驗</h2>
                <h1 class="contentfont">水溫達攝氏 25 度、確定沙灘上沒有天敵威脅後,才會開始上岸產
                    卵<br>由於沒有防禦能力,容易受到攻擊<br>所以會選擇夏天夜晚,在人煙稀少的
                    沙灘上產卵。<br>一次可產下約一百顆蛋</h1>
            </div>
        </div>
        <div class="class4"  id="c4"  style="height: 25%;top:75%">
            <img class="Rimgboard" src="about/A4.jpg">
            <div class="Lfontboard">
                <h2 class="titlefont">卵窩中的龜卵經過 46-55 天後<br>孵化出小海龜<br>體長約 4.1 至 5.4
                    公分<br>平均孵化率約 70%。</h2>
                <h1 class="contentfont">稚龜爬出卵窩後會直奔大海,不只綠蠵龜,其他海
                    龜也是如此,牠們判斷回大海之路的方法,一是靠著反射在海面上光爬去,二
                    是往下坡的方向爬,三是避開有形狀的遮蔽物如沙丘或是樹叢。<br>因此產卵沙灘
                    上的光害不僅會嚇走母龜,也會讓稚龜找不到回家的路。</h1>
            </div>
        </div>
    </div>
    <div id="tbtn3" class="content" style="background-color: #0473BB">
        <div class="class1" style="height: 25%;top:0">
            <img class="Limgboard" src="about/B1.jpg">
            <div class="Rfontboard">
                <h2 class="titlefont">它們會回到出生地</h2>
                <h1 class="contentfont">在偏僻島嶼上的蔭蔽礁湖中進行交配<br>
                    屬於大洋洄游性物種。</h1>
            </div>
        </div>
        <div class="class2" style="height: 25%;top:25%">
            <img class="Rimgboard" src="about/B3.jpg">
            <div class="Lfontboard">
                <h2 class="titlefont">雌玳瑁每 2-3 年交配一次</h2>
                <h1 class="contentfont">交配一般在岸邊的淺水中進行,一般是
                    公海龜靜靜地等待母海龜前來<br>而有時公海龜也會追逐母海龜,不過這種情況非常罕見。</h1>
            </div>
        </div>
        <div class="class3" style="height: 25%;top:50%">
            <img class="Limgboard" src="about/B2.jpg">
            <div class="Rfontboard">
                <h2 class="titlefont">玳瑁則會於 7 至 10 月產卵</h2>
                <h1 class="contentfont">玳瑁的卵為白色球形,一次產卵一百
                    二至一百三十顆蛋。<br>在數個小時的產卵過程結束後,雌龜就會返回大海。</h1>
            </div>
        </div>
        <div class="class4" style="height: 25%;top:75%">
            <img class="Rimgboard" src="about/B4.jpg">
            <div class="Lfontboard">
                <h2 class="titlefont">海龜的誕生</h2>
                <h1 class="contentfont">孵化需 2 個月左右,剛出生的玳瑁約 8 至 19.5 克,一般需要 20-
                    30 年才會完全成熟。</h1>
            </div>
        </div>
    </div>
    <div id="tbtn4" class="content" style="background-color: #D7E4F1">
        <div class="class1" style="height: 25%;top:0">
            <img class="Limgboard" src="about/D1.jpg">
            <div class="Rfontboard">
                <h2 class="titlefont">龜(歸)心似箭</h2>
                <h1 class="contentfont">與綠蠵龜相同,是大洋洄游性物種。</h1>
            </div>
        </div>
        <div class="class2" style="height: 25%;top:25%">
            <img class="Rimgboard" src="about/D2.jpg">
            <div class="Lfontboard">
                <h2 class="titlefont">羞羞配對</h2>
                <h1 class="contentfont">無資料顯示欖蠵龜母龜是否與綠蠵龜一樣會和數頭公龜交配以及其
                    交配行為。</h1>
            </div>
        </div>
        <div class="class3" style="height: 25%;top:50%">
            <img class="Limgboard" src="about/D3.jpg">
            <div class="Rfontboard">
                <h2 class="titlefont">每年夏季,欖蠵龜會集體於墨西哥西岸及印度洋沿岸等地產卵</h2>
                <h1 class="contentfont">這場產卵派對規模盛大,在一片沙灘上,幾天內可同時有幾千到上萬隻欖蠵龜
                    一同產卵,每窩數量約一百顆上下<br>也就是說,在短短幾天內的產卵季內,可
                    能就有幾百萬、甚至上千萬顆卵被產下。</h1>
            </div>
        </div>
        <div class="class4" style="height: 25%;top:75%">
            <img class="Rimgboard" src="about/D4.jpg">
            <div class="Lfontboard">
                <h2 class="titlefont">海龜的誕生</h2>
                <h1 class="contentfont">海龜的誕生:龜卵正常需 45 至 50 天才會孵化<br>幼龜剛出生時,長約 43 公厘,
                    至少要 12 到 30 年才能達到成年期。</h1>
            </div>
        </div>
    </div>
    <div id="tbtn5" class="content" style="background-color: rgb(255, 255, 255)">
        <div class="class1" style="height: 25%;top:0">
            <img class="Limgboard" src="about/E1.jpg">
            <div class="Rfontboard">
                <h2 class="titlefont">與其他海龜不同</h2>
                <h1 class="contentfont">赤蠵龜的求偶和交配通常不會在靠近要築巢
                    的海灘進行,而是會在沿著獵場和繁殖地之間遷徙路線上。</h1>
            </div>
        </div>
        <div class="class2" style="height: 25%;top:25%">
            <img class="Rimgboard" src="about/E2.jpg">
            <div class="Lfontboard">
                <h2 class="titlefont">雄龜的求偶形式包括咬、用鼻尖磨蹭、頭和腳的晃動<br>母龜的泄
                    殖腔會分泌訊息素表示具有繁殖能力</h2>
                <h1 class="contentfont">在交配前,公龜會接近母龜並試著爬上
                    母龜的背,而母龜如果抗拒,公龜和母龜會繞著彼此轉圈。<br>如果雄龜有其他競
                    爭對手,母龜會讓公龜相互競爭,勝利者會攀附上母龜的背。</h1>
            </div>
        </div>
        <div class="class3" style="height: 25%;top:50%">
            <img class="Limgboard" src="about/E3.jpg">
            <div class="Rfontboard">
                <h2 class="titlefont">龜卵通常產於高於漲潮線的海灘上,使得幼龜可以輕易回到海
                    裡</h2>
                <h1 class="contentfont">孵化後大多幼龜會在海洋裡的馬尾草團尋求庇護,直到他們長到 45cm。<br>每
                    年 5 ~7 月為繁殖期,雌性交配之後在夜間到海岸沙灘上挖穴產卵,每次產六
                    十至一百五十顆蛋,卵白色球形</h1>
            </div>
        </div>
        <div class="class4" style="height: 25%;top:75%">
            <img class="Rimgboard" src="about/E4.jpg">
            <div class="Lfontboard">
                <h2 class="titlefont">在自然條件下需 60 至 80 天孵出,孵化後長度約 4.6cm</h2>
                <h1 class="contentfont">幼龜通常在夜晚挖開沙子離開巢穴,趁著天色昏暗降低被獵食的可能性,並減少白天
                    沙子溫度太高造成的威脅,並利用月光和星光在海面上的反射閃爍找到大海的
                    方向。</h1>
            </div>
        </div>
    </div>
    <div id="tbtn6" class="content" style="background-color: rgb(152, 255, 245)">
        <div id="CEO" class="class1" style="height: 25%;top:0%;background-color: white;">
            <img style="background-color:#B1E4FF" class="Rimgboard" src="content/cot1.png">
            <div class="Lfontboard">
                <h2 class="titlefont">龜殼的特色</h2>
                <h1 class="contentfont">
            綠蠵龜，背甲形狀呈水滴狀或橢圓狀，有四對側盾及五片中央盾。<br>
            革龜，沒有硬殼背甲，有五道隆起之稜臂<br>
            赤蠵龜，背甲的形狀大多呈水滴狀或橢圓狀，有五對側盾及五片中央盾<br>
            橄欖龜，側盾呈長方形大多六對以上，中央盾較窄小多為五片。<br>
            玳瑁，大多為四對側盾及五片中央盾，邊緣有明顯的鋸齒狀，盾片像屋瓦一般重疊<br></h1>
            </div>
        </div>

        <div id="CEO1" class="class2" style="height: 25%;top:25%;background-color: white;">
            <img class="Cimgboard" src="AOE.png">
            <div style="height:10%;width:60%;bottom:0%;left:20%;position:absolute">
              <h2 style="height:100%;width:100%;text-align:center;color:#51acdc" class="titlefont" >該網頁圖片由海洋生態暨保育研究室提供，感謝其大力協助</h2>
            </div>
        </div>

        <div id="CEO2" class="class3" style="height: 25%;top:50%;background-color: white;">
            <img class="Rimgboard" src="about/EE.jpg">
            <div class="Lfontboard">
                <h2 class="titlefont">海龜大多為雜食性動物</h2>
                <h1 class="contentfont">幼年時期以浮游生物或小型甲殼類、藻類等為主食。<br>長大以後一些海龜的飲食習慣會有所不同，
                    例如玳瑁成年後會生活在珊瑚礁覓食以以海綿、海葵或珊瑚為主，<br>而革龜會隨著陽光往深海移動覓食，
                    熟知的綠蠵龜則以海藻或海草為主食<br>魚類、甲殼類、軟體動物也是覓食選項。</h1>
            </div>
        </div>
        <div id="CEO3" class="class4" style="height: 25%;top:75%;background-color: white;">
            <div class="cfontboard">
                <h2 class="titlefont">各位請注意</h2>
                <h1 class="contentfont">◾除非是專業的海龜人員在照護海龜，一般大眾請勿隨意餵食海龜<br>海龜原本就有自己的自然習性，餵食會扭曲野生動物的覓食習慣<br>
                    ◾不要干擾海龜，距離至少五公尺，且不要使用照明設備，尤其是海龜產卵的夜間<br>
                    ◾不論你在小琉球的哪個角落找到海龜，請大家千萬不要因為好奇去摸他！<br>
                    ◾ 除了不要觸摸海龜，也呼籲大家下海時盡量不要使用防曬乳，有些防曬乳具有有害海洋的化學成分<br>
                    ◾ 如目擊違法接觸海龜的民眾，可錄影拍照存證連絡相關團體<br>
                     通報連絡相關單位:海洋委員會海巡署（撥打海巡專線118）<br>
                    呼籲在觀賞美麗的海洋時，也不要遺留垃圾在沙灘上，這可能是海龜的覓食處、甚至是產卵地，留下的垃圾可能會造成牠們無法想像莫大的傷害</h1>
            </div>
        </div>
    </div>

    <div class="ttns" style="position: fixed;z-index: 11;"> 
        <button class="ttn" id="s1">歸心似箭</button>
        <button class="ttn"id="s2">羞羞配對</button>
        <button class="ttn" id="s3">產卵考驗</button>
        <button class="ttn" id="s4">海龜的誕生</button>
    </div>
    <div style="position:relative;height: 100%;"></div>
    <div id="s15" class="ab"  style="background-color :white;position:relative;z-index: 0;"><!--頁尾-->
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
        * {
    margin: 0;
    padding: 0;
    list-style: none;
    box-sizing: border-box;
    font-family: 'cwtexyen';
}
.Cimgboard{
    width: 75%;height:80%;position: absolute;top:10%;;left:12.5%
}
.cfontboard{
    width: 80%;height:80%;position: absolute;top:10%;;left:10%
}
.Lfontboard{
    width: 30%;height:60%;position: absolute;top:20%;;left:10%
}
.Rfontboard{
    width: 30%;height:60%;position: absolute;top:20%;right:10%
}
.Limgboard{
    width: 40%;height:60%;position: absolute;top:20%;left:10%;
    border-radius: 25px;border-style: solid;
}
.Rimgboard{
    width: 40%;height:60%;position: absolute;top:20%;right:10%;
    border-radius: 25px;border-style: solid;
}
.contentfont{
    color:#1a2d4a;
    font-size: 1.5rem;
    line-height: 40px;
}
.titlefont{
    font-size: 1.8rem;
    margin-bottom: 40px;
}
body{
    height:3000px;
background-color: 97ceec;
}
#title{
    top:90px;;right:5%;width: 90%;height: 110px;
}
.content{
    position: absolute;z-index: 0;width: 90%;height:2600px;top:200px;right:5%;border: solid;
}
.ttns{
    position:absolute;
    left: 0%;
    display: flex;
    flex-direction: column;
    bottom: 5%;
    height: 50%;
}
.ttn{
    width: 65px;
    height: 25%;
    margin-bottom: 15%;
    border: none;
    font-weight: bolder;
    cursor: pointer;
}
.btn{
    width: 5%;
    height: 80px;
    position: absolute;
    background-color: #B1E4FF;
    border-radius: 25px 25px 0 0;
    border:none;
    cursor: pointer;
    color: black;
    font-weight: bolder;
    border-bottom:solid;
    font-size: 1.5rem;
}
.btns{
    display: flex;
    flex-direction: row;
    width: 100%;
    height: 100%;
    border-bottom:solid;
}
.lable{
    background-color:#00A7FF;
    height: 100px;
  }
  #btn6{
        left:0%
    }
    #btn1{
        left:50%
    }
    #btn2{
        left:10%
    }
    #btn3{
        left:20%
    }
    #btn4{
        left:30%
    }
    #btn5{
        left:40%
    }
@media screen and (max-width: 1280px) and (min-width: 1080px){
    .contentfont{
    font-size: 1.4rem;
    line-height: 30px;
}
.titlefont{
    font-size: 1.6rem;
    margin-bottom: 40px;
}
.btn{
    font-size: 1.25rem;
}
}
@media screen and (max-width: 1080px) and (min-width: 768px){
    .contentfont{
    font-size: 1.2rem;
    line-height: 25px;
}
.titlefont{
    font-size: 1.5rem;
    margin-bottom: 30px;
}
.Lfontboard{
    width: 30%;height:40%;top:30%;;left:10%
}
.Rfontboard{
    width: 30%;height:40%;top:30%;right:10%
}
.Limgboard{
    width: 40%;height:40%;top:30%;left:10%;
}
.Rimgboard{
    width: 40%;height:40%;top:30%;right:10%;
}
.btn{
    font-size: 1rem;
    height: 60px;
}
.lable{
    height: 80px;
}
.contentfont{
    font-size: 1.2rem;
    line-height: 20px;
}
.titlefont{
    font-size: 1.4rem;
    margin-bottom: 20px;
}
}
@media screen and  (max-width: 768px) and (min-width: 568px)  { 

    .Lfontboard{
        width: 60%;height:30%;top:55%;left:20%;
}
        .Limgboard{
        width: 60%;height:40%;top:5%;left:20%
}
        .Rfontboard{
        width: 60%;height:30%;top:55%;right:20%;
}
        .Rimgboard{
        width: 60%;height:40%;top:5%;right:20%
}
.btn{
    font-size: 1rem;
    height: 40px;
    width: 10%;
}
#btn6{
        left:0%
    }
    #btn1{
        left:75%
    }
    #btn2{
        left:15%
    }
    #btn3{
        left:30%
    }
    #btn4{
        left:45%
    }
    #btn5{
        left:60%
    }
.lable{
    height: 60px;
}
.contentfont{
    font-size: 1rem;
    line-height: 20px;
}
.titlefont{
    font-size: 1.2rem;
    margin-bottom: 10px;
}
}
    @media screen and  (max-width: 568px) and (min-width: 300px)  {
.Cimgboard{
    width: 75%;height:60%;position: absolute;top:20%;;left:12.5%
} 
        #btn6{
        left:0%
    }
    #btn1{
        left:75%
    }
    #btn2{
        left:15%
    }
    #btn3{
        left:30%
    }
    #btn4{
        left:45%
    }
    #btn5{
        left:60%
    }
        .btn{
    font-size: 0.75rem;
    height: 40px;
    width: 15%;
}
.lable{
    height: 60px;
}
        #title{
            height: 60px;
        }
        .content{
            top:150px
        }
        .ttn{
            width: 50px;
        }
        body{
        height:2000px
        }
        .content{
        height:1600px ;
        }
        .Lfontboard{
        width: 80%;height:30%;top:50%;left:10%;
}
        .Limgboard{
        width: 60%;height:40%;top:5%;left:20%
}
        .Rfontboard{
        width: 80%;height:30%;top:50%;right:10%;
}
        .Rimgboard{
        width: 60%;height:40%;top:5%;right:20%
}
.contentfont{
    font-size: 0.75rem;
    line-height: 20px;
}
.titlefont{
    font-size: 1rem;
    margin-bottom: 5px;
}
    }

.class1{
    position:absolute;width:100%;left: 0;background-color: aliceblue;
}
.class2{
    position:absolute;width:100%;left: 0;background-color: #0473BB;
}
.class3{
    position:absolute;width:100%;left: 0;background-color: #D7E4F1;
}
.class4{
    position:absolute;width:100%;left: 0;background-color: #A6D9EA;
}

    @keyframes move{
    0%{z-index: 0;transform: translate(100px)}
    100%{z-index: 5;transform: translate(0px)}
  }
  .move{
  animation:move 1s;
  animation-fill-mode:forwards
  }
</style>
<script>
    window.onload=
function fun(){
		document.getElementById("btn6").click();
        document.getElementById("s1").click();
}
    var rid ="1"
   jQuery('.btn').click(function(){
    var rid =this.id
    if(rid==6){document.getElementsByClassName("ttns")[0].style.visibility="hidden"}
    else{document.getElementsByClassName("ttns")[0].style.visibility="visible"}
    for (j=1; j < 7; j++) {
        document.getElementById("btn"+ j).classList.remove("lable");
          }
          document.getElementById(rid).classList.add("lable");
    setTimeout(function () {
    for (i=1; i < 7; i++) {
        document.getElementById('tbtn'+ i).classList.remove("move")
          }
    document.getElementById("t" + rid).classList.add("move")
   },250);
})
   jQuery('.ttn').click(function(){
    id = (this.id)
    for (c=1; c < 5; c++) {
        document.getElementById("s" + c).style.backgroundColor="#00A7FF"
          }
          document.getElementById(id).style.backgroundColor="white"
    switch(id){
     case 's1':
     var ch = document.getElementById("CEO").offsetTop
     const options = {
     top: ch,
     left: 0,
     behavior: 'smooth'
     };
     window.scrollTo(options);
     break;
     case 's2':
     var ch1 = document.getElementById("CEO1").offsetTop
     const options1 = {
     top: ch1,
     left: 0,
     behavior: 'smooth'
     };
     window.scrollTo(options1);
     break;
     case 's3':
     var ch2 = document.getElementById("CEO2").offsetTop
     const options2 = {
     top: ch2,
     left: 0,
     behavior: 'smooth'
     };
     window.scrollTo(options2);
     break;
     break;
     case 's4':
     var ch3 = document.getElementById("CEO3").offsetTop
     const options3 = {
     top: ch3,
     left: 0,
     behavior: 'smooth'
     };
     window.scrollTo(options3);
     break;
   }
})
</script>
      <script type="text/javascript" src="js/rwd_footer.js"></script>
      <script type="text/javascript" src="js/rwd_header.js"></script>
</html>

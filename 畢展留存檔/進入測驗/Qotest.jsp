<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<%--<%@ taglib uri="/struts-tags" prefix="s"%>--%>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {margin: 0;padding: 0;list-style: none;box-sizing: border-box;font-family: 'cwtexyen';}
#Turtle{width:27.5%;height:55%;top:5.5%;left:12.5%;border-radius:25px}
#TurtleT0{width:33.5%;height:30%;top:65.5%;left:9.5%;border-radius:25px}
#TurtleT1{width:35%;height:40%;top:2.5%;right:7.5%;border-radius:25px}
#TurtleT2{width:35%;height:40%;top:45%;right:7.5%;border-radius:25px}
#TurtleT3{width:35%;height:10%;top:87.5%;right:7.5%;border-radius:25px}
.font{font-size:1.5rem;width:90%;height:90%;color:white;position:absolute;top:5%;left:5%}
.title{font-size:2.2rem;text-align:center}
.stitle{font-size:1.5rem;text-align:center}
@media screen and  (max-width: 980px) and (min-width: 568px) { 
#Turtle{width:50%;height:25%;top:2.5%;left:25%;}
#TurtleT1{width:90%;height:20%;top:30%;right:5%}
#TurtleT2{width:90%;height:20%;top:52.5%;right:5%}
#TurtleT3{width:90%;height:10%;top:75%;right:5%}
#TurtleT0{width:90%;height:10%;top:87.5%;left:5%}
.font{font-size:1.5rem}
.title{font-size:1.2rem}
.stitle{font-size:1rem}
}
@media screen and (max-width: 568px) and (min-width: 0px)  {
body{height:1022.5px;min-height:100%}
#Turtle{width:70%;height:270px;top:22.5px;left:15%;}
#TurtleT1{width:90%;height:225px;top:315px;right:5%}
#TurtleT2{width:90%;height:225px;top:562.5px;right:5%}
#TurtleT3{width:90%;height:67.5px;top:932.5px;right:5%}
#TurtleT0{width:90%;height:100px;top:810px;left:5%}
.font{font-size:1rem}
.title{font-size:1.2rem}
.stitle{font-size:1rem}
}
</style>
<body style="background-color:#3aa5e0">
     <% 
      String Answer = (String)session.getAttribute("Answer");
if(Answer=="AA"||"AA".equals(Answer)){
%>
<div id="Turtle" style="position:absolute;">
 <img src="titokk/Ap.png" style="width:100%;height:100%;border-radius:25px">
</div>
<div id="TurtleT1" style="background-color:#FF80BF;position:absolute">
<h1 class="font">
外表我不知道，但天真浪漫的你心裡，或許有許多有趣的想法，不管是工作還是嗜好興趣，想到的話就去執行吧，雖然偶爾會遇到不順心的時候，但總是能依靠堅韌的意志咬牙撐過去，不要害怕自己沒有在成長，可能只是自己沒有察覺而已，加油吧！
</h1>
</div>
<div id="TurtleT2" style="background-color:#FF80BF;position:absolute">
<h1 class="font">
玳瑁本身就有寶石的意思，暢游在海洋裡，讓龜甲反射海藍色變的BLING  BLING，是我的愛好！除了特色龜甲，還有可愛的鷹嘴，平常喜歡吃海草，而且我還是唯一可以吃海綿、消化『玻璃』的海龜！
</h1>
</div>
<div id="TurtleT0" style="background-color:#97ceec;position:absolute">

<div style="width:60%;height:30%;position:absolute;top:0;left:20%">
<h1 style="width:100%;height:100%" class="title">結果:玳瑁</h1>
</div>
<div style="width:80%;height:30%;position:absolute;top:35%;left:10%">
<h1 style="width:100%;height:100%;color:red" class="stitle">歡迎跟我聊天><不要講太多話會爆炸</h1>
</div>
<form  style="width:95%;height:20%;position:absolute;bottom:10%;left:2.5%;border-radius:25px" action="QQComment.jsp" method="get">
    <input style="width: 80%;height:100%" type="text" style="background-color:#E8E7E7"  name="comment"/>
    <input style="position:absolute;right:0%;width: 15%;height:100%"  id="submit" type="submit" value="傳遞"/>
</form>
</div>
<%
}
if(Answer=="BB"||"BB".equals(Answer)){
%>
<div id="Turtle" style="position:absolute;">
 <img src="titokk/Bp.png" style="width:100%;height:100%;border-radius:25px">
</div>
<div id="TurtleT1" style="background-color:#8F8C85;position:absolute">
<h1 class="font">
久經沙場，在人際交往之間的舉手投足都能平衡掌握的你，在外人看來也許你冷靜且睿智，是能幫很多人解決困難的大神，但心中一定有許多沉澱在心中後悔的回憶，過去就讓它過去吧，是時候了，偶爾也該思索一下自己的理想目標是什麼，偉大航道在等著你。
</h1>
</div>
<div id="TurtleT2" style="background-color:#8F8C85;position:absolute">
<h1 class="font">
我可是體型最大的海龜！我的頭頂上會有屬於我的獨特粉紅斑點，我一天要吃好多好多的水母，因為我要累積能量才能一直一直在大海中洄游，絕對不是因為我貪吃啦！
</h1>
</div>
<div id="TurtleT0" style="background-color:#97ceec;position:absolute">

<div style="width:60%;height:30%;position:absolute;top:0;left:20%">
<h1 style="width:100%;height:100%" class="title">結果:革龜</h1>
</div>
<div style="width:80%;height:30%;position:absolute;top:35%;left:10%">
<h1 style="width:100%;height:100%;color:red" class="stitle">歡迎跟我聊天><不要講太多話會爆炸</h1>
</div>
<form  style="width:95%;height:20%;position:absolute;bottom:10%;left:2.5%;border-radius:25px" action="QQComment.jsp" method="get">
    <input style="width: 80%;height:100%" type="text" style="background-color:#E8E7E7"  name="comment"/>
    <input style="position:absolute;right:0%;width: 15%;height:100%"  id="submit" type="submit" value="傳遞"/>
</form>
</div>
<%
}
if(Answer=="CC"||"CC".equals(Answer)){
%>
<div id="Turtle" style="position:absolute;">
 <img src="titokk/Cp.png" style="width:100%;height:100%;border-radius:25px">
</div>
<div id="TurtleT1" style="background-color:#48D1CC;position:absolute">
<h1 class="font">
心底善良，與任何人都能和諧相處的你，是大家眼中的避風港，大家都能投向你的懷抱，然而你也是需要一些自己空間的，或許你可能認為自己能夠處理好自己的情緒，但這可能只是把自己不愉快一直悶在心中而已，找個能夠認真陪伴你的人或許會好一點吧，不要太糾結於別人的看法或許會輕鬆一點
</h1>
</div>
<div id="TurtleT2" style="background-color:#48D1CC;position:absolute">
<h1 class="font">
我最喜歡吃肉！魚類、甲殼類、軟體動物都是我的最愛～我雖然體型小，但我可是勇敢的海龜，我們會集體上岸產卵，很特別吧！
</h1>
</div>
<div id="TurtleT0" style="background-color:#97ceec;position:absolute">

<div style="width:60%;height:30%;position:absolute;top:0;left:20%">
<h1 style="width:100%;height:100%" class="title">結果:橄欖龜</h1>
</div>
<div style="width:80%;height:30%;position:absolute;top:35%;left:10%">
<h1 style="width:100%;height:100%;color:red" class="stitle">歡迎跟我聊天><不要講太多話會爆炸</h1>
</div>
<form  style="width:95%;height:20%;position:absolute;bottom:10%;left:2.5%;border-radius:25px" action="QQComment.jsp" method="get">
    <input style="width: 80%;height:100%" type="text" style="background-color:#E8E7E7"  name="comment"/>
    <input style="position:absolute;right:0%;width: 15%;height:100%"  id="submit" type="submit" value="傳遞"/>
</form>
</div>
<%
}
if(Answer=="DD"||"DD".equals(Answer)){
%>
<div id="Turtle" style="position:absolute;">
 <img src="titokk/Dp.png" style="width:100%;height:100%;border-radius:25px">
</div>
<div id="TurtleT1" style="background-color:#57DE91;position:absolute">
<h1 class="font">
今天的你（妳）是否也是活力充沛，準備好去迎接新的挑戰，然而隨著時間，你的熱情可能會因為某些事某些人慢慢被磨損，但你別灰心，好好把握自己的熱情在自己由衷熱愛的事情上面，努力追逐上的過程，可能會比你想要得到的結果還要更美好而重要
</h1>
</div>
<div id="TurtleT2" style="background-color:#57DE91;position:absolute">
<h1 class="font">
我喜歡捕食易取得、不會逃跑的食物（例如：海草），綠色素的累積因而讓我的外表呈現綠色，我也是唯一會上岸曬太陽的海龜，臉部看起來有點傻傻、呆呆的，是海洋世界的萬人迷喔！
</h1>
</div>
<div id="TurtleT0" style="background-color:#97ceec;position:absolute">

<div style="width:60%;height:30%;position:absolute;top:0;left:20%">
<h1 style="width:100%;height:100%" class="title">結果:綠蠵龜</h1>
</div>
<div style="width:80%;height:30%;position:absolute;top:35%;left:10%">
<h1 style="width:100%;height:100%;color:red" class="stitle">歡迎跟我聊天><不要講太多話會爆炸</h1>
</div>
<form  style="width:95%;height:20%;position:absolute;bottom:10%;left:2.5%;border-radius:25px" action="QQComment.jsp" method="get">
    <input style="width: 80%;height:100%" type="text" style="background-color:#E8E7E7"  name="comment"/>
    <input style="position:absolute;right:0%;width: 15%;height:100%"  id="submit" type="submit" value="傳遞"/>
</form>
</div>
<%
}
if(Answer=="EE"||"EE".equals(Answer)){
%>
<div id="Turtle" style="position:absolute;">
 <img src="titokk/Ep.png" style="width:100%;height:100%;border-radius:25px">
</div>
<div id="TurtleT1" style="background-color:#DC143C;position:absolute">
<h1 class="font">
你是至高無尚的存在，也許靠自己單打獨鬥闖下名堂一直是自己的人生目標，然而也是會有自己跨不過的高山，面對這些阻礙你總是咬牙堅持著，但也請你不要忘記你身邊的人，高傲的你不要再對別人害羞了
</h1>
</div>
<div id="TurtleT2" style="background-color:#DC143C;position:absolute">
<h1 class="font">
我最紅！我是赤蠵龜，龜紅是非多，我也被人叫做大頭龜，但我可沒有大頭症！平常吃吃甲殼類和軟體動物悠悠自在~對了！我最喜歡夕陽落下的魔幻時刻，就像我的鱗片一樣橘橘黃黃的。
</h1>
</div>
<div id="TurtleT0" style="background-color:#97ceec;position:absolute">

<div style="width:60%;height:30%;position:absolute;top:0;left:20%">
<h1 style="width:100%;height:100%" class="title">結果:紅蠵龜</h1>
</div>
<div style="width:80%;height:30%;position:absolute;top:35%;left:10%">
<h1 style="width:100%;height:100%;color:red" class="stitle">歡迎跟我聊天><不要講太多話會爆炸</h1>
</div>
<form  style="width:95%;height:20%;position:absolute;bottom:10%;left:2.5%;border-radius:25px" action="QQComment.jsp" method="get">
    <input style="width: 80%;height:100%" type="text" style="background-color:#E8E7E7"  name="comment"/>
    <input style="position:absolute;right:0%;width: 15%;height:100%"  id="submit" type="submit" value="傳遞"/>
</form>
</div>
<%
}
session.setAttribute("Answer", Answer);
%>
</body>
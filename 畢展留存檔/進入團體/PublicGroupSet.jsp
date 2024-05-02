<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
  <meta charset="UTF-8">
   <link rel="icon" href="/tlogo.ico" type="image/x-icon"/>
   <title>龜心塑箭-非政府組織</title>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/earlyaccess/cwtexyen.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.10/vue.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href=" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/headers_rwd.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.room_container{
height:200px
}
#href{
width: 75%;height: 15%;left: 25%;bottom: 0%;
}
.cover{
height: 100%;width: 25%;top:0;left: 0;
}
#write{
height: 20%;width: 20%;top:0;left:28%;
}
#write1{
height: 20%;width: 70%;top:20%;left:28%;
}
#write2{
height: 20%;width: 70%;top:45%;left:28%;
}
* {
    margin: 0;
    padding: 0;
    list-style: none;
    font-family: 'cwtexyen';
  }
.fars{
    font-family: 'cwtexyen';
}
html, body {
  padding: 0;
  margin: 0;
  background-image:url(content/A1.png);
  background-size:cover;
  overflow: auto;
}
h3{
font-weight:border
}
@media screen and (min-width: 768px) {
  html, body {
    height: 100vh;
  }
}
#bo{
width:100%;
}
@media screen and (max-width: 768px) {
#bo{
width:95%;
}
.room_container{
height:400px
}
#href{
width: 100%;height: 15%;left: 0%;bottom: 0%;
}
.cover{
height: 40%;width: 40%;top:20%;left: 0;
}
#write{
height: 30%;width: 40%;top:0;left:45%;
}
#write1{
height: 25%;width: 50%;top:20%;left:45%;
}
#write2{
height: 25%;width: 50%;top:50%;left:45%;
}
}
 .room_container h1{
 font-size:32px;
 font-family: 'cwTeXYen';
 color: #217b38;
 }
 h2{
 font-size: 18px;
 font-family: 'cwTeXYen';
 color: white;
 font-weight:bolder
 }
@media screen and  (max-width: 1400px) and (min-width: 1250px)  { 
 .room_container h1{
 font-size:30px
 }
 .room_container h2{
 font-size: 16px;
 }
}
@media screen and  (max-width: 1250px) and (min-width: 1000px)  { 
 .room_container h1{
 font-size:25px
 }
 .room_container h2{
 font-size: 14px;
 }
}
@media screen and  (max-width: 1000px) and (min-width: 768px)  { 
 .room_container h1{
 font-size:20px
 }
 .room_container h2{
 font-size: 12px;
 }
}
@media screen and  (max-width: 768px) and (min-width: 400px)  { 
 .room_container h1{
 font-size:24px
 }
 .room_container h2{
 font-size: 12px;
 }
}
@media screen and  (max-width: 400px) and (min-width: 0px)  { 
 .room_container h1{
 font-size:24px
 }
 .room_container h2{
 font-size: 10px;
 }
}
</style>
</head>
<%
 String user = null;
 user=(String)session.getAttribute("user");
 String pwd = null;
 pwd=(String)session.getAttribute("pwd");
%>
<body style="background-color:white"><!--整體-->
    <div style="width: 100%;z-index: 5;"><!--浮動-->
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
      <h1 id="L2" class="link" style="height: 100%; position: relative; right: -50%; top: -110%; margin-left: 10%; color: white; width: 100%;" onclick="location.href='GroupSet.jsp'">公益團體></h1>
      <h1 id="L3" class="link" style="height: 100%; position: relative; right: -150%; top: -218%; margin-left: 10%; width: 100%; color: white;" onclick="location.href='PublicGroupSet.jsp'">非政府組織</h1></div> 
</div>
</div>

    <div class="container" id="app">
        <div class="row">
          <div style="height: 100vh;"class="col-lg-12 col-md-12 col_titles"><br/>
            <hr/>
            <div class="row">
              <div  style="padding-bottom: 10%;" class="col_title col-lg-12 col-md-12" v-for="(tit, id) in titles">
                <tit v-bind:title_data="tit" v-bind:id="id"></tit>
              </div>
            </div>
          </div>
        </div>
      </div>
      <template id="titles"> <!--樣板 元件外層只能有一個節點<div>--> 
        <div  style="overflow: hidden;" class="room_container">
          <div id="bo" style="background-color: rgb(81, 193, 211);height:80%;position: absolute;border-radius:5px">
            <div id="href" style="position: absolute;">
            <a style="opacity: 0.75;color:aliceblue;background-color:#083A64;position: absolute;height: 100%;width: 33%;bottom:0;left: 0%;" v-bind:href="title_data.href" v-if="title_data.url.all" target="_blank"><button style="width:100%;height:100%">官方網站</button></a>
            <a style="opacity: 0.75;color:aliceblue;background-color:#083A64;position: absolute;height: 100%;width: 33%;bottom:0;left: 33%;" v-bind:href="title_data.href2" v-if="title_data.url.all" target="_blank"><button style="width:100%;height:100%">活動推廣</button></a>
            <a style="opacity: 0.75;color:aliceblue;background-color:#083A64;position: absolute;height: 100%;width: 34%;bottom:0;left: 66%;" v-bind:href="title_data.href3" v-if="title_data.url.all" target="_blank"><button style="width:100%;height:100%">社群連結</button></a>
            <a style="opacity: 0.75;color:aliceblue;background-color:#083A64;position: absolute;height: 100%;width: 50%;bottom:0;left: 0%;" v-bind:href="title_data.href" v-if="title_data.url.check" target="_blank"><button style="width:100%;height:100%">官方網站</button></a>
            <a style="opacity: 0.75;color:aliceblue;background-color:#083A64;position: absolute;height: 100%;width: 50%;bottom:0;left: 50%;" v-bind:href="title_data.href2" v-if="title_data.url.activity" target="_blank"><button style="width:100%;height:100%">活動推廣</button></a>
            <a style="opacity: 0.75;color:aliceblue;background-color:#083A64;position: absolute;height: 100%;width: 50%;bottom:0;left: 50%;" v-bind:href="title_data.href3" v-if="title_data.url.social" target="_blank"><button style="width:100%;height:100%">社群連結</button></a>
            <a style="opacity: 0.75;color:aliceblue;background-color:#083A64;position: absolute;height: 100%;width: 100%;bottom:0;left: 0%;" v-bind:href="title_data.href" v-if="title_data.url.none" target="_blank"><button style="width:100%;height:100%">官方網站</button></a>
            </div>
          <div style="background-size: contain;background-position: center;background-repeat: no-repeat;background-color: aliceblue;position: absolute;"class="cover" v-bind:style="bg_css"></div>
            <h1 id="write" style="display: flex;align-items: center;position: absolute;">{{title_data.name}}</h1>
            <h2 id="write1" v-html='title_data.contain' style="position: absolute;"></h2>
            <h2 id="write2" v-html='title_data.contain2' style="position: absolute;"></h2>
        </div>
      </div>
      </template>
</body>
<script type="text/javascript" src="js/rwd_headerL3.js"></script>
<script>
    var titles=[
    {
        "name": "玩艸植造",
        "href": "https://www.wondergreener.com/",
        "href3": "https://www.instagram.com/p/Ciu4xc3JeIw/",
        "contain": "<br>從蒲草做的天然吸管出發，我們致力開發與探索植物的各種用途，取代一次性塑膠產品。",
        "contain2": "使用天然艸吸管，不只能讓海龜免於鼻子被插的危害，更是為了我們的環境更加永續，維持良善循環！<br>你也想一起試試艸吸管嗎？點擊下方，了解更多！",
        "writer": "管理員",
        "cover": "content/0001.svg",
        "time": 2022.8,
        "url": {
          "all": false,
          "check": true,
          "social": true,
          "activity": false,
          "none": false
        }
      },
    {
        "name": "仁舟淨塑",
        "href": "https://www.zenzhoultd.com/",
        "href3":"https://www.instagram.com/zenzhou.tw/",
        'href2':"https://www.instagram.com/p/CiR3ksduktu/?igshid=YmMyMTA2M2Y=",
        "contain": "秉持著創新、創意的理念，運用友善環境 、健康的材料為大眾開發 <br>#減塑生活必備 #矽密系列產品，取代不環保的一次性塑膠製品，期望達成 #源頭減塑 的目標！",
        "contain2": "矽密系列真的非常好用！用過一次就讓你愛不釋手，每天出門的口訣變成「鑰匙、手機、錢包、矽密系列！」「讓少數‧變多數」，成為環保小尖兵~ 一起 GO 購購！<br>現在還可以使用龜心塑箭的專屬優惠碼「SHUONLY」！<br>（早餐店叔叔、阿姨還會對你的矽密盒為之瘋狂！）",
        "writer": "管理員",
        "cover": "content/0002.2.svg",
        "time": 2022.8,
        "url": {
            "all": true,
          "check": false,
          "social": false,
          "activity": false,
          "none": false
        }
      },
    {
        "name": "加分誌 My Plus",
        "href": "https://www.myplus.com.tw/",
        "href3":"https://instagram.com/myplusmagazine?igshid=YmMyMTA2M2Y=",
        "contain": "<br>全台最具影響力大學校園雜誌！",
        "contain2": "加分誌刊登大學生感興趣的所有話題！也讓人能夠從網站得到許多有趣、實用的資訊！<br>加分誌：最罩大學生的雜誌！",
        "writer": "管理員",
        "cover": "content/0003.2.svg",
        "time": 2022.8,
        "url": {
            "all": false,
          "check": true,
          "social": true,
          "activity": false,
          "none": false
        }
      },
    {
        "name": "Lab22製夢所",
        "href": "https://www.lab-22.com.tw/",
        "href3":"https://www.instagram.com/p/Cj0cYiXLTKl/",
        "contain": "<br>Lab22製夢所的實驗精神：包含了低碳生活、永續環保、22歲的善良和初心帶著22歲的熱情，將夢中的實驗產物一一實現！",
        "contain2": "Lab22的產物我們都超愛！從XpreSole咖啡鞋到這次的寶特魚三悽鞋真的都太有實驗家精神與熱情了！<br>不論是即將要邁入22歲的我們，或著是正在看這段文字的你！一起努力達成永續生活吧~",
        "writer": "管理員",
        "cover": "content/0004.svg",
        "time": 2022.8,
        "url": {
            "all": false,
          "check": true,
          "social": true,
          "activity": false,
          "none": false
        }
      },
    {
        "name": "極萃精華",
        "href": "https://www.essentia.tw/",
        "href3":"https://www.instagram.com/p/Cjptf_YL-3K/",
        "contain": "極萃精華的理念「源之自然，用於純粹」，堅持將溫和無負擔的自然系保養品帶給消費者，讓肌膚能以健康姿態展示專屬自己的美，同時兼顧動物與環境友善，以尋求人類與自然共存的平衡之道。",
        "contain2": "在使用保養品上，若是能夠選用這類自然系的用品，那麼洗去時，也能降低對於環境的汙染，達成真正的永續價值，感受大自然純粹的美好！<br>（極萃精華還有環保化妝棉，好想帶著一起去旅行~~）",
        "writer": "管理員",
        "cover": "content/0005.svg",
        "time": 2022.8,
        "url": {
            "all": false,
          "check": true,
          "social": true,
          "activity": false,
          "none": false
        }
      },
    {
        "name": "好日子",
        "href": "https://agooday.com/",
        "href3":"https://instagram.com/agoodayhome?igshid=YmMyMTA2M2Y=",
        "contain": "「用設計的力量，讓減塑變得更簡單。」<br>每個人都知道應該要環保，只是不知道該如何在生活中實踐。好日子agooday希望能夠做這個橋樑，設計好用的產品，讓環保從理念落實到每天生活當中，減少製造一次性塑膠垃圾。",
        "contain2": "好日子的設計非常貼心，讓大家都能成為環保小能手！也因為有維持環保的習慣，讓每一天都是好日子！<br>使用食物袋，# 無負擔的把食物帶走 （只用一次的塑膠袋能少一個是一個~）",
        "writer": "管理員",
        "cover": "content/good.png",
        "time": 2022.8,
        "url": {
            "all": false,
          "check": true,
          "social": true,
          "activity": false,
          "none": false
        }
      },
    ];
    //元件
    Vue.component("tit", {
      template: "#titles",
      props: ["title_data", "id"],
      computed: {
        bg_css: function() {
          return {"background-image": "url('"+this.title_data.cover+"')"};
        },
      },
    });
    //子元件data需要是function
    var vm = new Vue({
      el: "#app", //element(綁哪個div)
      data: {   //資料
        titles: titles,
        edit_id: 0,
      },
      methods: {
        addroom: function() {
          this.titles.push({
            "name": "新消息",
            "title2": "New title",
            "contain": 0,
            "writer": 0,
            "cover": "",
            "time": 2022.8,
            "equipment": {
                "wifi": true,
                "bathtub": true,
                "breakfast": false
              }
          });
          this.edit_id = this.titles.length-1;
        },
      },
    });
    </script>
    </html>
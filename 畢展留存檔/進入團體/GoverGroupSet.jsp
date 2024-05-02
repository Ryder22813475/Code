<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
  <meta charset="UTF-8">
   <link rel="icon" href="/tlogo.ico" type="image/x-icon"/>
   <title>龜心塑箭-政府組織</title>
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
height: 20%;width: 40%;top:0;left:28%;
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
width:90%;
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
 font-size:28px;
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
 font-size: 16px;
 }
}
@media screen and  (max-width: 400px) and (min-width: 0px)  { 
 .room_container h1{
 font-size:24px
 }
 .room_container h2{
 font-size: 12px;
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
      <h1 id="L3" class="link" style="height: 100%; position: relative; right: -150%; top: -218%; margin-left: 10%; width: 100%; color: white;" onclick="location.href='GoverGroupSet.jsp'">政府組織</h1></div> 
</div>
</div>

    <div class="container" id="app">
        <div class="row">
          <div style="height: 100vh;"class="col-lg-12 col-md-12 col_titles"><br/>
            <hr/>
            <div class="row">
              <div  style="padding-bottom: 10%;" class="col_title col-lg-6 col-md-6" v-for="(tit, id) in titles">
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
            <a style="opacity: 0.75;color:alicebalue;background-color:#083A64;position: absolute;height: 100%;width: 50%;bottom:0;left: 50%;" v-bind:href="title_data.href3" v-if="title_data.url.com" target="_blank"><button style="width:100%;height:100%">社群連結</button></a>
            <a style="opacity: 0.75;color:aliceblue;background-color:#083A64;position: absolute;height: 100%;width: 100%;bottom:0;left: 0%;" v-bind:href="title_data.href" v-if="title_data.url.none" target="_blank"><button style="width:100%;height:100%">官方網站</button></a>
            </div>
          <div style="background-size:contain;background-position: center;background-repeat: no-repeat;background-color: aliceblue;position: absolute;"class="cover" v-bind:style="bg_css"></div>
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
        "name": "海洋委員會",
        "href": "https://www.oac.gov.tw/ch/index.jsp",
        "contain": "<br>中華民國有關海洋事務的最高主管機關。其負責國家總體海洋政策、海域安全、海岸管理、海洋保育及永續發展、海洋科技研究與海洋文教政策。",
        "contain2": "",
        "writer": "管理員",
        "cover": "content/V1.png",
        "time": 2022.8,
        "url": {
          "all": false,
          "check": false,
          "com": false,
          "activity": false,
          "none": true
        }
      },
      {
      "name": "海洋保育署",
        "href": "https://www.oca.gov.tw/ch/index.jsp",
        "contain": "<br>海洋委員會海洋保育署是中華民國海洋委員會所屬機關，負責海洋生態保育、海洋汙染防治與海洋資源管理",
        "contain2": "",
        "writer": "管理員",
        "cover": "content/V2.png",
        "time": 2022.8,
        "url": {
          "all": false,
          "check": false,
          "com": false,
          "activity": false,
          "none": true
        }
      },
      {
      "name": "海洋研究院",
        "href": "https://www.namr.gov.tw/ch/index.jsp",
        "contain": "<br>海洋委員會國家海洋研究院是中華民國海洋委員會的所屬機構，負責台灣海洋政策規劃、海洋資源調查、海洋科學研究等業務，以及海洋保育與海巡執法人員的教育、訓練、認證及管理。",
        "contain2": "",
        "writer": "管理員",
        "cover": "content/V3.png",
        "time": 2022.8,
        "url": {
          "all": false,
          "check": false,
          "com": false,
          "activity": false,
          "none": true
        }
      },
      {
      "name": "海巡署",
        "href": "http://www.cga.gov.tw/",
        "contain": "中華民國負責海域及海岸巡防之機關，隸屬於海洋委員會的三級機關，負責巡防海岸、領海、鄰接區及專屬經濟海域等，並執行查緝走私貨物和毒品、犯罪逃亡、偷渡等治安事務。主要由警察、軍人、海關人員或其他公務人員組成。",
        "contain2": "",
        "writer": "管理員",
        "cover": "content/V4.png",
        "time": 2022.8,
        "url": {
          "all": false,
          "check": false,
          "com": false,
          "activity": false,
          "none": true
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
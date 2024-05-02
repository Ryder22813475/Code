<htmL>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
      <head>
   <link rel="icon" href="/tlogo.ico" type="image/x-icon"/>
   <title>龜心塑箭-活動新知</title>
            <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/earlyaccess/cwtexyen.css">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.10/vue.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href=" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/headers_rwd.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
    #a:hover{
background-color:#f3f3f3;
}
    #a{
background-color:white;
}
    * {
        margin: 0;
        padding: 0;
        list-style: none;
        font-family:'cwtexyen';
      }
    html, body {
      height: 100vh;
      padding: 0;
      margin: 0;
      background-image:url(content/A.png);
      background-size:cover;
      overflow: auto;
       
    }
.room_container{
height:100px
}
     .container h1{
     font-size:24px
     }
     .container h2{
     font-size: 20px;
     }
     .container h3{
     font-size: 18px;
}
    @media screen and (max-width: 768px) and (min-width: 0px){
      html, body {
        height: 100vh;
        overflow: auto;
      }
      .room_container{
      height:100px
      }
    }
     .container h1{
     font-family: 'cwTeXYen';
     color: black;
     }
     .container h2{
     font-family: 'cwTeXYen';
     color: black;
     }
     .container h3{
     font-family: 'cwTeXYen';
     color: #007bff;
     }
    @media screen and  (max-width: 1400px) and (min-width: 1250px)  { 
     .container h1{
     font-size:20px
     }
     .container h2{
     font-size: 16px;
     }
     .container h3{
     font-size: 16px;
     }
    }
    @media screen and  (max-width: 1250px) and (min-width: 1000px)  { 
     .container h1{
     font-size:18px
     }
     .container h2{
     font-size: 14px;
     }
     .container h3{
     font-size: 14px;
     }
    }
    @media screen and  (max-width: 1000px) and (min-width: 800px)  { 
     .container h1{
     font-size:16px
     }
     .container h2{
     font-size: 14px;
     }
     .container h3{
     font-size: 10px;
     }
    }
    @media screen and  (max-width: 800px) and (min-width: 400px)  { 
     .container h1{
     font-size:14px
     }
     .container h2{
     font-size: 12px;
     }
     .container h3{
     font-size: 10px;
     }
    }
    @media screen and  (max-width: 400px) and (min-width: 0px)  { 
     .container h1{
     font-size:12px
     }
     .container h2{
     font-size: 10px;
     }
     .container h3{
     font-size: 8px;
     }
    }
    #a{
      width: 12%;
      display:block;
    }
    #b{
      width: 20%;
      display:block;
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
      <h1 id="L2" class="link" style="height: 100%; position: relative; right: -65%; top: -110%; margin-left: 10%; width: 100%; color: white;" onclick="location.href='NewSet.jsp'">最新消息</h1></div> 
        </div>
    </div>

        <div class="container" id="app">
            <div class="row">
              <div style="height: 100vh;"class="col-lg-12 col-md-12 col_titles"><br/>
                <hr/>
                <div  class="row">
                  <div  style="padding-bottom: 10%;" class="col_title col-lg-12 col-md-12" v-for="(tit, id) in titles">
                    <tit v-bind:title_data="tit" v-bind:id="id"></tit>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <template id="titles"> <!--樣板 元件外層只能有一個節點<div>--> 
            <div  style="overflow: hidden;" class="room_container">
              <div style="border-radius: 10px;box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);background-color: #A6D9EA;width:90%;height:80%;position: absolute;">
                <div style="width: 72%;height: 20%;position: absolute;right: 10%;bottom: 10%;">
                <button style="opacity: 0.75;color:aliceblue;background-color:#083A64;position: absolute;height: 100%;width: 33%;bottom:0;right: 0%;" class="fas " v-if="title_data.url">關注輿情</button>
                </div>
                <div style="position: absolute;bottom: 10%;right:5%;font-size: 10px;">{{title_data.writer}}</div>
    
              <div style="background-color: white;border-radius: 10px;position: absolute;height: 80%;width: 25%;top:10%;left: 2.5%;background-image: url(1/OPEN.png);background-size: cover"class="cover"></div>
              <div style="position: absolute;height: 50%;width: 60%;top:10%;left:30%;">
              <h1>{{title_data.titles}}</h1>
                <a id="b" style="position: absolute;left:0;bottom: -20%;" v-bind:href="title_data.contain" target="_blank"><h3>了解更多</h3></a>
                <a id="a" style="text-decoration:none;position: absolute;left:0;bottom: -50%;justify-content: center;align-items: center;display: flex;" target="_blank" v-bind:href="title_data.href1"><h3 id="h3" style="margin:0;text-decoration:none;">{{title_data.key1}}</h3></a>
                <a id="a" style="text-decoration:none;position: absolute;left:20%;bottom: -50%;justify-content: center;align-items: center;display: flex;" target="_blank"  v-bind:href="title_data.href2"><h3 id="h3" style="margin:0;text-decoration:none;">{{title_data.key2}}</h3></a>
                <a id="a" style="text-decoration:none;position: absolute;left:40%;bottom: -50%;justify-content: center;align-items: center;display: flex;" target="_blank" v-bind:href="title_data.href3"><h3 id="h3" style="margin:0;text-decoration:none;">{{title_data.key3}}</h3></a>
              </h2>
                </div>  
            </div>
          </div>
          </template>
          </template>
    </body>
    <script type="text/javascript" src="js/rwd_header.js"></script>
    <script>
        var xhr = new XMLHttpRequest()
        var dataUrl= "1211.json"
        xhr.open('GET',dataUrl, true)
        xhr.send()
        xhr.onload = function(){
        var titles = JSON.parse(this.responseText);
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
                "key1": 0,
                "key2": 0,
                "key3": 0,
                "href1": 0,
                "href2": 0,
                "href3": 0,
                "cover": "",
                "time": 2022.8,
                "writer":0,
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
        }
        </script>
        </html>
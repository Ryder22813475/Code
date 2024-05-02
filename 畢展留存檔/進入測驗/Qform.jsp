<htmL>
<%
session.invalidate(); 
%>
    <head>
              <link rel="icon" href="/tlogo.ico" type="image/x-icon"/>
              <meta charset="UTF-8">
              <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/earlyaccess/cwtexyen.css">
              <title>龜心塑箭-首頁</title>
              <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
              <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <style>
        * {
    margin: 0;
    padding: 0;
    list-style: none;
    box-sizing: border-box;
    font-family: 'cwtexyen';
}
.btn{
    width: 60%;
    height: 15%;
    left: 20%;
    text-align: center;
    position:absolute;
    align-items: center;
    display: flex;
}
.btns{
    width: 80%;
    height: 40%;
}
#question{
    width: 100%;
    height: 25%;
    bottom: 75%;
}
#answer{
    width: 100%;
    height: 60%;
    bottom: 5%;
    position: absolute;
    background-color: aliceblue;
}
.visible{
    width: 60%;
    height: 60%;
    top: 10%;
    right:40%;
    position: absolute;
    background-color: aliceblue;
    visibility: visible;
}
.hidden{
    width: 60%;
    height: 60%;
    top: 10%;
    right:40%;
    position: absolute;
    background-color: aliceblue;
    visibility: hidden;
}
@keyframes bubble{
    0%{bottom: 0%;}
    100%{bottom:120%}
}
.bubble{
    animation: bubble 3s infinite;
}
#option1{
top:5%;
position: absolute;
background-color: aqua; 
}
#option2{
top:25%;
position: absolute;
background-color: aqua; 
}
#option3{
top:45%;
position: absolute;
background-color: aqua; 
}
#option4{
top:65%;
position: absolute;
background-color: aqua; 
}
.btn-check{
    visibility: hidden;
}
    </style>
    <body style="min-height:700px;width: 100%;height: 100%;background-image: url(9/back.png);overflow: hidden;background-size: cover;">
        <form action="Qtest.jsp" method="post">

        <div id="questionNo1" class="visible">
        <div id="question">
        <p>請問您平常</p>
        </div>
        <div id="answer">
            <input type="radio" class="btn-check" name="Fuck" id="option01" value="1" autocomplete="off"  checked>
            <label class="btn" id="option1" for="option01">Checked</label>
            
            <input type="radio" class="btn-check" name="Fuck" id="option02" value="2" autocomplete="off"  >
            <label class="btn" id="option2" for="option02">Radio</label>
            
            <input type="radio" class="btn-check" name="Fuck" id="option03" value="3" autocomplete="off" >
            <label class="btn" id="option3" for="option03">Disabled</label>
            
            <input type="radio" class="btn-check" name="Fuck"  id="option04" value="4" autocomplete="off" >
            <label class="btn" id="option4" for="option04">Radio</label>

        <button type="button" style="width: 20%;height:10%;position:absolute;bottom:0;right:40%;z-index:5" class="next" id="1"></button>
        </div>
    </div>

        <div id="questionNo2" class="hidden">
        <div id="question">
            <p>請問您平常</p>
         </div>
         <div id="answer">
            <input type="radio" class="btn-check" name="t1" id="option11" value="1" autocomplete="off"  checked>
            <label class="btn" id="option1" for="option11">Checked</label>
            
            <input type="radio" class="btn-check" name="t1" id="option12" value="2" autocomplete="off"  >
            <label class="btn" id="option2" for="option12">Radio</label>
            
            <input type="radio" class="btn-check" name="t1" id="option13" value="3" autocomplete="off" >
            <label class="btn" id="option3" for="option13">Disabled</label>
            
            <input type="radio" class="btn-check" name="t1"  id="option14" value="4" autocomplete="off" >
            <label class="btn" id="option4" for="option14">Radio</label>

        <button  style="width: 20%;height:10%;position:absolute;bottom:0;right:40%;z-index:5" class="End" id="End"></button>
        </div>
    </div>

    </form>
    <div id="bubble" style="background-image:url(9/b.png);position: absolute;width: 10%;height: 20%;background-size: cover;bottom: -20%;"></div>
    </body>
    <script>
        document.getElementById("bubble").classList.add("bubble")
        jQuery('.next').click(function(){
            for (i=1; i < 3; i++) {
            document.getElementById('questionNo'+ i).setAttribute("class", "hidden"); 
              }
        var object = parseInt(this.id)+1
        var obj = parseFloat(object);
        document.getElementById('questionNo'+ obj).setAttribute("class", "visible"); 
        })
        jQuery('.btn').click(function(){
            for (i=1; i < 5; i++) {
            document.getElementById('option'+ i).style.backgroundColor='aqua';
            }
            this.style.backgroundColor="black"
        })

    </script>
</htmL>

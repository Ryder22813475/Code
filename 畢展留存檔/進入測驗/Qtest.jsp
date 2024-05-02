<htmL>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
    <%--<%@ taglib uri="/struts-tags" prefix="s"%>--%>

        <head>
                  <link rel="icon" href="/tlogo.ico" type="image/x-icon"/>
                  <meta charset="UTF-8">
                  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/earlyaccess/cwtexyen.css">
                  <title>龜心塑箭-首頁</title>
                  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
                  <meta name="viewport" content="width=device-width, initial-scale=1.0">
        </head>
    <%      
        try{  
               ResultSet rs = null;
    
        try{    
               rs=(ResultSet)session.getAttribute("QUERY");
        }catch(Exception e){ 
            response.sendRedirect("Go.jsp");
        }
	if(rs==null)
		response.sendRedirect("Go.jsp");
      else{
    %>
        <style>
            * {
        margin: 0;
        padding: 0;
        list-style: none;
        box-sizing: border-box;
        font-family: 'cwtexyen';
    }
    .btn{
        width: 50%;
        height: 15%;
        left: 25%;
        position:absolute;
        text-align: center;
        display: block;
        font-size: 1.8rem;
        background-color: #7ab4ff;
        border-style:none;
       line-height:2;
    }
    .onbtn{
        width: 60%;
        height: 15%;
        left: 20%;
        position:absolute;
        text-align: center;
        display: block;
        font-size: 2.5rem;
        background-color:#bfdbff;
        border-style:solid;
       line-height:1.5;
    }
    .btns{
        width: 80%;
        height: 40%;
    }
    #question{
        width: 100%;
        height: 15%;
        bottom: 85%;
        position:absolute;
        font-size: 2.2rem;
    }
    #answer{
        width: 100%;
        height: 75%;
        bottom: 5%;
        position: absolute;
    }
    .visible{
        width: 60%;
        height: 80%;
        top: 10%;
        right:20%;
        position: absolute;
        visibility: visible;
    }
    .hidden{
        width: 60%;
        height: 80%;
        top: 10%;
        right:20%;
        position: absolute;
        visibility: hidden;
    }
    @media screen and  (max-width: 768px){
        #question{font-size: 1.4rem;}
        .btn{font-size: 1.0rem;line-height:3;width: 70%;height: 15%;left: 15%;}
        .onbtn{font-size: 1.1rem;width: 80%;height: 15%;left: 10%;;line-height:3}
        .visible{width: 80%;right:10%}
    }
    @keyframes bubble{
        0%{bottom: 0%;}
        100%{bottom:120%}
    }
    .bubble{
        animation: bubble 3s infinite;
    }
    .btn-check{
        visibility: hidden;
    }
        </style>
        <body style="min-height:700px;width: 100%;height: 100%;background-image: url(9/back.png);overflow: hidden;background-size: cover;">
            <form action="OOQQ.jsp" method="get">
    <!--題目1-->
            <div id="questionNo1" class="visible">
            <div id="question">
    <%
        rs.absolute(1);   
        %>
            <p><%=rs.getString(2)%></p>
            </div>
            <div id="answer">
                <input type="radio" class="btn-check" name="Q0" id="option01" value="<%=rs.getString(3)%>" autocomplete="off"  checked>
                <label class="btn" id="option1-1" for="option01"><%=rs.getString(4)%></label>
                
                <input type="radio" class="btn-check" name="Q0" id="option02" value="<%=rs.getString(5)%>" autocomplete="off"  >
                <label class="btn" id="option1-2" for="option02"><%=rs.getString(6)%></label>
                
                <input type="radio" class="btn-check" name="Q0" id="option03" value="<%=rs.getString(7)%>" autocomplete="off" >
                <label class="btn" id="option1-3" for="option03"><%=rs.getString(8)%></label>
                
                <input type="radio" class="btn-check" name="Q0"  id="option04" value="<%=rs.getString(9)%>" autocomplete="off" >
                <label class="btn" id="option1-4" for="option04"><%=rs.getString(10)%></label>
    
            <button type="button" style="width: 20%;height:10%;position:absolute;bottom:0;right:40%;z-index:5" class="next" id="1">下一題</button>
            </div>
        </div>
<!--題目2-->
        <div id="questionNo2" class="hidden">
            <div id="question">
    <%
    rs.absolute(2);
        %>
            <p><%=rs.getString(2)%></p>
            </div>
            <div id="answer">
                <input type="radio" class="btn-check" name="Q1" id="option11" value="<%=rs.getString(3)%>" autocomplete="off"  checked>
                <label class="btn" id="option2-1" for="option11"><%=rs.getString(4)%></label>
                
                <input type="radio" class="btn-check" name="Q1" id="option12" value="<%=rs.getString(5)%>" autocomplete="off"  >
                <label class="btn" id="option2-2" for="option12"><%=rs.getString(6)%></label>
                
                <input type="radio" class="btn-check" name="Q1" id="option13" value="<%=rs.getString(7)%>" autocomplete="off" >
                <label class="btn" id="option2-3" for="option13"><%=rs.getString(8)%></label>
                
                <input type="radio" class="btn-check" name="Q1"  id="option14" value="<%=rs.getString(9)%>" autocomplete="off" >
                <label class="btn" id="option2-4" for="option14"><%=rs.getString(10)%></label>
    
            <button type="button" style="width: 20%;height:10%;position:absolute;bottom:0;right:25%;z-index:5" class="next" id="2">下一題</button>
            <button type="button" style="width: 20%;height:10%;position:absolute;bottom:0;left:25%;z-index:5" class="previous" id="02">上一題</button>
            </div>
        </div>

<!--題目3-->
        <div id="questionNo3" class="hidden">
            <div id="question">
    <%
    rs.absolute(3);
        %>
            <p><%=rs.getString(2)%></p>
            </div>
            <div id="answer">
                <input type="radio" class="btn-check" name="Q2" id="option21" value="<%=rs.getString(3)%>" autocomplete="off"  checked>
                <label class="btn" id="option3-1" for="option21"><%=rs.getString(4)%></label>
                
                <input type="radio" class="btn-check" name="Q2" id="option22" value="<%=rs.getString(5)%>" autocomplete="off"  >
                <label class="btn" id="option3-2" for="option22"><%=rs.getString(6)%></label>
                
                <input type="radio" class="btn-check" name="Q2" id="option23" value="<%=rs.getString(7)%>" autocomplete="off" >
                <label class="btn" id="option3-3" for="option23"><%=rs.getString(8)%></label>
                
                <input type="radio" class="btn-check" name="Q2"  id="option24" value="<%=rs.getString(9)%>" autocomplete="off" >
                <label class="btn" id="option3-4" for="option24"><%=rs.getString(10)%></label>
    
            <button type="button" style="width: 20%;height:10%;position:absolute;bottom:0;right:25%;z-index:5" class="next" id="3">下一題</button>
            <button type="button" style="width: 20%;height:10%;position:absolute;bottom:0;left:25%;z-index:5" class="previous" id="03">上一題</button>
            </div>
        </div>

<!--題目4-->
        <div id="questionNo4" class="hidden">
            <div id="question">
    <%
    rs.absolute(4);
        %>
            <p><%=rs.getString(2)%></p>
            </div>
            <div id="answer">
                <input type="radio" class="btn-check" name="Q3" id="option31" value="<%=rs.getString(3)%>" autocomplete="off"  checked>
                <label class="btn" id="option4-1" for="option31"><%=rs.getString(4)%></label>
                
                <input type="radio" class="btn-check" name="Q3" id="option32" value="<%=rs.getString(5)%>" autocomplete="off"  >
                <label class="btn" id="option4-2" for="option32"><%=rs.getString(6)%></label>
                
                <input type="radio" class="btn-check" name="Q3" id="option33" value="<%=rs.getString(7)%>" autocomplete="off" >
                <label class="btn" id="option4-3" for="option33"><%=rs.getString(8)%></label>
                
                <input type="radio" class="btn-check" name="Q3"  id="option34" value="<%=rs.getString(9)%>" autocomplete="off" >
                <label class="btn" id="option4-4" for="option34"><%=rs.getString(10)%></label>
    
            <button type="button" style="width: 20%;height:10%;position:absolute;bottom:0;right:25%;z-index:5" class="next" id="4">下一題</button>
            <button type="button" style="width: 20%;height:10%;position:absolute;bottom:0;left:25%;z-index:5" class="previous" id="04">上一題</button>
            </div>
        </div>

<!--題目5-->
        <div id="questionNo5" class="hidden">
            <div id="question">
    <%
    rs.absolute(5);
        %>
            <p><%=rs.getString(2)%></p>
            </div>
            <div id="answer">
                <input type="radio" class="btn-check" name="Q4" id="option41" value="<%=rs.getString(3)%>" autocomplete="off"  checked>
                <label class="btn" id="option5-1" for="option41"><%=rs.getString(4)%></label>
                
                <input type="radio" class="btn-check" name="Q4" id="option42" value="<%=rs.getString(5)%>" autocomplete="off"  >
                <label class="btn" id="option5-2" for="option42"><%=rs.getString(6)%></label>
                
                <input type="radio" class="btn-check" name="Q4" id="option43" value="<%=rs.getString(7)%>" autocomplete="off" >
                <label class="btn" id="option5-3" for="option43"><%=rs.getString(8)%></label>
                
                <input type="radio" class="btn-check" name="Q4"  id="option44" value="<%=rs.getString(9)%>" autocomplete="off" >
                <label class="btn" id="option5-4" for="option44"><%=rs.getString(10)%></label>
    
            <button type="button" style="width: 20%;height:10%;position:absolute;bottom:0;right:25%;z-index:5" class="next" id="5">下一題</button>
            <button type="button" style="width: 20%;height:10%;position:absolute;bottom:0;left:25%;z-index:5" class="previous" id="05">上一題</button>            
</div>
        </div>
        </div>

<!--題目6-->
        <div id="questionNo6" class="hidden">
            <div id="question">
    <%
    rs.absolute(6);
        %>
            <p><%=rs.getString(2)%></p>
            </div>
            <div id="answer">
                <input type="radio" class="btn-check" name="Q5" id="option51" value="<%=rs.getString(3)%>" autocomplete="off"  checked>
                <label class="btn" id="option6-1" for="option51"><%=rs.getString(4)%></label>
                
                <input type="radio" class="btn-check" name="Q5" id="option52" value="<%=rs.getString(5)%>" autocomplete="off"  >
                <label class="btn" id="option6-2" for="option52"><%=rs.getString(6)%></label>
                
                <input type="radio" class="btn-check" name="Q5" id="option53" value="<%=rs.getString(7)%>" autocomplete="off" >
                <label class="btn" id="option6-3" for="option53"><%=rs.getString(8)%></label>
                
                <input type="radio" class="btn-check" name="Q5"  id="option54" value="<%=rs.getString(9)%>" autocomplete="off" >
                <label class="btn" id="option6-4" for="option54"><%=rs.getString(10)%></label>
    
            <button type="button" style="width: 20%;height:10%;position:absolute;bottom:0;right:25%;z-index:5" class="next" id="6">下一題</button>
            <button type="button" style="width: 20%;height:10%;position:absolute;bottom:0;left:25%;z-index:5" class="previous" id="06">上一題</button>
            </div>
        </div>

<!--題目7-->
<div id="questionNo7" class="hidden">
    <div id="question">
<%
rs.absolute(7);
%>
    <p><%=rs.getString(2)%></p>
    </div>
    <div id="answer">
        <input type="radio" class="btn-check" name="Q6" id="option61" value="<%=rs.getString(3)%>" autocomplete="off"  checked>
        <label class="btn" id="option7-1" for="option61"><%=rs.getString(4)%></label>
        
        <input type="radio" class="btn-check" name="Q6" id="option62" value="<%=rs.getString(5)%>" autocomplete="off"  >
        <label class="btn" id="option7-2" for="option62"><%=rs.getString(6)%></label>
        
        <input type="radio" class="btn-check" name="Q6" id="option63" value="<%=rs.getString(7)%>" autocomplete="off" >
        <label class="btn" id="option7-3" for="option63"><%=rs.getString(8)%></label>
        
        <input type="radio" class="btn-check" name="Q6"  id="option64" value="<%=rs.getString(9)%>" autocomplete="off" >
        <label class="btn" id="option7-4" for="option64"><%=rs.getString(10)%></label>

    <button type="button" style="width: 20%;height:10%;position:absolute;bottom:0;right:25%;z-index:5" class="next" id="7">下一題</button>
    <button type="button" style="width: 20%;height:10%;position:absolute;bottom:0;left:25%;;z-index:5" class="previous" id="07">上一題</button>
    </div>
</div>

<!--題目8-->
            <div id="questionNo8" class="hidden">
            <div id="question">
    <%
    rs.absolute(8);
        %>
                <p><%=rs.getString(2)%><br><p style="color:red">數值越高表示失落程度越高</p></p>
             </div>
             <div id="answer">
                <input type="radio" class="btn-check" name="Q7" id="option71" value="<%=rs.getString(3)%>" autocomplete="off"  checked>
                <label class="btn" id="option8-1" for="option71"><%=rs.getString(4)%></label>
                
                <input type="radio" class="btn-check" name="Q7" id="option72" value="<%=rs.getString(5)%>" autocomplete="off"  >
                <label class="btn" id="option8-2" for="option72"><%=rs.getString(6)%></label>
                
                <input type="radio" class="btn-check" name="Q7" id="option73" value="<%=rs.getString(7)%>" autocomplete="off" >
                <label class="btn" id="option8-3" for="option73"><%=rs.getString(8)%></label>
                
                <input type="radio" class="btn-check" name="Q7"  id="option74" value="<%=rs.getString(9)%>" autocomplete="off" >
                <label class="btn" id="option8-4" for="option74"><%=rs.getString(10)%></label>
            <button type="button" style="width: 20%;height:10%;position:absolute;bottom:0;left:25%;;z-index:5" class="previous" id="08">上一題</button>
            <button  style="width: 20%;height:10%;position:absolute;bottom:0;right:25%;z-index:5" class="End" id="End">送出</button>
            </div>
        </div>
    
        </form>
         <style>
          #bubble{width: 10%;height: 20%}
          #bubble002{width: 10%;height: 20%}
         @media screen and  (max-width: 768px) { 
         #bubble{width: 15%;height: 10%}
         #bubble002{width: 15%;height: 10%}
         }
         </style>
        <div id="bubble" style="position: absolute;bottom: -20%;left:0">
        <img src="9/b.png" style="width:100%;height:100%">
        </div>
        <div id="bubble002" style="position: absolute;bottom: -20%;right:0">
        <img src="9/b.png" style="width:100%;height:100%">
        </div>
        </body>
        <script>
    /*原始設定*/
    for (i=1; i < 9; i++) {
                    for (n=1; n < 5; n++) {
                document.getElementById('option'+ i +'-' + 4).style.top="65%";
                document.getElementById('option'+ i +'-' + 3).style.top="45%";
                document.getElementById('option'+ i +'-' + 2).style.top="25%";
                document.getElementById('option'+ i +'-' + 1).style.top="5%";
                }
            }
    
            document.getElementById("bubble").classList.add("bubble")
            document.getElementById("bubble002").classList.add("bubble")
            jQuery('.next').click(function(){
                    for (j=1; j < 9; j++) {
                document.getElementById('questionNo'+ j).setAttribute("class", "hidden"); 
                }
            var object = parseInt(this.id)+1
            var obj = parseFloat(object);
            document.getElementById('questionNo'+ obj).setAttribute("class", "visible"); 
            })

            jQuery('.previous').click(function(){
                    for (j=1; j < 9; j++) {
                document.getElementById('questionNo'+ j).setAttribute("class", "hidden"); 
                }
            var object = parseInt(this.id)-1
            var obj = parseFloat(object);
            document.getElementById('questionNo'+ obj).setAttribute("class", "visible"); 
            })
    
            /*click變化*/
            jQuery('.btn').click(function(){
                for (i=1; i < 9; i++) {
                    for (n=1; n < 5; n++) {
                document.getElementById('option'+ i +'-' + n).setAttribute("class", "btn");
                }
            }
                this.setAttribute("class","onbtn")
            })
            /*hover變化*/
            jQuery('.btn').mouseover(function(){
                this.style.opacity="0.6"
            })
            jQuery('.btn').mouseout(function(){
                this.style.opacity="1"
            })
        </script>
    <%
      }
session.invalidate(); 
}
catch(Exception e){ 
            response.sendRedirect("Go.jsp");
        }
    %>
    </htmL>
    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="${path}/resources/js/chat.js"></script>

<script>

var w_number;
var passward;

function Gocontent(w_number,passward){
	//alert( passward);
	if(passward !=null){
		var inpput = prompt("비밀번호를 입력해주세요");	
		if(inpput==passward){
			//alert("성공");
			window.location.href="/koala/showDetail?w_number=" + w_number;
		}else{
			alert("비밀번호가 다릅니다.");
		}
	}else{
		window.location.href="/koala/showDetail?w_number=" + w_number;
	}

}

function linkBoard(){
	window.location.href="/koala/board";
	
}

</script>

<style>

@import url('https://fonts.googleapis.com/css?family=Jua:400');
*{
	margin: 0;
	padding: 0;
	font-family: Jua;
}

section{
	display: bolck;
	margin: 0px auto;
	width: 1250px;
	
	
}




.slide_wrap, .slide_wrap2{
	position: relative;
	width: 1200px;
	margin: 0 auto;
	height: 270px;
	overflow:hidden;	
}
#slide_btn_wrap, #slide_btn_wrap2{
	width: 1250px;
	position: relative;
	margin: 50px 0px;
}



.slides, .slides2{
	width:100%;
	position: absolute;
	left: 0; top: 0;
	margin: auto;
	
	
	
	
}

.slides.animated, .slides2.animated2{
	transition: 0.5s ease-out;
}

.slides li, .slides2 li{
	width: 200px;
	height: 270px;
	background: #ccc;
	float: left;
	list-style: none;
}

.slides li:not(:last-child), .slides2 li:not(:last-child){
	margin-right: 20px;
	margin-left: 20px;
	
}

.controls, .controls2{
	text-align: center;
	margin-top: 50px;
}

.contrals span, .contrals2 span{
	width: 50px;
	height: 50px;
	background-color: black;
}

.prev, .prev2{	
	height: 270px;
	width: 40px;
	position: absolute;
	//background-color: red; 
	top:0px;
	font-size: 40px;
	text-align: center;
	line-height: 270px;
	cursor:pointer;
	
}	

.next, .next2{	
	height: 270px;
	width: 40px;
	position: absolute;
	right: 0px; top:0px;
	font-size: 40px;
	text-align: center;
	line-height: 270px;
	cursor:pointer;
}	

#section_01{
	width: 1250px;
	height: 500px;
	//background-color: green;
	display: flex;
	flex-wrap: wrap;
}
#six_books{
	width: 410px;
	height: 250px;
	//border: 1px solid black;
	margin: auto;
	display: flex;
	//line-height: 250px;
}

#section_02{
	width: 1250px;
	//height: 500px;
	//background-color: red;
	margin-bottom: 80px;
	display: flex;
}

#six_books img{
	margin-top: 50px;
	width: 100px;
	height: 130px;
	//border: 1px solid black;
	
}

#ranking_div{
	width: 80px;
	height: 100%;
	//background-color: gray;
	font-size: 30px;
	font-weight: bolder;
	line-height: 250px;
	text-align: center;
}

#info_div{
	width: 184px;
	height: 100%;
	//background-color: blue;

}
#info_div h2{
	margin-top: 80px;
}
#img_div{
	width: 120px;
	height: 100%;
	//background-color: red;
	margin-left: 20px;
}
#list_box th{
	border-bottom: 1px solid black; 
}

h1 a{
	text-decoration: none;
	color: black;
}

#chatArea {
    width: 500px; 
    height: 180px; 
    overflow-y: auto; 
    border: 1px solid black;
    
    margin: auto;
    margin-top: 20px;
    
}

.send{
    border-bottom :1px solid gray; 
    text-align:right;
    padding:10px;
    
 }
 
 .recv{
    border-bottom :1px solid gray; 
    color:blue;
    text-align:left;
    padding:10px;
 }
 
 #write_message{
 	width: 500px; 
 	height: 30px;
 	//background-color: red;
 	margin: auto;
 }
</style>
</head>
<body>
<%@ include file ="header.jsp" %>
<input type ="text" value ="${userid }" style="display: none;" id ="chat_userID">


<section>

<h1 style="margin: 30px 0px 0px 50px;"> <a href ="#"> < Koala가 추천하는 오늘의 도서! > </a></h1>


<div id ="slide_btn_wrap">
	<div class ="slide_wrap">
		<ul class = "slides">
		
			<li>slide 01</li>
			<li>slide 02</li>
			<li>slide 03</li>
			<li>slide 04</li>
			<li>slide 05</li>
			<li>slide 06</li>
		</ul>
	</div>
	<div class = "prev">
		<	
	</div>
	<div class = "next">
		>
	</div>
</div>
<!-- 밑에 스크립트 옮기지 말것 슬라이드 밑에있으면 적용이 안되요ㅠㅠ -->

<script src="${path}/resources/js/slide.js"></script>

<h1 style="margin: 30px 0px 0px 50px;"><a href = "#"> < 따끈따끈한 신간도서! > </a></h1>

<div id ="slide_btn_wrap2">
	<div class ="slide_wrap2">
		<ul class = "slides2">
		
			<li>slide 01</li>
			<li>slide 02</li>
			<li>slide 03</li>
			<li>slide 04</li>
			<li>slide 05</li>
			<li>slide 06</li>
		</ul>
	</div>
	<div class = "prev2">
		<	
	</div>
	<div class = "next2">
		>
	</div>
</div>
<!-- 밑에 스크립트 옮기지 말것 슬라이드 밑에있으면 적용이 안되요ㅠㅠ -->

<script src="${path}/resources/js/slide2.js"></script>

<h1 style="margin: 30px 0px 0px 50px;"><a href="#"> < 베스트 셀러 > </a></h1>

<div id ="section_01">

	<div id ="six_books">
	
		<!-- 이미지url -->
		<div id ="img_div">
			<img src="https://cdn.icon-icons.com/icons2/265/PNG/512/JPG_29711.png">
		</div>
		<!-- 랭킹 들어갈 div-->
		<div id ="ranking_div">1</div>
		
		<!-- 제목, 저자, 별정 들어갈 div -->
		<div id ="info_div">
			<h2>너는 내운명</h2>
			<p>임영빈</p>
			<span>★( 7 )</span>
		</div>
		

	</div>
	
	<div id ="six_books">
	
		<!-- 이미지url -->
		<div id ="img_div">
			<img src="https://cdn.icon-icons.com/icons2/265/PNG/512/JPG_29711.png">
		</div>
		<!-- 랭킹 들어갈 div-->
		<div id ="ranking_div">1</div>
		
		<!-- 제목, 저자, 별정 들어갈 div -->
		<div id ="info_div">
			<h2>너는 내운명</h2>
			<p>임영빈</p>
			<span>★( 7 )</span>
		</div>
		

	</div>
	
	<div id ="six_books">
	
		<!-- 이미지url -->
		<div id ="img_div">
			<img src="https://cdn.icon-icons.com/icons2/265/PNG/512/JPG_29711.png">
		</div>
		<!-- 랭킹 들어갈 div-->
		<div id ="ranking_div">1</div>
		
		<!-- 제목, 저자, 별정 들어갈 div -->
		<div id ="info_div">
			<h2>너는 내운명</h2>
			<p>임영빈</p>
			<span>★( 7 )</span>
		</div>
		

	</div>
	
	<div id ="six_books">
	
		<!-- 이미지url -->
		<div id ="img_div">
			<img src="https://cdn.icon-icons.com/icons2/265/PNG/512/JPG_29711.png">
		</div>
		<!-- 랭킹 들어갈 div-->
		<div id ="ranking_div">1</div>
		
		<!-- 제목, 저자, 별정 들어갈 div -->
		<div id ="info_div">
			<h2>너는 내운명</h2>
			<p>임영빈</p>
			<span>★( 7 )</span>
		</div>
		

	</div>
	
	<div id ="six_books">
	
		<!-- 이미지url -->
		<div id ="img_div">
			<img src="https://cdn.icon-icons.com/icons2/265/PNG/512/JPG_29711.png">
		</div>
		<!-- 랭킹 들어갈 div-->
		<div id ="ranking_div">1</div>
		
		<!-- 제목, 저자, 별정 들어갈 div -->
		<div id ="info_div">
			<h2>너는 내운명</h2>
			<p>임영빈</p>
			<span>★( 7 )</span>
		</div>
		

	</div>
	
	<div id ="six_books">
	
		<!-- 이미지url -->
		<div id ="img_div">
			<img src="https://cdn.icon-icons.com/icons2/265/PNG/512/JPG_29711.png">
		</div>
		<!-- 랭킹 들어갈 div-->
		<div id ="ranking_div">1</div>
		
		<!-- 제목, 저자, 별정 들어갈 div -->
		<div id ="info_div">
			<h2>너는 내운명</h2>
			<p>임영빈</p>
			<span>★( 7 )</span>
		</div>
		

	</div>
	
	



</div>

<h1 style="margin: 30px 0px 30px 50px;"> < 게시판, 소통의 광장 ></h1>

<div id ="section_02">

	<div id ="list_box" style="width: 50%; height: 100%; position:relative ; ">

		<table style="width: 100%; height: 100%">
	
		<tr>
			<th style="height: 30px;">아이디</th>
			<th style="height: 30px;">제목</th>
			<th style="height: 30px;">날짜</th>
		</tr>
		
		
		<c:forEach var="str" items = "${list2}" varStatus = "st" >
			<tr style="text-align: center;">
				<td style="height: 30px;">${ str.userID}</td>
				<td><a href="javascript:Gocontent(${str.w_number},${str.passward });">${ str.title}</a></td>
				<td>${ str.writeday}</td>
			</tr>
		</c:forEach>
		</table>
		
		<a href ="javascript:linkBoard();" style="right: 10px; position: absolute;">더보기</a>
	
	</div>
	
	
	<div id ="chatting" style="width:50%; height:300px; ">
	
		<div id="chatArea"><div id="chatMessageArea"></div></div>
	    <br/>
	    
	    <div id ="write_message">
	    	<input type="text" id="message" class="enterBtn" style="width:80%; height: 100%;">
	    	<input type="button" id="sendBtn" value="전송" style="width: 17%; height: 34px; background-color: white; border: 0.5px solid black; border-radius: 4px;">
		</div>
	</div>
	
	

</div>


	




</section>



<%@ include file="footer.jsp"%>
</body>

</html>
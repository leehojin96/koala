<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
 <link
    rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
	charset="utf-8"></script>
<script>
	let imgNames = [ "blue", "green", "red", "black" ];

	let next = 0;
	function left() {
		let slide = document.querySelector("#slide");
		next--;

		if (next < 0) {
			next = imgNames.length - 1; //
			//next = next+imgNames.length;
		}

		slide.style.backgroundColor = imgNames[next];//"url('"+imgNames[next]+"')";
		slide.style.backgroundPosition = "center";
		slide.style.backgroundSize = "cover";
	}

	function right() {
		let slide = document.querySelector("#slide");
		next++;

		if (next > imgNames.length - 1) {
			next = imgNames.length - imgNames.length;
		}

		slide.style.backgroundColor = imgNames[next]; //"url('"+imgNames[next]+"')";
		slide.style.backgroundPosition = "center";
		slide.style.backgroundSize = "cover";

	}

	window.onload = function change() {
		let slide = document.querySelector("#slide");
		next++;

		setTimeout(change, 2000);//1초에 한번씩 실행

		if (next > imgNames.length - 1) {
			next = imgNames.length - imgNames.length;
		}

		slide.style.backgroundColor = imgNames[next];

	}
	
	 window.addEventListener("load", function(){
	        // alert("load");
	        new Swiper(  '.swiper' ,  {
	                        slidesPerView:3 ,   //슬라이드 개수
	                        spaceBetween :10 ,  // 슬라이드 사이의 여백
	                        centeredSlides:true,   // 가운데시작여부
	                        loop:true,            //반복
	                        autoplay: {            //2초 간격으로 자동재생
	                            delay: 2000
	                        },
	                        pagination: {                  //하단 페이지부분
	                            el: '.swiper-pagination' ,
	                            clickable: true           //클릭여부
	                        },
	                    // Navigation arrows
	                        navigation: {               // 이전 버튼, 다음버튼 
	                            nextEl: '.swiper-button-next',
	                            prevEl: '.swiper-button-prev',
	                        }     
	                    });



	    });

</script>

<style>
section {
	width: 1250px;
	height: 800px;
	display: flex;
	margin: 0 auto;
}

section .section_wrap {
	width: 1250px;
	height: 800px;
}

section .right_menu {
	position: fixed;
	right: 5%;
}

section .right_menu img {
	width: 60px;
	height: 60px;
	filter: drop-shadow(0px 3px 5px #81c147);
}

.slide {
	width: 1250px;
	height: 300px;
	border: 1px solid white;
	background-color: green;
	background-size: cover;
	background-position: center;
	display: flex;
	margin: auto;
	margin-top: 50px;
	z-index: 2;
}

.left {
	width: 50%;
	height: 100%;
}

.right {
	width: 50%;
	height: 100%;
}


</style>
</head>
<body>



	<section>

		<div class="right_menu">
			<a href="<c:url value='/mypageenter' />"><img
				src="https://contents.kyobobook.co.kr/resources/fo/images/common/ink/btn_header_my@2x.png"></a>
		</div>





		<div class="section_wrap">
			<div id="slide" class="slide">
				<div onclick="left()" class="left"></div>
				<div onclick="right()" class="right"></div>
			</div>
		</div>

		<div class="swiper">
			<!-- Additional required wrapper -->
			<div class="swiper-wrapper">
				<!-- Slides -->
				<div class="swiper-slide">1
					<img src="" alt="">
				</div>
				<div class="swiper-slide">2
					<img src="" alt="">
				</div>
				<div class="swiper-slide">3
					<img src="" alt="">
				</div>
				...
			</div>
			<!-- If we need pagination -->
			<div class="swiper-pagination"></div>

			<!-- If we need navigation buttons -->
			<div class="swiper-button-prev"></div>
			<div class="swiper-button-next"></div>

		</div>

	</section>

	<%@ include file="footer.jsp"%>
</body>



=======
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
    border-radius: 20px;
    margin: auto;
    margin-top: 20px;
}

.send{
    border:1px solid gray; 
    text-align:right;
    padding:10px;
    
 }
 
 .recv{
    border:1px solid yellow;
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

<h1 style="margin: 30px 0px 0px 50px;"> < 게시판, 소통의 광장 ></h1>

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
>>>>>>> refs/heads/ver3.1
</html>
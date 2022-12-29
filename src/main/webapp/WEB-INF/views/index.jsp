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



</html>
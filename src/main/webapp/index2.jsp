<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
        let imgNames =[
        	"blue",
            "green",
            "red",
            "black"
        ];

        let next = 0;
        function left(){
            let slide =  document.querySelector("#slide");
            next--;

            if(next<0){
                next = imgNames.length-1;  //
                //next = next+imgNames.length;
            }

            slide.style.backgroundColor = imgNames[next];//"url('"+imgNames[next]+"')";
            slide.style.backgroundPosition = "center";
            slide.style.backgroundSize="cover";
        }

        function right(){
            let slide =  document.querySelector("#slide");
            next++;

            if(next>imgNames.length-1){
                next = imgNames.length-imgNames.length;
            }

            slide.style.backgroundColor = imgNames[next]; //"url('"+imgNames[next]+"')";
            slide.style.backgroundPosition = "center";
            slide.style.backgroundSize="cover";

        }
        
        window.onload = function change() {
        	let slide =  document.querySelector("#slide");
        	next++;
        	
        	setTimeout(change, 2000);//1초에 한번씩 실행
        	
        	if(next>imgNames.length-1){
                next = imgNames.length-imgNames.length;
            } 
        	
        	slide.style.backgroundColor = imgNames[next];
       	
        }
        
       
    	
    	$(document).ready(function(){
    		$(".menu").mouseenter(function(){
    			$(".menu").stop().animate(
    				{height:"280px"},300,'swing'		
    			);
    			$(".header_sl").stop().animate(
        				{height:"280px"},300		
        			);
    			$(".header_section").stop().animate(
        				{height:"280px"},300		
        			);
    			$(".header_wrap").stop().animate(
        				{height:"280px"},300		
        			);
    			$("header").stop().animate(
        				{height:"280px"},300		
        			);
    			$(".submenu").show();
    		});
    			
    			
    		$(".header_sl").mouseleave(function(){
    			$(".menu").stop().animate(
        				{height:"65px"},500	
        			);
        			$(".header_sl").stop().animate(
            				{height:"80px"},300		
            			);
        			$(".header_section").stop().animate(
            				{height:"160px"},300		
            			);
        			$(".header_wrap").stop().animate(
            				{height:"160px"},300		
            			);
        			$("header").stop().animate(
            				{height:"160px"},300
            			);
        			$(".submenu").hide();
    		});
    			
    			
    			
    	});
    	
    	
        
        
        

    </script>


<style>
@import url('https://fonts.googleapis.com/css?family=Jua:400');
	*{
		margin:0px;
		padding:0px;
	}
	header{
		width:1250px;
		height:160px;
		margin:0 auto; 
		padding-bottom:10px;
		border-bottom: 1px solid green;

	}
	.header_wrap{
		display:flex;
	}
	.header_logo{
		width:300px;
		height:160px;
		/*border:1px solid black; */
		
		
	}
	.header_logo img{
		width:300px;
		height:160px;
		
		
	}
	.header_login {
		width:948px;
		height:45px;
		/*border:1px solid black; */
	}
	
	header .header_sl {
		width:948px;
		height:80px;
		/*border:1px solid black; */
		margin-top:30px;
		display:flex;
	}

	header .header_section .header_login{
		text-align:right;
	}
	
	header .header_section .header_login .home_icon{
		width:12px;
		height:12px;
		margin-right:5px;

	}
	
	header .header_section .header_login span{
		margin-left:4px;
		margin-right:4px;
		line-height:40px;
		color:gray;
		font-size:11px;
		font-weight:bold;
	}
	
	header .header_section .header_login span a{
		text-decoration: none;
		font-size:15px;
		color:gray;
		font-family:Jua;
		font-weight:lighter;
	}

	header .header_section .header_sl .searchbar{
		width:210px;
		height:35px;
		margin:13px 0 0 295px;
		display:flex;
		border: 2px solid lightgray;
		border-radius: 20px;
		padding-left:20px;
		padding-top:10px;
		
	}
	header .header_section .header_sl .searchbar input{
		height:27px;
		width:140px;
		border: none;
        outline: 0;
 		font-size:15px;
 		padding-left:10px;
	}
	header .header_section .header_sl .list{
		width:730px;
	}
	header .header_section .header_sl .searchbar img{
		height:27px;
		weight:27px;
		padding-left:20px;
	}

	header .menu{
		margin-top:15px;

	}
	header .header_sl .menu ul{
            list-style: none;
   
    }
	header .menu .menu_wrap .mainmenu .submenu{
            display: none;
    }
	header .menu .menu_wrap .mainmenu:hover .submenu{
            //display:block;
    }
	header .menu .menu_wrap{
            display: flex;
    }
	header .menu .menu_wrap .mainmenu{
            text-align: center;
            height: 50px;
            line-height: 50px;
    }
	header .menu .menu_wrap .mainmenu a{
            text-decoration: none;
            color: black;
            display: block;
            width: 100px;
            font-weight:lighter;
            font-size:18px;
            font-family:Jua;
    }

	
	
	
	
	section{
		width:1250px;
		height:800px;
		display:flex;
		margin:0 auto;

		 
	}
	
	section .section_wrap{
		width:1250px;
		height:800px;
	}
	

	section .right_menu{
		position:fixed;
		right:5%;
		
	}
	
	section .right_menu img{
		width:60px;
		height:60px;
		filter: drop-shadow(0px 3px 5px #81c147);
	}
	

	
	.slide{
        width: 1250px;
        height: 300px;
        border: 1px solid white;
        background-color: green;
        background-size: cover;
        background-position: center;
        display: flex;
        margin: auto;
        margin-top: 50px;
        z-index:2;
    }
    .left{
		width: 50%;
		height: 100%;
    }
    .right{
		width: 50%;
		height: 100%;
    }
        
    footer{
		width:1250px;
		height:300px;
		margin:0 auto;
		padding-top: 30px;
		border-top:1px solid lightgray;

	}
        
        
        
    footer ul{
		list-style: none;
		width: 200px;
    }
    footer a {
		text-decoration: none;    
		color : gray;
    }
    
    footer a:hover{
    	text-decoration: none;    
		color :black;
		font-weight: bolder;
		
    }

	.footer1{
		display: flex;
		font-size: 12px;
	}
	.footer1 span{
		font-weight: bold;
		color: gray;
	}
	.footer1 ul{
		width: 100%;
	}
	
	.footer1_3{
		//text-align: right;
		display: flex;
	}
	.footer1_3 li{
		width: 100%;
		text-align: right;
	
	}
	
	.footer2{
		height : 100px;
		margin-top: 15px;
		margin-bottom: 100px;
	}
	.footer1_1 li{
	
	}
	.footer1_1 li a{
		display: flex;
		height : 30px;
		padding: auto;
		line-height: 40px;
		margin-bottom: 10px;
		font-weight: bolder;
		color: gray;
	
	}
	.footer1_2 li {
		height: 30px;
	}
	
	
	.footer1_1 img{
		width:30px;
		height:30px;
		margin-right: 20px;
	}
	
	.footer2 span{
		font-size: 12px;
		color: gray;
		line-height: 20px;
	}
       
    .footer1_3 img{
    	width: 35px;
    	height: 35px;
    }
        
        
        
        
	
</style>
</head>
<body>
	<header>
		<div class="header_wrap">
			<div class="header_logo" >
				<a href="/koalas/index"><img src="https://ifh.cc/g/BKg92h.jpg"></a>
			</div>
			
			<div class="header_section">
				<div class="header_login">
						<span><a href="/koala/index"><img src="https://www.data4library.kr/resources/img/background/g_home_icon.gif" class="home_icon">home</a> </span>
						<span>|</span>
						<c:choose>
							<c:when test="${userid == null }">
								<span><a href="/koala/login">로그인</a></span>
								<span>|</span>
								<span><a href="#">회원가입 </a></span>
							</c:when>
							
							<c:when test="${userid != null }">
								<span><a href="/koala/logout">로그아웃</a></span>
							</c:when>
						</c:choose>
						<span>|</span>
						<span><a href="#">고객센터</a></span>
				</div>
				
				<div class="header_sl">
					
						<div class="menu">
				            <ul class="menu_wrap">
				                <li class="mainmenu"><a href="#">메뉴1</a>
				                    <ul class="submenu">
				                        <li><a href="#">서브메뉴1</a></li>
				                        <li><a href="#">서브메뉴2</a></li>
				                        <li><a href="#">서브메뉴3</a></li>
				                    </ul>
				                </li>
				              
				                <li class="mainmenu"><a href="#">메뉴2</a>
				                    <ul class="submenu">
				                        <li><a href="#">서브메뉴1</a></li>
				                        <li><a href="#">서브메뉴2</a></li>
				                    </ul>
				                </li>
				               
				                <li class="mainmenu"><a href="#">메뉴3</a>
				                    <ul class="submenu">
				                        <li><a href="#">서브메뉴1</a></li>
				                        <li><a href="#">서브메뉴2</a></li>
				                    </ul>
				                </li>
				                
				                <li class="mainmenu"><a href="#">메뉴4</a>
				                    <ul class="submenu">
				                        <li><a href="#">서브메뉴1</a></li>
				                        <li><a href="#">서브메뉴2</a></li>
				                    </ul>
				                </li>
				            </ul>
       					</div>
					
					
					<div class="searchbar">
						<input type="text">
						<a href="#"><img src="https://thumb.ac-illust.com/61/61843482164d65671d718c86101fa2a7_t.jpeg"></a>
					</div>
				</div>
			</div>
		</div>
	</header>
	
	
	
	
    
	
	<section>
	
	<div class="section_wrap">
		<div id = "slide" class = "slide">
			<div onclick = "left()" class = "left"></div>
			<div onclick = "right()" class = "right"></div>
		</div>
	</div>
	
	<div class="right_menu">
		<a href="#"><img src="https://contents.kyobobook.co.kr/resources/fo/images/common/ink/btn_header_my@2x.png"></a>
	</div>
	
	
	
	
		
		
	
	
		
		
		
		
	</section>
	
	<footer>
		<div class = "footer1">
			
				<ul class ="footer1_1">
					<li><a href = "#"> <img alt="" src=" https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBDZwmA2el7PwTW1BsVjCJZ-2kjA-00AbLMg&usqp=CAU"> 고객센터</a></li>
					<li><a href = "#"> <img alt="" src=" https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7xonHU18wNjTV40nMGE1TG3sUTrDpQmoYaw&usqp=CAU"> 공지사항</a></li>
				</ul>
				
				<ul class = " footer1_2">
					<li><span>서비스</span></li>
					<li><a href = "#">라디페이퍼</a></li>
					<li><a href = "#">제휴카드</a></li>
					<li><a href = "#">뷰어 다운로드</a></li>
					<li><a href = "#">CP사이트</a></li>
					<li><a href = "#">리디셀렉트 B2B</a></li>
	
				</ul>
				
				<ul class = " footer1_2">
					<li><span>기타문의</span></li>
					<li><a href = "#">콘텐츠제공문의</a></li>
					<li><a href = "#">사업 제휴 문의</a></li>
				</ul>
				<ul class = " footer1_2">	
					<li><span>회사</span></li>
					<li><a href = "#">회사 소개</a></li>
					<li><a href = "#">인재채용</a></li>
				</ul>
		
				
				<ul class = "footer1_3">
					<li><a href = "#"> <img alt="" src=" https://seeklogo.com/images/F/facebook-logo-264A8EFBA1-seeklogo.com.png"> </a></li>
					<li><a href = "#"> <img alt="" src="https://seeklogo.com/images/I/instagram-new-2016-glyph-logo-84CB825424-seeklogo.com.png "> </a></li>
					<li><a href = "#"> <img alt="" src=" https://seeklogo.com/images/Y/youtube-play-black-logo-80DD0878BE-seeklogo.com.png"> </a></li>		
				</ul>
			
		</div>
		
		<div class = "footer2">
			<span>
			(주)코알라 사업자 정보 <br>
			대표자 : 김소영 | 사업자 등록번호 : 1995-87-246879 | 통신판매 신고번호 : 제2009-서울강남 35-21355호 <br>
			이메일 : soyoung@naver.com | 대표전화 : 1644-3341 | 주소 : 서울시 강남구 역삼동 702-28 어반쎈치빌딩 10층(테헤란로425)<br>
			<a href = "#">이용약관</a> | <a href = "#">개인정보 처리방침</a> | <a href = "#">청소년보호정책</a> | <a href = "#">사업자정보확인</a>
			</span>
		</div>
		
		
		
		
		
	</footer>
</body>
</html>
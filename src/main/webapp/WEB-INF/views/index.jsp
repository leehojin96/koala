<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
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
        
       
    	


    </script>

<style>
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

	
</style>
</head>
<body>



	<section>
	
	<div class="right_menu">
		<a href="<c:url value='/mypageenter' />"><img src="https://contents.kyobobook.co.kr/resources/fo/images/common/ink/btn_header_my@2x.png"></a>
	</div>
		
		
	
	
		
		<div class="section_wrap">
			<div id = "slide" class = "slide">
				<div onclick = "left()" class = "left"></div>
				<div onclick = "right()" class = "right"></div>
			</div>
		</div>
		
		
	</section>

	<%@ include file ="footer.jsp" %>
</body>



</html>
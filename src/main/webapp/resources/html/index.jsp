<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
        	
        	setTimeout(change, 2000);//1ì´ì íë²ì© ì¤í
        	
        	if(next>imgNames.length-1){
                next = imgNames.length-imgNames.length;
            } 
        	
        	slide.style.backgroundColor = imgNames[next];
       	
        }

    </script>

<style>
@import url('https://fonts.googleapis.com/css?family=Jua:400');
	*{
		margin:0px;
		padding:0px;
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
		border-bottom:1px solid lightgray;
	}
	


	
        
        
	
</style>
</head>
<body>
<%@ include file="../css/header.jsp" %>
	
    
	
<%@ include file="../css/right_menu.jsp" %>
	<section>
	
		
		
	
	
		
		<div class="section_wrap">
			<div id = "slide" class = "slide">
				<div onclick = "left()" class = "left"></div>
				<div onclick = "right()" class = "right"></div>
			</div>
		</div>
		
		
	</section>
	
<%@ include file="../css/footer.jsp" %>
</body>
</html>
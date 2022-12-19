<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
  <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Jua:400');
#section_wrap{
	display: flex;
	margin: auto;
	width: 1450px;
	font-family: Jua;
	height:750px;
	//background-color: red;
	background-position : center;
	background-size: cover;
	//border: 1px solid black;
}




#nav_wrap{
	display: flex;
	margin: auto;
	width: 1450px;
	
	
	
}
#logo{
	width:200px;
	height:110px;
	background-image: url("https://ifh.cc/g/BKg92h.jpg");
	background-position: center;
	background-size: cover;
	margin: 0px 100px 0px 100px;
}
#nav{
	font-family:Jua;
	height: 110px;
	width: 200px;
	font-size: 30px;
	line-height: 110px;
	//background-color: blue;
	//text-align: center;
}
#nav a{
	text-decoration: none;
	color: #653300;
}



#message_wrap{
	width: 100%;
	height: 1000px;
	//background-color: red;
}
#message{
	font-family:Jua;
	height: 200px;
	margin: auto;
	background-color: #b0f5b0;
	text-align: center;
	font-size: 60px;
	font-weight: border;
	line-height: 200px;
	margin-top: 18%;

	
}



#message span{
	font-size:70px;
	font-family:Jua;
	color: #563124;
	font-weight: 900;
	
	
}

#section_wrap img{
	width:600px;
	height:600px;
	margin: 80px 0px 0px 100px;
	border-radius: 100px;
}

#book_text{
	width:600px;
	height:600px;
	//background-color: yellow;
	margin-top: 80px;
	//text-align: center;
	padding-left: 200px; 
}

#book_text h1{
	margin : 100px 0px 40px 0px;
	font-size: 80px;
	text-decoration: underline;
	color: #653300;
	
}

#book_text p{
	font-size: 30px;
}
#book_text input{
	font-family:Jua;
	width: 250px;
	height: 80px;
	margin-top: 30px; 
	background-color: #eac896;
	border: 0px;
	border-radius: 20px;
	font-size: 20px;
}






</style>

<script>
$(document).ready( function(){
	
	//alert("ready");
	
	$("#message").animate({
		width : '0%'
	},2000,function(){
		$(this).css("display","none");
		$("#message_wrap").css("display","none");
	});
	
	
});


</script>
</head>
<body>
<!-- <%@ include file ="header.jsp" %> -->


<section>

<div id ="message_wrap">
	<div id = "message">
		Rest with <span>'Koala'</span>
	</div>
</div>

<div id ="first">
	<h1>Rest With <span>'Koala'</span></h1>
</div>





<div id ="nav_wrap">

	<div id="logo">	</div>
	
	<div id ="nav"> <a href="#">Books</a></div>
	<div id ="nav"> <a href="#">Store</a></div>
	<div id ="nav"> <a href="#">Delivery</a></div>
	<div id ="nav"> <a href="#">Koala Premium</a></div>
</div>




<div id="section_wrap">

	<img alt="" src="https://newsimg.hankookilbo.com/cms/articlerelease/2020/04/21/202004211422083541_3.jpg">
	<div id="book_img"></div>
	
	<div id ="book_text">
		<h1>Books</h1>
		<p>Koala의 책은 매일매일 업데이트 됩니다</p>
		<p>신규도서 찾을때는 Koala와 함께!</p>
		<input type="button" value = "책 찾으러가기">
	</div>	
</div>

<div id ="section_wrap">
	<div id ="book_text">
		<h1 style="color: green;">Store</h1>
		<p>Koala는 오프라인으로도 만날수있어요</p>
		<p>오프라인매장에서 숲속을 느껴보세요!</p>
		<input type="button" value = "가까운 오프라인매장 찾기" style="background-color: #a5df61;">
	</div>
	
	<img alt="" src="https://img.freepik.com/premium-photo/green-forest-trees-nature-green-wood-sunlight-backgrounds_87394-14873.jpg?w=2000" style="margin-right:100px; ">
</div>

<div id ="section_wrap">

	<img alt="" src="https://img.freepik.com/free-photo/delivery-truck-with-gift-box-present-surprise-or-free-shipping-fast-delivery-car-deliver-express-delivery-transportation-logistics-concept-background-3d-rendering-illustration_56104-2062.jpg?size=626&ext=jpg&ga=GA1.2.512915506.1671419081&semt=sph">
	<div id="book_img"></div>
	
	<div id ="book_text">
		<h1 style="color:#e98484;">Delivery</h1>
		<p>Koala는 구매 즉시 배송이 시작됩니다</p>
		<p>책 읽는 시간은 길게, 기다리는 시간은 짧게!</p>
		<input type="button" value = "책 구매하러가기" style="background-color: #f0baba;">
	</div>	

</div>

<div id ="section_wrap">

	<div id ="book_text">
		<h1 style="color: #6a6a6a;">Koala Premium</h1>
		<p>프리미엄 구매시 E-Book, 배송비 무료!</p>
		<input type="button" value = "1개월 무료체험하기" style="background-color: #434242; color: white;">
	</div>
	
	<div style="width:600px;	height:600px; margin-right:100px;	border-radius: 100px; background-color: #d7d5d5;">
		<img alt="" src="https://img.freepik.com/premium-vector/smile-logo-template_8163-40.jpg?size=338&ext=jpg&ga=GA1.2.512915506.1671419081" style="width: 300px; height: 300px; border-radius: 150px; margin: 150px;" >
	</div>
	

</div>


</section>



<%@ include file="footer.jsp"%>
</body>
</html>
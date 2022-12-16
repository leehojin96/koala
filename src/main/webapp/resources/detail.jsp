<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file ="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>


</script>

<style type="text/css">

@import url('https://fonts.googleapis.com/css?family=Jua:400');

* {
	margin: 0px;
	padding: 0px;
}

section {
	display: bolck;
	margin: 0px auto;
	width: 1250px;
	//font-family: Jua;
}

#info_warp{
	width: 770px;
}

#detail_top{
	margin-top: 30px;
	display: flex;
	width: 1250px;
	
}
#img_wrap{
	width: 480px;
	height: 580px;
	//background-color: red;
}
#img_wrap img{
	width: 380px;
	height: 580px;
	background-color: red;
}

#book_info_top{
	width: 100%;
	height: 130px;
	
}

#book_info_top p{
	color: gray;
	
}
#book_info_top h1{
	margin-top: 15px;
	margin-bottom: 15px;
	font-size: 30px;
	
	
}


#book_info_mid{
	width: 100%;
	height: 190px;
	//background-color: gray;
	border-top: 3px solid black;
}

#book_info_mid table{
	margin-top: 30px;
}
#book_info_mid p{
	font-size: 30px;
	font-weight: bolder;
}

#book_info_mid th{
	color: gray;
	text-align: left;
	width: 100px;
	height: 40px;
	
}

#book_info_mid span{
	color: gray;
}
#book_info_bottom{
	width: 100%;
	height: 260px;
	//background-color: purple;
}

#book_info_bottom select{
	width: 100%;
	height: 45px;
	margin-bottom: 20px;
}

#add_book{
	display: flex;
	background-color: #F2F2F2;
	width: 100%;
    height: 50px;
    line-height: 50px;
}

#total_price{
	display: flex;
	width: 100%;
    height: 50px;
    line-height: 50px;
}
#button_wrap{
	width: 100%;
    height: 90px;
    //background-color: red;
    display: flex;
}
#button_wrap button{
	width: 380px;
	height: 60px;
	margin: auto;
	display: block;
	border: 0px;
	color: white;
}


#button_wrap .btn_left{
	background-color: gray;
}
#button_wrap .btn_right{
	background-color: black;
}




</style>
</head>
<body>

<section>
<div id="detail_top">
	<div id ="img_wrap">
		<img alt="" src="#">
	</div>
	<div id ="info_warp">
		<div id = "book_info_top">
			<p>모든 시험을 위한, 가장 완벽한 수학책</p>
			<h1>한권으로 시작하는 수학 : 수학(중)</h1>
			<span>이해원 저 | 시대인재북스 | 2022년 12월 02일 출판</span>
		</div>
		
		<div id ="book_info_mid">
			<table>
				<tr>
					<th>판매가</th>
					<td><p>23,000원</p></td>
				</tr>
				
				<tr>
					<th>배송비</th>
					<td>뮤료배송 <span>*만원이상 구매 시</span></td>
				</tr>
				
				<tr>
					<th>도착 예정일<br> * </th>
					<td>2일 이내 도착 예정 <br> <span>(주말 및 공휴일 및 연휴 제외)</span></td>
				</tr>
				
			</table>
		</div>
		
		<div id ="book_info_bottom">
			<select>
				<option>연관도서</option>
				<option>영어</option>
				<option>국어</option>
				<option>사탐,과탐</option>
			</select>
			
			<div id ="add_book">
				<div id ="add_left">
					<span>한권으로 시작하는 수학: 수학(중)</span>
					<button type ="button">-</button>
					<input type = "text" value="1">
					<button type ="button">+</button>	
				</div>
				
				<div id ="add_right">
					<span>23,000원</span>
				</div>
			</div>
			
			<div id ="total_price">
				<div id="total_left">
					총상품금액
				</div>
				
				<div id="total_right">
					총 수량1권 
				</div>
				<h2>23,000원</h2>
			</div>
			
			<div id="button_wrap">
				<button type = "button" class="btn_left">장바구니</button>
				<button type = "button" class="btn_right">구매하기</button>
			</div>
		
		</div>
		
	</div>
</div>
	
<div id="detail_mid">
	<div id ="books">책소개</div>
	
	<div id="authors">저자소개	</div>
</div>

<div id="detail_bottom">

	<div id ="book_info">
		책소개 영역
	</div>
	
	<div id ="authors_info">
		저자소개 영역
	</div>

</div>	



</section>


<%@ include file="footer.jsp"%>
</body>
</html>
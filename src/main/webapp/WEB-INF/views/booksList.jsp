<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>
@import url('https://fonts.googleapis.com/css?family=Jua:400');

* {
	margin: 0px;
	padding: 0px;
}

section {
	display: bolck;
	margin: 0px auto;
	width: 1300px;
	font-family: Jua;
}

#selectType {
	padding: 20px;
	text-align: right;
}

#selectBtn button {
	outline: none;
	background-color:
}

#bookEmpty a {
	text-decoration: none;
	color: black;
}

#bookEmpty a:visited {
	color: black;
}

#bookEmpty a:active {
	color: black;
}

#bookEmpty {
	display: flex;
	flex-flow: wrap;
	width: 1300px;
}

@keyframes fadein {from { opacity:0;}
to{opacity: 1;}}
@-moz-keyframes fadein { /* Firefox */ from { opacity:0;}
to{opacity: 1;}}
@-webkit-keyframes fadein { /* Safari and Chrome */ from { opacity:0;}
to{opacity: 1;}}
@-o-keyframes fadein { /* Opera */ from { opacity:0;}
to{opacity: 1;}}

#book {
	padding: 30px;
	width: 200px;
	animation: fadein 1s;
	-moz-animation: fadein 1s; /* Firefox */
	-webkit-animation: fadein 1s; /* Safari and Chrome */
	-o-animation: fadein 1s; /* Opera */
}

#bookImg {
	width: 200px;
	height: 300px;
	border-radius: 20px 5px 5px 20px;
	overflow: hidden;
	box-shadow: 5px 5px #333333;
	margin-bottom: 20px;
}

#book img {
	width: 200px;
	height: 300px;
	object-fit: cover;
}

#title {
	font-size: 18px;
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

#author {
	font-size: 13px;
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 1;
	-webkit-box-orient: vertical;
}

#pagingBox {
	width: 200px;
	margin: 0px auto;
	display: flex;
	margin-top: 50px;
	margin-bottom: 100px;
}
#paging{
	display: flex;
}

#pagingBox input {
	padding: 10px 5px 10px 5px;
	margin-right: 20px;
	border-style: none;
	outline-style: none;
	outline: none;
	background: none;
	cursor: pointer;
}

#categoryDiv {
	padding: 30px;
}

#selectTop {
	list-style: none;
	display: flex;
	text-align: center;
	width: 1300px;
	flex-flow: wrap;
}

.selectBtn {
	margin-right: 15px;
	margin-bottom: 10px;
}

input[type=radio] {
	display: none;
	margin: 10px;
}

input[type=radio]+label {
	display: inline-block;
	margin: 2px;
	padding: 8px 19px;
	border-radius: 50px;
	background-color: #f2f2f2;
	text-align: center;
	cursor: pointer;
}

input[type=radio]:checked+label {
	background-color: #663108;
	color: white;
}
</style>

</head>
<body>
	
<section>
		<div id="categoryDiv">
			<ul id="selectTop">
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput01" name="top" value="0" checked="checked" /><label
					for="selectInput01">전체</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput02" name="top" value="55890" /><label
					for="selectInput02">건강/취미</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput03" name="top" value="170"><label
					for="selectInput03">경제경영</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput05" name="top" value="987" /><label
					for="selectInput05">과학</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput06" name="top" value="8257" /><label
					for="selectInput06">대학교재/전문서적</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput07" name="top" value="2551" /><label
					for="selectInput07">만화</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput09" name="top" value="798" /><label
					for="selectInput09">사회과학</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput11" name="top" value="1383" /><label
					for="selectInput11">수험서/자격증</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput13" name="top" value="55889" /><label
					for="selectInput13">에세이</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput14" name="top" value="1196" /><label
					for="selectInput14">여행</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput16" name="top" value="517" /><label
					for="selectInput16">예술/대중문화</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput18" name="top" value="1322" /><label
					for="selectInput18">외국어</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput19" name="top" value="13789" /><label
					for="selectInput19">유아</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput20" name="top" value="656" /><label
					for="selectInput20">인문학</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput21" name="top" value="336" /><label
					for="selectInput21">자기계발</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput22" name="top" value="112011" /><label
					for="selectInput22">장르소설</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput24" name="top" value="17195" /><label
					for="selectInput24">전집</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput25" name="top" value="1237" /><label
					for="selectInput25">종교/역학</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput26" name="top" value="1137" /><label
					for="selectInput26">청소년</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput27" name="top" value="351" /><label
					for="selectInput27">컴퓨터/모바일</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput28" name="top" value="50246" /><label
					for="selectInput28">초등학교 참고서</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput29" name="top" value="76000" /><label
					for="selectInput29">중학교 참고서</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput30" name="top" value="76001" /><label
					for="selectInput30">고등학교 참고서</label></li>
			</ul>
			<ul id="selectMiddle">

			</ul>
		</div>

		<!-- 도서 리스트 -->
		<div id="bookList">

			<div id="selectType">

				<div id="selectBtn">
					<span><a href="#">최신순</a></span> <span> | </span> <span><a
						href="#">인기순</a></span>
				</div>

			</div>

			<div id="bookEmpty">

				<!-- 도서 빈칸 -->

			</div>




		</div>
		<div id="pagingBox">
		<input class="pageBtn1" type="button" value="<<">
		<input class="pageBtn2" type="button" value="<">
		<div id="paging">
		<!-- 페이지 번호 빈칸 -->
		</div>
		<input class="pageBtn3" type="button" value=">">
		<input class="pageBtn4" type="button" value=">>">
		</div>
	</section>


	<!-- 책 마우스 확대/축소 애니메이션 -->
	<script>
		function zoomIn(event) {
			event.target.style.transform = "scale(1.1)";
			event.target.style.zIndex = 1;
			event.target.style.transition = "all 0.5s";
		}

		function zoomOut(event) {
			event.target.style.transform = "scale(1)";
			event.target.style.zIndex = 0;
			event.target.style.transition = "all 0.5s";
		}
	</script>
</body>
</html>
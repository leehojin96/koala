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

#pagingBox1 {
	display: flex;
	margin-top: 50px;
	margin-bottom: 100px;
	
}

#pagingBox2{
display : flex;
margin: 0px auto;
}
#paging{
	display: flex;
}

#pagingBox1 input {
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

#selectTop , #selectMiddle {
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
.Middle{
display: none;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
/*
$(document).ready(function() {
		$("#categoryDiv").mouseenter(function() {
			$("#categoryDiv").stop().animate(
					{height:"150px"},300,'swing'		
				);
		});
		
		$("#categoryDiv").mouseleave(function(){
			$("#categoryDiv").stop().animate(
					{height:"50px"},500	
				);
		});
});
*/
</script>
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
					id="selectInput07" name="top" value="2551" /><label
					for="selectInput07">만화</label></li>
				<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput09" name="top" value="798" /><label
					for="selectInput09">사회과학</label></li>
					<li class="selectBtn"><input type="radio" class="selectInput"
					id="selectInput10" name="top" value="1" /><label
					for="selectInput10">소설/시/희곡</label></li>
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
			<div class="55890 Middle">
			<ul id = "selectMiddle">
			<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="55890Middle0" name="middle" value="53516" /><label
					for="55890Middle0">건강운동</label></li>
			<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="55890Middle1" name="middle" value="53521" /><label
					for="55890Middle1">건강정보</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="55890Middle2" name="middle" value="53532" /><label
					for="55890Middle2">공예</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="55890Middle3" name="middle" value="53525" /><label
					for="55890Middle3">구기</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="55890Middle4" name="middle" value="53534" /><label
					for="55890Middle4">반려동물</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="55890Middle5" name="middle" value="53518" /><label
					for="55890Middle5">질병치료와 예방</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="55890Middle6" name="middle" value="53535" /><label
					for="55890Middle6">취미기타</label></li>
				</ul>
			</div>
			<div class="170 Middle">
			<ul id = "selectMiddle">
			<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="170Middle0" name="middle" value="3057" /><label
					for="170Middle0">경제학/경제일반</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="170Middle1" name="middle" value="2172" /><label
					for="170Middle1">기업 경영</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="170Middle2" name="middle" value="2028" /><label
					for="170Middle2">기업/경영자 스토리</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="170Middle3" name="middle" value="261" /><label
					for="170Middle3">마케팅/세일즈</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="170Middle4" name="middle" value="263" /><label
					for="170Middle4">트렌드/미래전망</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="170Middle5" name="middle" value="172" /><label
					for="170Middle5">재테크/투자</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="170Middle6" name="middle" value="177" /><label
					for="170Middle6">창업/취업/은퇴</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="170Middle7" name="middle" value="3049" /><label
					for="170Middle7">CEO/비즈니스맨을 위한 능력계발</label></li>
					</ul>
			</div>
			
			<div class="987 Middle">
			<ul id = "selectMiddle">
			<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="987Middle0" name="middle" value="51005" /><label
					for="987Middle0">과학의 이해</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="987Middle1" name="middle" value="51013" /><label
					for="987Middle1">뇌과학</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="987Middle2" name="middle" value="51015" /><label
					for="987Middle2">생명과학</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="987Middle3" name="middle" value="51022" /><label
					for="987Middle3">동물과 식물</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="987Middle4" name="middle" value="51024" /><label
					for="987Middle4">물리학</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="987Middle5" name="middle" value="51027" /><label
					for="987Middle5">천문학</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="987Middle6" name="middle" value="51030" /><label
					for="987Middle6">지구과학</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="987Middle7" name="middle" value="51033" /><label
					for="987Middle7">수학</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="987Middle8" name="middle" value="51035" /><label
					for="987Middle8">화학</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="987Middle9" name="middle" value="51038" /><label
					for="987Middle9">공학</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="987Middle10" name="middle" value="51045" /><label
					for="987Middle10">농업</label></li>
					
			</ul></div>
			
			<div class="2551 Middle">
			<ul id = "selectMiddle">
			<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="2551Middle0" name="middle" value="3728" /><label
					for="2551Middle0">본격장르만화</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="2551Middle1" name="middle" value="3727" /><label
					for="2551Middle1">소년만화</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="2551Middle2" name="middle" value="3741" /><label
					for="2551Middle2">순정만화</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="2551Middle3" name="middle" value="2561" /><label
					for="2551Middle3">스포츠만화</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="2551Middle4" name="middle" value="7443" /><label
					for="2551Middle4">인터넷 연재 만화</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="2551Middle5" name="middle" value="2552" /><label
					for="2551Middle5">코믹/명랑만화</label></li>
					</ul></div>
					
			<div class="798 Middle">
			<ul id = "selectMiddle">
			<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="798Middle0" name="middle" value="50992" /><label
					for="798Middle0">비평/칼럼</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="798Middle1" name="middle" value="50995" /><label
					for="798Middle1">사회문제</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="798Middle2" name="middle" value="50997" /><label
					for="798Middle2">환경/생태문제</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="798Middle3" name="middle" value="51016" /><label
					for="798Middle3">정치학/외교학/행정학</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="798Middle4" name="middle" value="51026" /><label
					for="798Middle4">사회학</label></li>
					</ul></div>
					
					<div class="1 Middle">
			<ul id = "selectMiddle">
			<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="1Middle0" name="middle" value="50917" /><label
					for="1Middle0">한국소설</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="1Middle1" name="middle" value="50918" /><label
					for="1Middle1">일본소설</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="1Middle2" name="middle" value="50919" /><label
					for="1Middle2">영미소설</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="1Middle3" name="middle" value="50921" /><label
					for="1Middle3">프랑스소설</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="1Middle4" name="middle" value="50926" /><label
					for="1Middle4">추리/미스터리소설</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="1Middle5" name="middle" value="50927" /><label
					for="1Middle5">라이트 노벨</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="1Middle6" name="middle" value="50928" /><label
					for="1Middle6">판타지/환상문학</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="1Middle7" name="middle" value="50930" /><label
					for="1Middle7">과학소설(SF)</label></li>
					<li class="selectBtn"><input type="radio" class="selectMiddle"
					id="1Middle8" name="middle" value="50940" /><label
					for="1Middle8">시</label></li>
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
		<div id="pagingBox1">
		<div id ="pagingBox2">
		<input class="partBtn" type="button" value="<">
		<div id="paging">
		<!-- 페이지 번호 빈칸 -->
		</div>
		<input class="partBtn" type="button" value=">">
		</div>
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
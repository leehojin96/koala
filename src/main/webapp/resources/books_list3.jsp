<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	
</script>


<style>
@import url('https://fonts.googleapis.com/css?family=Jua:400');

* {
	margin: 0px;
	padding: 0px;
}

section {
	display: bolck;
	margin: 0px auto;
	width: 1250px;
	font-family: Jua;
}

#select-list-type {
	padding: 20px;
	text-align: right;
}

#select-btn button {
	outline: none;
	background-color:
}

#bookFindList a {
	text-decoration: none;
	color: black;
}

#bookFindList a:visited {
	color: black;
}

#bookFindList a:active {
	color: black;
}

#title-5 {
	display: flex;
	flex-flow: wrap;
	width: 1200px;
}

#book {
	padding: 20px;
	width: 200px;
}

#book img {
	width: 200px;
	height: 300px;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<section>

		<!-- 도서 리스트 -->
		<div id="bookFindList">

			<div id="select-list-type">

				<div id="select-btn">
					<span><a href="#">최신순</a></span> <span> | </span> <span><a
						href="#">인기순</a></span>
				</div>

			</div>

			<div id="title-5">

				<a href="" onmouseenter="zoomIn(event)"
					onmouseleave="zoomOut(event)">
					<div id="book">
						<div id="bookImg">
							<img
								src="https://image.aladin.co.kr/product/26942/84/cover/k582730818_1.jpg">
						</div>
						<div id="bookInfo">
							<div id="bookRanking">1</div>
							<div id="bookName">불편한 편의점</div>
							<div id="bookAuthors">김호연</div>
						</div>
					</div>
				</a> <a href="" onmouseenter="zoomIn(event)"
					onmouseleave="zoomOut(event)">
					<div id="book">
						<div id="bookImg">
							<img
								src="https://image.aladin.co.kr/product/24512/70/cover/k392630952_1.jpg">
						</div>
						<div id="bookInfo">
							<div id="bookRanking">2</div>
							<div id="bookName">달러구트 꿈 백화점</div>
							<div id="bookAuthors">이미예</div>
						</div>
					</div>
				</a> <a href="" onmouseenter="zoomIn(event)"
					onmouseleave="zoomOut(event)">
					<div id="book">
						<div id="bookImg">
							<img
								src="http://image.aladin.co.kr/product/16839/4/cover/k492534773_1.jpg">
						</div>
						<div id="bookInfo">
							<div id="bookRanking">3</div>
							<div id="bookName">아몬드</div>
							<div id="bookAuthors">손원평</div>
						</div>
					</div>
				</a> <a href="" onmouseenter="zoomIn(event)"
					onmouseleave="zoomOut(event)">
					<div id="book">
						<div id="bookImg">
							<img
								src="https://image.aladin.co.kr/product/27587/47/cover/k962733015_1.jpg">
						</div>
						<div id="bookInfo">
							<div id="bookRanking">4</div>
							<div id="bookName">달러구트 꿈 백화점 2</div>
							<div id="bookAuthors">이미예</div>
						</div>
					</div>
				</a> <a href="" onmouseenter="zoomIn(event)"
					onmouseleave="zoomOut(event)">
					<div id="book">
						<div id="bookImg">
							<img
								src="https://image.aladin.co.kr/product/27541/91/cover/8954681174_1.jpg">
						</div>
						<div id="bookInfo">
							<div id="bookRanking">5</div>
							<div id="bookName">밝은 밤</div>
							<div id="bookAuthors">최은영</div>
						</div>
					</div>
				</a> <a href="" onmouseenter="zoomIn(event)"
					onmouseleave="zoomOut(event)">
					<div id="book">
						<div id="bookImg">
							<img
								src="https://bookthumb-phinf.pstatic.net/cover/134/282/13428208.jpg?type=m1&udate=20180331">
						</div>
						<div id="bookInfo">
							<div id="bookRanking">6</div>
							<div id="bookName">파친코</div>
							<div id="bookAuthors">이민진</div>
						</div>
					</div>
				</a>

			</div>
			<div id="paging"></div>
		</div>
	</section>
	<script>
		function zoomIn(event) {
			event.target.style.transform = "scale(1.2)";
			event.target.style.zIndex = 1;
			event.target.style.transition = "all 0.5s";
		}

		function zoomOut(event) {
			event.target.style.transform = "scale(1)";
			event.target.style.zIndex = 0;
			event.target.style.transition = "all 0.5s";
		}
	</script>

	<%@ include file="footer.jsp"%>

</body>

</html>
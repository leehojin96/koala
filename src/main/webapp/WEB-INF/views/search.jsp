<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document)
			.ready(
					function() {

						let start = 1;

						function showList(start) {
							//alert("showList() 실행");
							$.ajax({
								type : "GET",
								url : "/koala/api/BestsellerList",
								data : {start : start},
								success : function(data) {
									let dataHtml = toHtml(data);
									$("#bookEmpty").html(dataHtml);
								},
								error : function() {
									alert(arror);
								}
							});
						}

						function toHtml(data) {
							//alert("toHtml" + data);
							let str = "";
							for (let i = 0; i < data.length; i++) {
								let item = data[i];
								str += "<a href="
										+ "''" // 상세 페이지
										+ "onmouseenter='zoomIn(event)' onmouseleave='zoomOut(event)'>" // 마우스 호버 애니메이션
										+ "<div id='book'>"
										+ "<div id='bookImg'>"
										+ "<img id='cover' src='" +item.cover + "'>"
										+ "</div>" + "<div id='bookInfo'>"
										+ "<div id='title'>" + item.title
										+ "</div>" + "<div id='author'>"
										+ item.author + "</div>"
										+ "<div id='priceStandard'>"
										+ item.priceStandard + " 원</div>"
										+ "</div> </div> </a>";
							}
							return str;
						}

						showList(start);
						
						$(".pageBtn").click(function() {
							start = this.value;
							window.scrollTo(0,0);
							showList(start);
						});
					});
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

#book {
	padding: 30px;
	width: 200px;
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

#paging {
	width: 200px;
	margin: 0px auto;
	display: flex;
	margin-top: 50px;
	margin-bottom: 100px;
}

#paging input {
	padding: 10px 5px 10px 5px;
	margin-right: 20px;
	border-style: none;
	outline-style: none;
	outline: none;
	background: none;
}
</style>
</head>
<body>
	<section>

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
			
			

			<div id="paging">
					<input class="pageBtn" type="button" value="1">
					<input class="pageBtn" type="button" value="2">
					<input class="pageBtn" type="button" value="3">
					<input class="pageBtn" type="button" value="4">
					<input class="pageBtn" type="button" value="5">
					<input class="pageBtn" type="button" value="6">
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

	<%@ include file="footer.jsp"%>

</body>
</html>
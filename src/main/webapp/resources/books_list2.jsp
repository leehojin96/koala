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
$(document).ready(function(){
	showList();
	
	
});


function showList() {
	//alert("showList() 실행");
	$.ajax(
			{
				type:"GET",
				url:"/koala/books",
				success : function(data) {
					let dataHtml = toHtml(data);
		    		$("#title-5").html(dataHtml);
				},
				error: function() {
					alert(arror);
		}
	});
}

function toHtml(data) {
	//alert("toHtml" + data);
	let str = "";
	for( let i=0 ; i< data.length; i++){
		let item = data[i]; 
		str+= "<a href="
				+"''" // 상세 페이지
				+"onmouseenter='zoomIn(event)' onmouseleave='zoomOut(event)'>" // 마우스 호버 애니메이션
				+"<div id='book'>"
			 	+"<div id='bookImg'>"
				+"<img src='" +item.bookImageURL + "'>"
				+"</div>"
				+"<div id='bookInfo'>"
				+"<div id='bookRanking'>"+item.ranking+"</div>"
				+"<div id='bookName'>"+item.bookname+"</div>"
				+"<div id='bookAuthors'>"+item.authors+"</div>"
				+"</div> </div> </a>"
				;
	}
	return  str;
}

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


			</div>
			<div id="paging">
			<a></a>
			<a></a>
			</div>
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
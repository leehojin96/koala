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
	//$("#searchBtn").click(function(){
		//alert("click 실행");
	//	showList();
	//});
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
		str+= "<a href='' onmouseenter='zoomIn(event)' onmouseleave='zoomOut(event)'>";
		str+= "<div id='book'>";
		str+= "<div id='bookImg'>";
		str+= "<img src='" +item.bookImageURL + "'>";
		str+= "</div>";
		str+= "<div id='bookInfo'>";
		str+= "<div id='bookRanking'>"+item.ranking+"</div>";
		str+= "<div id='bookName'>"+item.bookname+"</div>";
		str+= "<div id='bookAuthors'>"+item.authors+"</div>";
		str+= "</div> </div> </a>";
	
	}
	return  str;
}


$(document).ready( function(){
	//alert("ddsfsd");
	$("#btn").click(function (){
		//alert("click");
		change(); 
	});
	$("#list1").click( function(){
		show();
	});
	
});



function change(){
	alert("카테고리 변경");
	let list = [ {name:"유형1"},{name:"유형2"},{name:"유형3"},{name:"유형4"},{name:"유형5"} ];
	let result = toHtml2(list);
	$("#show").html(result);

}

function toHtml2(list){
	
	let htmlcontents ="<ul>" +"<li>유형</li>";
	
	list.forEach ( list => { htmlcontents += "<li>" +"<button id ="+"'"+list.name+"'"+ ">" +list.name+"</button>"+"</li>"  });
	
	htmlcontents += "</ul>";
	return htmlcontents;
}




</script>


<style>
@import url('https://fonts.googleapis.com/css?family=Jua:400');

* {
	margin: 0px;
	padding: 0px;
}

section {
	display: block;
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










#filter{
	margin-bottom: 50px;
}
#filter ul{
	list-style: none;
	display: flex;
	margin: 10px auto;
	border-top: 0.5px solid #e7e7e7;
	border-bottom: 0.5px solid #e7e7e7;
	padding: 10px 0;
	
    
}

#filter li{
	margin: 5px ;
	line-height: 34px;
}

#filter button{
	width: 65px;
	height: 34px;
	background-color:#f2f2f2;
	border: 0px;
	font-weight: 300;
    border-radius: 50px;
    color: #595A5B;
    font-family: Jua;
}

#filter .fstbtn{
	width: 65px;
	height: 34px;
	background-color:black;
	border: 0px;
	font-weight: 300;
    border-radius: 50px;
    color: white;
    font-family: Jua;
}



</style>
</head>
<body>
	<section>

		<!-- 도서 리스트 -->
		<div id="bookFindList">

			<div id="select-list-type">

				<div id="select-btn">
					<span><a href="#">최신순</a></span> <span> | </span> <span><a href="#">인기순</a></span>
				</div>

			</div>
			
		<div id ="filter">
					<ul>
						<li>과목</li>
						<li><button class = "fstbtn" id="btn">전체</button></li>
						<li><button>문학</button></li>
						<li><button>소설</button></li>
						<li><button>에세이</button></li>
					</ul>
		
		
				<div id ="show">
					<ul id ="ul2">
						<li>유형</li>
						<li><button class = "fstbtn">전체</button></li>
						<li><button>개념</button></li>
						<li><button>기출</button></li>
						<li><button>모의고사</button></li>
					</ul>
					
					<ul id ="ul3">
						<li>저자</li>
						<li><button class = "fstbtn">blank</button></li>
						<li><button>blank</button></li>
						<li><button>blank</button></li>
						<li><button>blank</button></li>
					</ul>
			
				</div>
					
		</div>
		
		<dl>
		
		</dl>
  
			<div id="title-5">


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
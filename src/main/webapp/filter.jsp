<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style>



ul{
	list-style: none;
	display: flex;
	
	
}

img{
	width: 100px;
	height: 100px;

}

</style>

<script>

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
	let list = [ {name:"list1"},{name:"list2"},{name:"list3"},{name:"list4"},{name:"list5"} ];
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






</head>
<body>


<div>

	<div>
		<ul>
			<li>과목</li>
			<li><button id="btn">전체</button></li>
			<li><button>문학</button></li>
			<li><button>소설</button></li>
			<li><button>에세이</button></li>
		</ul>
		
		
		<div id ="show">
		
			<ul id ="ul2">
				<li>adfadsf</li>
				<li><button>asdfasdf</button></li>
				<li><button>asdfasf</button></li>
				<li><button>wetqd</button></li>
				<li><button>qegasdfsd</button></li>
			</ul>
		
		</div>
	
		
		<ul>
			<li>저자</li>
			<li><button>1</button></li>
			<li><button>2</button></li>
			<li><button>3</button></li>
			<li><button>4</button></li>
		</ul>
	</div>
	

</div>


<section>

<ul>
	<li>
		<img src="http://com2petcare.com/data/file/puppy01/thumb-3076522375_di3McfZN_038e8c4e62f1fe53b51b9cd7c6b7e113c4435b9f_380x277.jpg" alt="">
		<p>도서이름</p>
	</li>
</ul>


	

</section>
</body>
</html>
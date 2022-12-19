<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>


	//
	$(document).ready(function(){
		alert("ready");
		gettext();
		
		$("#chatting").click(function(){
			alert("click");
			//$(".div1").css("display","");
			$("#hidden_wrap").css("display","block");
			
		});
	});
	
	
	function gettext(){
		$.ajax({
			type:"GET",
			url:"/koala/chat",
			success: function(data){
				alert("success");
				console.log(data);

			},error:function(){
				alert("error");
				
			}
		});
		
	}
	
	
	
	
	
	function showChat(){
		
		
	}
	
	/*
	function popup(){
        var url = "popup.html";
        var name = "popup test";
        var option = "width = 500, height = 500, top = 100, left = 200, location = no"
        window.open(url, name, option);
    }
	*/

	


</script>
<style>


#chatting{
	position: fixed;
	right: 20px;
	bottom: 20px;
	background-color: red;
	width: 50px;
	height: 50px;
	
}
#chatting img{
	width: 40px;
	height: 40px;
	
}

#hidden_wrap{
	width: 250px;
	height: 400px;
	background-color: gray;
	position: relative;
	display: none;
}

#box{
	position: absolute;
	bottom: 10px;
	
}
	


</style>
</head>
<body>

<a href = "javascript:popup()" target = "_blank">팝업</a>

<a href="https://www.google.com" target="_blank">구글</a>

<div id = "chatting" onclick ="chatting()">
	
</div>

<div id="hidden_wrap">
	<div id ="box">
		<input type = "text"> <input type = "button" value = "전송">
	</div>
	
</div>

</body>
</html>
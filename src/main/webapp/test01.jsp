<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>

<script>
	
$(document).ready(function($) {

    $(".scroll_move").click(function(event){         

            event.preventDefault();

            $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);

    });

});


</script>

<style>
	#test{
		width: 500px;
		height: 300px;
		background-color: red;
		opacity: 0.5;
		position: relative;
		
	}
	#test02{
		width: 400px;
		height: 100px;
		position: absolute;
		top:30px;
		right: 30px;
	}
	
	#test h1{
		//font-size:100px;
	}
</style>
</head>
<body>

<div id ="test">
	<div id ="test02">
	<h1>TEST!!!</h1>
	
	
	

</div>

</div>



<input type="button">
<input type="checkbox">
<input type="color">
<input type="date">
<input type="datetime-local">
<input type="email">
<input type="file">
<input type="hidden">
<input type="image">
<input type="month">
<input type="number">
<input type="password">
<input type="radio">
<input type="range">
<input type="reset">
<input type="search">
<input type="submit">
<input type="tel">
<input type="text">
<input type="time">
<input type="url">
<input type="week">

</body>
</html>
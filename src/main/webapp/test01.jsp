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

//클래스가 scroll_move인 a 태그를 눌렀을때 발생되게 하는 이벤트

//$(this.hash) a태그에 있는 해쉬 값으로 스크롤링 되며 이동

//500 은 스크롤 속도

</script>
</head>
<body>

<div class="scroll-moveBox flex flex-br-c">
  <ul>
    <li><a href="#div1" id="scroll_move">div1로 이동</a></li>
    <li><a href="#div2" id="scroll_move">div2로 이동</a></li>
    <li><a href="#div3" id="scroll_move">div3로 이동</a></li>
    <li><a href="#div4" id="scroll_move">div4로 이동</a></li>
  </ul>
</div>


<div id="div1" style="background-color: gray; width: 1250px; height: 1000px;">div1</div>


<div id="div2" style="background-color: black; width: 1250px; height: 1000px;">div2</div>


<div id="div3" style="background-color: red; width: 1250px; height: 1000px;">div3</div>


<div id="div4" style="background-color: blue; width: 1250px; height: 1000px;">div4</div>



</body>
</html>
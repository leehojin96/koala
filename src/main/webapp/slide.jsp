<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



<style>

*{
	margin: 0;
	padding: 0;
}

li{
	list-style: none;
}

.slide_wrap{
	position: relative;
	width: 660px;
	margin: 0 auto;
	height: 200px;
	overflow:hidden;	
}

.slides{
	position: absolute;
	left: 0; top: 0;
	
}

.slides.animated{
	transition: 0.5s ease-out;
}

.slides li{
	width: 200px;
	height: 200px;
	background: #ccc;
	float: left;
}

.slides li:not(:last-child){
	margin-right: 30px;
}

.controls{
	text-align: center;
	margin-top: 50px;
}

.contrals span{
	width: 50px;
	height: 50px;
	background-color: black;

}

</style>
</head>
<body>


<div class ="slide_wrap">
	<ul class = "slides">
	
		<li>slide 01</li>
		<li>slide 02</li>
		<li>slide 03</li>
		<li>slide 04</li>
		<li>slide 05</li>
	</ul>
</div>

<p class ="controls">
	<span class="prev">prev</span>
	<span class="next">next</span>
</p>

<script>

	var slides = document.querySelector('.slides');
	
	//console.log(slides);
	var	slide = document.querySelectorAll('.slides li');
	//console.log(slide.length);
	var currentIdx = 0;
	var slideCount = slide.length;
	//console.log(slideCount);
	var slideWidth = 200;
	var slideMargin = 30;
	var prevBtn = document.querySelector('.prev');
	var nextBtn = document.querySelector('.next');
	
	makeClone();
	
	function makeClone(){
		for(var i =0; i<slideCount; i++){
			//a.cloneNode(), a.cloneNode(true)
			var cloneSlide = slide[i].cloneNode(true);
			cloneSlide.classList.add('clone');
			//a.appendChild(b)
			slides.appendChild(cloneSlide);
		}
		for(var i=slideCount-1; i>=0; i-- ){
			var cloneSlide = slide[i].cloneNode(true);
			cloneSlide.classList.add('clone');
			//a.prepend(b)
			slides.prepend(cloneSlide);
		}
		
		updateWidth();
		setInitialPos();
		
		setTimeout(function(){
			slides.classList.add('animated');
		},100);
		
		
	}
	
	function updateWidth(){
		
		var currentSlide = document.querySelectorAll('.slides li');
		var newSlideCount = currentSlide.length;
		
		var newWidth =(slideWidth + slideMargin)*newSlideCount-slideMargin+'px';
		slides.style.width = newWidth;
	}
	
	function setInitialPos(){
		var initialTranslateValue = -(slideWidth + slideMargin)*slideCount;
		//console.log(initialTranslateValue);
		slides.style.transform = 'translateX('+initialTranslateValue+'px)';
	}
	
	nextBtn.addEventListener('click',function(){
		moveSlide(currentIdx+1);
	});
	
	prevBtn.addEventListener('click',function(){
		moveSlide(currentIdx-1);
	});
	
	
	
	var timer = undefined;
	
	function autoSlide(){
		if(timer ==undefined){
			timer = setInterval(function(){
				moveSlide(currentIdx +1);
			},3000);
		}
	}
	
	autoSlide();
	
	function stopSlide(){
		clearInterval(timer);
		timer = undefined;
	}
	
	slides.addEventListener('mouseenter',function(){
		stopSlide();
	});
	
	slides.addEventListener('mouseleave',function(){
		autoSlide();
	});
	
	
	
	function moveSlide(num){
		slides.style.left = -num *(slideWidth + slideMargin)+'px';
		currentIdx = num;
		console.log(currentIdx,slideCount)
		if(currentIdx ==slideCount || currentIdx== -slideCount){
			
			setTimeout(function(){
				slides.classList.remove('animated');
				slides.style.left='0px';
				currentIdx =0;
			},500);
			setTimeout(function(){
				slides.classList.add('animated');
			},600);
			
		}
		
	}
	
</script>



</body>
</html>
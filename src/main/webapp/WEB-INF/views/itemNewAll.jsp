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
	$(document).ready(
					function() {
						
						//페이지 번호
						let start = 1;
						let startSector = 0;
						
						//카테고리 번호
						let categoryId = 0;

						//메인 함수
						function showList(start,categoryId) {
							//alert("showList() 실행");
							$.ajax({
								type : "GET",
								url : "/koala/books/ItemNewAll",
								data : {start : start, categoryId : categoryId},
								success : function(data) {
									
									//console.log(data);
									
									let data_item = data.list;
									let data_totalBooks = data.totalCnt;
									
									let dataHtml = toHtml(data_item);

									$("#bookEmpty").html(dataHtml);
									
									let dataPageHtml = pageNumberCreate(data_totalBooks);
									
									$("#paging").html(dataPageHtml);
								},
								error : function() {
									alert(arror);
								}
							});
						}

						
						//ArrayList<BooksDto> 타입 -> 반복분 통해 한권씩 데이터 뽑아내고 html 형식으로 변환
						function toHtml(data) {
							//alert("toHtml" + data);
							
							let str = "";
							for (let i = 0; i < data.length; i++) {
								let item = data[i];
								str += "<a href="
										+ "''"
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
						
						//권수에 따라 페이지 번호 생성
						function pageNumberCreate(data_totalBooks) {
							let totalPage = data_totalBooks / 50;
							console.log(totalPage);
							if (totalPage % 1 != 0)
								totalPage++;
							console.log(totalPage);
							
							
							let str = "";
							
							
							if((startSector+1)*6 <= totalPage){				
								for (let i = 1+(startSector*6); i <= 6+(startSector*6) ; i++) {
									str += "<input class='pageBtn' type='button' value='"+i+"'/>";
									}
							}else{
								for (let i = 1+(startSector*6); i <= totalPage ; i++) {
									str += "<input class='pageBtn' type='button' value='"+i+"'/>";
									}
							}
							return str;
							}
						
						//첫 로드
						showList(start,categoryId);
						 
						//페이지 클릭시 
						$(document).on('click', '.pageBtn', function() {
							start = this.value;
							window.scrollTo(0, 0);
							showList(start, categoryId);
						});
							
						
						//카테고리 클릭시
						$(".selectInput").click(function() {
							categoryId = this.value;;
							start = 1;
							window.scrollTo(0,0);
							showList(start,categoryId);
						});
						
					});
	
</script>


</head>
<body>

	
	<%@ include file="booksList.jsp"%>
	

	<%@ include file="footer.jsp"%>

</body>
</html>
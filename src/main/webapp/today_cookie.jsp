<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
 <head>
   <meta charset="UTF-8" />
   <title>HTML BASIC</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <script src="<%=request.getContextPath()%>/PORTFOLIO/js/cookie.js"></script> <!--   이걸 추가해 줘야함  -->
   
   <style>
   	#notice { width: 440px; text-align: justify; padding: 15px; position: absolute; top: 100px; left: 500px; font-size: 80%; }
   	#notice img{ width:70%; }
   </style>
   <script>
   	//close 버튼 클릭하면 오늘 하루동안 이 창 열지 않음 알림창 띄우기
   	$(function(){
   		// 1. 닫기버튼을 누르면 공지사항(notice)이 안보이게 만들기 - 닫기만 누르면 새로고침시 그냥 보임
   		// 2. 오늘 하루동안 이 창 열지 않음 체크 박스를 클릭하면 공지사항이 안보이게 만들기 - 하루만큼 안보이게
   		// show() 보임 , fadeIn() 서서히 보임 , slideDown() 말려내려옴
   		// hide() 안보임, fadeOut() 서서히 안보임 , slideUp() 말려올라감
   		//function getCookie(cname){}
   		// Uncaught ReferenceError: getCookie is not defined
 		if(  getCookie("subpop") != "done" ){  $("#notice").fadeIn();  }
 		else{  $("#notice").hide(); }
 		
 		$("#close").on("click" , function(){ $("#notice").fadeOut(); });
 		$("#subpop").on("click" , function(){ 
 			setCookie("subpop", "done", 1);  // 쿠키 1일동안 안보이게 설정
 			$("#notice").fadeOut(); 
 		});
   	});
   </script>
 </head>
 <body>
 	<div class="container panel panel-info">
 		<h3 class="panel-heading">HOMEPAGE MAIN</h3>
 	</div>
 	
 	<div class="container panel panel-success" id="notice">
 		<h3 class="panel-heading">공지사항</h3>
 		<p>본 사이트는 상업적인 목적이 아닌 개인 포트폴리오 용도로 제작되었습니다.</p>
 		<p>홈페이지의 일부내용과 기타이미지들은 그 출처가 따로 있음을 밝힙니다.</p>
 		<p><img src="<%=request.getContextPath()%>/PORTFOLIO/QR/QR_Web.jpg" alt=""/></p>
 		
 		<p>
 			<input type="checkbox" id="subpop" name="subpop" title="오늘 하루동안 이 창 열지 않음"/>
 			<label for="subpop">오늘 하루동안 이 창 열지않음</label>
 			<input type="button" id="close" class="btn btn-primary" value="닫기" />
 		</p>
 	</div>
 </body>
</html>
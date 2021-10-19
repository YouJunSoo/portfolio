<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- 하단 동그라미 네비게이션 -->
    <ol class="carousel-indicators">
    	<!--  step001 ) 첫번째 li 라면 class="active" -->
    	<c:forEach var="dto" items="${list}" varStatus="status">
      		<li data-target="#myCarousel" data-slide-to="${status.index}">
      		<c:if test="${status.index == 0}"></c:if></li>
      	</c:forEach>
    </ol>

    <!-- 실제 이미지가 들어가는 부분 -->
    <div class="carousel-inner" role="listbox">
		<c:forEach var="dto" items="${list}" varStatus="status">
      <div class="item <c:if test="${status.index==0}">active</c:if>">
        <img src="${pageContext.request.contextPath}/PORTFOLIO/img/${dto.img}" alt="Chania" width="460" height="345">
        <div class="carousel-caption">
          <h3>${dto.title}</h3>
          <p>${dto.name}</p>
          <p>${dto.description}</p>
        </div>
      </div>
  		</c:forEach>
    </div>

    <!-- 왼쪽꺾쇠 -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
     <!-- 오른쪽꺾쇠 -->
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<div class="panel panel-success" id="notice">
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
<div style="background-color:#000">
	<h3 style="text-align:center" class="models_h3">OUR MODELS</h3>
	<p style="text-align:center; color:white">역동적이면서도 우아한 디자인과 최첨단 기술을 탑재한 제네시스 브랜드의 라인업을 살펴보세요.</p>
 	<div class="container modelcontainer">
		 <ul class="nav nav-tabs  js">
		  <li  class="col-sm-2"><a data-toggle="tab" href="#menu1">G70</a></li>
		  <li  class="col-sm-2"><a data-toggle="tab" href="#menu2">G80</a></li>
		  <li  class="col-sm-2"><a data-toggle="tab" href="#menu3">G80e</a></li>
		  <li  class="col-sm-2"><a data-toggle="tab" href="#menu4">G90</a></li>
		  <li  class="col-sm-2"><a data-toggle="tab" href="#menu5">GV70</a></li>
		  <li  class="col-sm-2"><a data-toggle="tab" href="#menu6">GV80</a></li>
		</ul>
		
		<div class="tab-content">
		  <div id="menu1" class="tab-pane fade">
		    <h3>G70</h3>
		    <p><img src="${pageContext.request.contextPath}/PORTFOLIO/img2/G70.png" alt=""/></p>
		  	<a href="${pageContext.request.contextPath}/show.ge?no=3" class="btn btn-info">자세히보기</a>
		  </div>
		  
		  <div id="menu2" class="tab-pane fade active in">
		  <div class="col-sm-2"></div>
		  <div class="col-sm-10">
		    <h3>G80</h3>
		    <p><img src="${pageContext.request.contextPath}/PORTFOLIO/img2/G80.png" alt=""/></p>
		  	<a href="${pageContext.request.contextPath}/show.ge?no=4" class="btn btn-info">자세히보기</a>
		  	</div>
		  </div>
		  
		  <div id="menu3" class="tab-pane fade active in">
		  <div class="col-sm-4"></div>
		  <div class="col-sm-8">
		    <h3>G80e</h3>
		    <p><img src="${pageContext.request.contextPath}/PORTFOLIO/img2/G80e.png" alt=""/></p>
		  	<a href="${pageContext.request.contextPath}/show.ge?no=6" class="btn btn-info">자세히보기</a>
		  	</div>
		  </div>
		  
		  
		  <div id="menu4" class="tab-pane fade">
		  <div class="col-sm-6"></div>
		  <div class="col-sm-6">
		    <h3>G90</h3>
		    <p><img src="${pageContext.request.contextPath}/PORTFOLIO/img2/G90.png" alt=""/></p>
		 	<a href="${pageContext.request.contextPath}/show.ge?no=5" class="btn btn-info">자세히보기</a>
		  </div>
		  </div>
		  
		  <div id="menu5" class="tab-pane fade">
		   <div class="col-sm-8"></div>
		  <div class="col-sm-4">
		    <h3>GV70</h3>
		    <p><img src="${pageContext.request.contextPath}/PORTFOLIO/img2/GV70.png" alt=""/></p>
		  	<a href="${pageContext.request.contextPath}/show.ge?no=1" class="btn btn-info">자세히보기</a>
		  </div>
		  </div>
		  
		  <div id="menu6" class="tab-pane fade">
		  <div class="col-sm-10"></div>
		  <div class="col-sm-2">
		    <h3>GV80</h3>
		    <p><img src="${pageContext.request.contextPath}/PORTFOLIO/img2/GV80.png" alt=""/></p>
		  	<a href="${pageContext.request.contextPath}/show.ge?no=2" class="btn btn-info">자세히보기</a>
		  	
		  </div>
		  </div>
		</div>	
 	</div>
 </div>
<div class="video-wrap">
	<iframe width="100%" height="315" src="https://www.youtube.com/embed/ShpsmwERih4" title="YouTube video player" frameborder="0" 
	allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
	</iframe>	
</div>
<div class="container">
	<h3 style="text-align:center">제네시스 후기</h3>
	<div class="review r1">
	</div>
</div>
<script>
 			$(function(){
 				
 					$.ajax({
 						url:"${pageContext.request.contextPath}/PORTFOLIO/data/review.jsp" , type:"get", dataType:"json"
 						,success:function(data){
 							var items = data.items;
 							
 							
 							var title = data.items[0].title;
 							var link  = data.items[0].link;
 							var description = data.items[0].description;
 							
 							var title1 = data.items[1].title;
 							var link1  = data.items[1].link;
 							var description1 = data.items[1].description;
 							
 							var title2 = data.items[2].title;
 							var link2  = data.items[2].link;
 							var description2 = data.items[2].description;
 							
 							var tr = $("<tr>");   //<div class='col-sm-3'>
 							var br = $("<br/>")
 							var div= $("<div style'>")
 							
 							
 							var p2 = $("<h2>").html("<a href='"+link+"' title=''>"+title+"</a>");    //col-sm-3에 들어갈내용
 							var p3 = $("<p>").html(description);    //col-sm-3에 들어갈내용
 							
 							var p4 = $("<h2>").html("<a href='"+link1+"' title=''>"+title1+"</a>");
 							var p5 = $("<p>").html(description1);
 							
 							var p6 = $("<h2>").html("<a href='"+link2+"' title=''>"+title2+"</a>");
 							var p7 = $("<p>").html(description2);
 							
 							tr.append(p2).append(p3).append(br).append(p4).append(p5).append(br).append(p6).append(p7);    
 							$(".r1 ").append(tr);
 							
 						},error:function(xhr, textStatus, errorThrown){
 							$(".r1").html(textStatus + "(HTTP- " + xhr.status + "/" + errorThrown);
 						}
 					});
 				
 			});
 		</script>
 		<script>
   	$(function(){
 		if(  getCookie("subpop") != "done" ){  $("#notice").fadeIn();  }
 		else{  $("#notice").hide(); }
 		
 		$("#close").on("click" , function(){ $("#notice").fadeOut(); });
 		$("#subpop").on("click" , function(){ 
 			setCookie("subpop", "done", 1);
 			$("#notice").fadeOut(); 
 		});
   	});
   </script>
<%@ include file="inc/footer.jsp"%>
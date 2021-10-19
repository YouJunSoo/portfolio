<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/header2.jsp"%>
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
<div style="background-color:#000">
	<h3 class="mainpage_h3"style="text-align:center">OUR MODELS</h3>
	<p class="mainpage_p"style="text-align:center; color:white">역동적이면서도 우아한 디자인과 최첨단 기술을 탑재한 제네시스 브랜드의 라인업을 살펴보세요.</p>
 	<div class="container modelcontainer">
		 <ul class="nav nav-tabs  js">
		  <li class="active  col-sm-2"><a data-toggle="tab" href="#home"  id="search1">G70</a></li>
		  <li  class="col-sm-2"><a data-toggle="tab" href="#menu1">G80</a></li>
		  <li  class="col-sm-2"><a data-toggle="tab" href="#menu2">G80e</a></li>
		  <li  class="col-sm-2"><a data-toggle="tab" href="#menu3">G90</a></li>
		  <li  class="col-sm-2"><a data-toggle="tab" href="#menu4">GV70</a></li>
		  <li  class="col-sm-2"><a data-toggle="tab" href="#menu5">GV80</a></li>
		</ul>
		
		<div class="tab-content">
		  <div id="home" class="tab-pane fade">
		    <h3>G70</h3>
		    <p><img src="${pageContext.request.contextPath}/PORTFOLIO/img2/G70.png" alt=""/></p>
		  	<a href="${pageContext.request.contextPath}/show.ge?no=3" class="btn btn-info">자세히보기</a>
		  </div>
		  
		  <div id="menu1" class="tab-pane fade active in">
		  <div class="col-sm-2"></div>
		  <div class="col-sm-10">
		    <h3>G80</h3>
		    <p><img src="${pageContext.request.contextPath}/PORTFOLIO/img2/G80.png" alt=""/></p>
		  	<a href="${pageContext.request.contextPath}/show.ge?no=4" class="btn btn-info">자세히보기</a>
		  	</div>
		  </div>
		  
		  <div id="menu2" class="tab-pane fade active in">
		  <div class="col-sm-4"></div>
		  <div class="col-sm-8">
		    <h3>G80e</h3>
		    <p><img src="${pageContext.request.contextPath}/PORTFOLIO/img2/G80e.png" alt=""/></p>
		  	<a href="${pageContext.request.contextPath}/show.ge?no=6" class="btn btn-info">자세히보기</a>
		  	</div>
		  </div>
		  
		  
		  <div id="menu3" class="tab-pane fade active in">
		  <div class="col-sm-6"></div>
		  <div class="col-sm-6">
		    <h3>G90</h3>
		    <p><img src="${pageContext.request.contextPath}/PORTFOLIO/img2/G90.png" alt=""/></p>
		 	<a href="${pageContext.request.contextPath}/show.ge?no=5" class="btn btn-info">자세히보기</a>
		  </div>
		  </div>
		  
		  <div id="menu4" class="tab-pane fade active in">
		   <div class="col-sm-8"></div>
		  <div class="col-sm-4">
		    <h3>GV70</h3>
		    <p><img src="${pageContext.request.contextPath}/PORTFOLIO/img2/GV70.png" alt=""/></p>
		  	<a href="${pageContext.request.contextPath}/show.ge?no=1" class="btn btn-info">자세히보기</a>
		  </div>
		  </div>
		  
		  <div id="menu5" class="tab-pane fade active in">
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


  <%@page import="java.net.*"%>
  <%@page import="java.io.*"%>
<%	//네이버 영화 가져오기
	/// get 방식 요청 연결
	String clientId = "ttNioDlUtWb0SlRNRKdx"; // 클라이언트 아이디값
	String clientSecret = "AfRcLHehBx"; // 클라이언트 시크릿 값
	String param = "?query=" + URLEncoder.encode("제네시스 GV80 시승기", "UTF-8");	// ? 는 쿼리스트링 ( 즉 get) 방식일때 사용함
	URL url = new URL("https://openapi.naver.com/v1/search/blog.json"+ param);
	HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	/// 옵션
	conn.setRequestProperty("X-Naver-Client-Id", clientId);
	conn.setRequestProperty("X-Naver-Client-Secret", clientSecret);
	
	conn.setDoInput(true); conn.setDoOutput(true); conn.setRequestMethod("GET");
	
	/// 연결 및 데이터 받아오기 + 끊기
	if(conn.getResponseCode() == 200){		//성공했으면 그 페이지에 있는것을 한 줄씩 읽어오기
		StringBuffer buffer = new StringBuffer();
		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		String line="";
		while ((line = br.readLine()) != null){ buffer.append(line); }
		out.println(buffer.toString()); // 출력
		br.close();
		conn.disconnect();
	}
%>

<%@ include file="inc/footer.jsp"%>
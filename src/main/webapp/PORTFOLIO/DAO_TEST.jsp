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
 </head>
 <body>
 
 	<div class="container panel panel-info">
 		<h3 class="panel-heading">GENESIS_DAO_TEST2</h3>  <!-- 제조사 눌렀을 때 출력해주는 부분 -->
 		<p>제조사 눌렀을 때 출력해주는 부분</p>
 		<%@page import = "GDAO.dao" %>
 		<%@page import = "GDTO.GModel_Info_DTO" %>
 		<%-- <%
 			dao dao = new dao();
 			out.println(dao.Maker());
 		%>	--%>
 	</div>
 
 	<div class="container panel panel-info">
 		<h3 class="panel-heading">GENESIS_DAO_TEST</h3>
 		<p>차량종류 눌렀을 때 출력해주는 부분</p>
 		<%@page import = "GDAO.dao" %>
 		<%@page import = "GDTO.GModelDto" %>
 		<%--	<%
 			dao dao = new dao();
 			out.println(dao.ModelList());
 		%>	
 		--%>
 	</div>
 	
 	<div class="container panel panel-info">
 		<h3 class="panel-heading">GENESIS_DAO_TEST</h3>
 		<p>검색 눌렀을 때 해당 모델의 모든 트림 / 제원 / 가격을 출력해주는 부분</p>
 		<%@page import = "GDAO.dao" %>
 		<%@page import = "GDTO.GModel_Info_DTO" %>
 		<%--	<%
 			dao dao = new dao();
 			out.println(dao.ModelSpecification());
 		%>
 		--%>
 	</div>
 	
 	<div class="container panel panel-info">
 		<h3 class="panel-heading">GENESIS_DAO_TEST</h3>
 		<p>로그인 : 회원정보가 있는지 없는지 확인하는 부분</p>
 		<%@page import = "GDAO.dao" %>
 		<%@page import = "GDTO.dto" %>
 		<%--<%
 			dto dto = new dto();
 			dao dao = new dao();
 			dto.setEmail("junsens1@naver.com");
 			out.println(dao.login(dto));
 			%>
 		--%>
 	</div>
 	
 		<div class="container panel panel-info">
 		<h3 class="panel-heading">GENESIS_DAO_TEST</h3>
 		<p>회원정보 수정할 때 회원정보를 불러오는 부분</p>
 		<%@page import = "GDAO.dao" %>
 		<%@page import = "GDTO.dto" %>
 		<%--<%
 			dto dto = new dto();
 			dao dao = new dao();
 			dto.setName("유준수2");
 			dto.setPhone("010");
 			dto.setPass("940306");	
 			out.println(dao.confirm(dto));
 			%>--%>
 
 	</div>
 	
 	<div class="container panel panel-info">
 		<h3 class="panel-heading">GENESIS_DAO_TEST</h3>
 		<p>회원정보 수정 기능부분</p>
 		<%@page import = "GDAO.dao" %>
 		<%@page import = "GDTO.dto" %>
 		<%
 			dto dto = new dto();
 			dao dao = new dao();
 			dto.setName("유준수2");
 			dto.setPhone("010");
 			dto.setPass("940306");	
 			out.println(dao.confirm(dto));
 			%>
 
 	</div>
 </body>
</html>
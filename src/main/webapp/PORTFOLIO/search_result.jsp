<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<br>
	<br>
	<br>
	<div class="container">
	<fieldset>
		<legend>제원/가격</legend>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">모델명</th>
					<th scope="col">배기량</th>
					<th scope="col">최대출력</th>
					<th scope="col">연비</th>
					<th scope="col">출시가</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dto" items="${list}" varStatus="status">
				<tr>
					<td>${dto.model}</td>
					<td>${dto.displacement}</td>
					<td>${dto.horsepower}</td>
					<td>${dto.mileage}</td>
					<td>${dto.price}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
			<div class="form-group text-right" style="text-align:right">
				<a href="${pageContext.request.contextPath}/carousel.ge" class="btn btn-info">홈으로</a>			
			</div>		
		</fieldset>
	</div>
	<div class="fluid container_img">
			<h3 style="text-align:center">EXPERIENCE GENESIS</h3>
			<div class="well r1">
			<table class="table table-striped">
				<thead>
					<tr>
						<td scope="col"><img src="${pageContext.request.contextPath}/PORTFOLIO/img3/genesis1.png"></td>
						<td scope="col"><img src="${pageContext.request.contextPath}/PORTFOLIO/img3/genesis2.png"></td>
						<td scope="col"><img src="${pageContext.request.contextPath}/PORTFOLIO/img3/genesis3.png"></td>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
			<p style="text-align:center"><input type="button" id="add_image" value="더보기 + " class="btn btn-info"/></p>
			</div>
	</div>
	<script>
		$(function(){
			$("#add_image").on("click" , function(){
				$.ajax({
					url:"${pageContext.request.contextPath}/Ajax_Img" , type:"get" , dataType:"xml",
					success:function(data){
						
						
						/*
						for(var i=0; i<image.length; i++){
							var 	img = $(image[i]).find("img").text();
							
							var tr			= $("<tr>");
	 						var td1			= $("<td scope='col'>").html("<img src='${pageContext.request.contextPath}/PORTFOLIO/img3/"+img+"' alt=''/>");
							
	 						tr.append(td1);
 							$(".r1 thead").append(tr);
						} */
						
						var image = $(data).find("image");
						
						var tr			= $("<tr>");
						var tr2			= $("<tr>");
							console.log(data);
						var img = $(image[0]).find("img").text(); 	
						var img1 = $(image[1]).find("img").text();
						var img2 = $(image[2]).find("img").text();
						var img3 = $(image[3]).find("img").text(); 	
						var img4 = $(image[4]).find("img").text();
						var img5 = $(image[5]).find("img").text();
						
						var td1			= $("<td scope='col-sm-4'>").html("<img src='${pageContext.request.contextPath}/PORTFOLIO/img3/"+img+"' alt=''/>");
						var td2			= $("<td scope='col-sm-4'>").html("<img src='${pageContext.request.contextPath}/PORTFOLIO/img3/"+img1+"' alt=''/>");
 						var td3			= $("<td scope='col-sm-4'>").html("<img src='${pageContext.request.contextPath}/PORTFOLIO/img3/"+img2+"' alt=''/>");
 						var td4			= $("<td scope='col-sm-4'>").html("<img src='${pageContext.request.contextPath}/PORTFOLIO/img3/"+img3+"' alt=''/>");
						var td5			= $("<td scope='col-sm-4'>").html("<img src='${pageContext.request.contextPath}/PORTFOLIO/img3/"+img4+"' alt=''/>");
 						var td6			= $("<td scope='col-sm-4'>").html("<img src='${pageContext.request.contextPath}/PORTFOLIO/img3/"+img5+"' alt=''/>");
 						tr.append(td1).append(td2).append(td3);
 						tr2.append(td4).append(td5).append(td6);
 						
					
 						
 						$(".r1 thead").append(tr).append(tr2);
						/*					*/
						
						 
					}, error:function(xhr, textStatus, errorThrown){
						$(".r1 thead").html(textStatus + "(HTTP-" + xhr.status + "/" + errorThrown);
					}
				});// end ajax
			});// end click
		});//end ready
	</script>
<%@ include file="inc/footer.jsp"%>
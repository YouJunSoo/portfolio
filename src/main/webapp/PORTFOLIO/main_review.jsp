<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ include file="inc/header.jsp"%>
	<div class="container">
		<h2 style="text-align:center">제네시스 시승기</h2>
		<br/>
		<h3 style="text-align:center">제목을 클릭하면 해당페이지로 넘어갑니다.</h3>
		<div class="review r1">
		</div>
	</div>
	<script>
 			$(function(){
 					$.ajax({
 						url:"${pageContext.request.contextPath}/PORTFOLIO/data/review.jsp" , type:"get", dataType:"json"
 						,success:function(data){
 							var items = data.items;
 							
 							var title   = data.items[0].title;
 							var title1  = data.items[1].title;
 							var title2  = data.items[2].title;
 							var title3  = data.items[3].title;
 							var title4  = data.items[4].title;
 							var title5  = data.items[5].title;
 							var title6  = data.items[6].title;
 							var title7  = data.items[7].title;
 							var title8  = data.items[8].title;
 							var title9  = data.items[9].title;
 							
 							var link    = data.items[0].link;
 							var link1   = data.items[1].link;
 							var link2   = data.items[2].link;
 							var link3   = data.items[3].link;
 							var link4   = data.items[4].link;
 							var link5   = data.items[5].link;
 							var link6   = data.items[6].link;
 							var link7   = data.items[7].link;
 							var link8   = data.items[8].link;
 							var link9   = data.items[9].link;
 						
 							var description   = data.items[0].description;
 							var description1  = data.items[1].description;
 							var description2  = data.items[2].description;
 							var description3  = data.items[3].description;
 							var description4  = data.items[4].description;
 							var description5  = data.items[5].description;
 							var description6  = data.items[6].description;
 							var description7  = data.items[7].description;
 							var description8  = data.items[8].description;
 							var description9  = data.items[9].description;
 													
 							var tr = $("<tr>");   //<div class='col-sm-3'>
 							var br = $("<br/>")
 							var div= $("<div style'>")
 							
 							
 							var p2 = $("<h2>").html("<a href='"+link+"' title=''>"+title+"</a>");    //col-sm-3에 들어갈내용
 							var p3 = $("<p>").html(description);    //col-sm-3에 들어갈내용
 							
 							var p4 = $("<h2>").html("<a href='"+link1+"' title=''>"+title1+"</a>");
 							var p5 = $("<p>").html(description1);
 							
 							var p6 = $("<h2>").html("<a href='"+link2+"' title=''>"+title2+"</a>");
 							var p7 = $("<p>").html(description2);
 							
 							var p8 = $("<h2>").html("<a href='"+link3+"' title=''>"+title3+"</a>");
 							var p9 = $("<p>").html(description3);
 							
 							var p10 = $("<h2>").html("<a href='"+link4+"' title=''>"+title4+"</a>");
 							var p11 = $("<p>").html(description4);
 							
 							var p12 = $("<h2>").html("<a href='"+link5+"' title=''>"+title5+"</a>");
 							var p13 = $("<p>").html(description5);
 							
 							var p14 = $("<h2>").html("<a href='"+link6+"' title=''>"+title6+"</a>");
 							var p15 = $("<p>").html(description6);
 							
 							var p16 = $("<h2>").html("<a href='"+link7+"' title=''>"+title7+"</a>");
 							var p17 = $("<p>").html(description7);
 							
 							var p18 = $("<h2>").html("<a href='"+link8+"' title=''>"+title8+"</a>");
 							var p19 = $("<p>").html(description8);
 							
 							var p20 = $("<h2>").html("<a href='"+link9+"' title=''>"+title9+"</a>");
 							var p21 = $("<p>").html(description9);
 							
 							tr.append(p2).append(p3).append(br).append(p4).append(p5).append(br).append(p6).append(p7).append(br).append(p8).append(p9).append(br).append(p10).append(p11)
 							  .append(br).append(p12).append(p13).append(br).append(p14).append(p15).append(br).append(p16).append(p17).append(br).append(p18).append(p19).append(br).append(p20).append(p21);    
 							$(".r1 ").append(tr);
 							
 						},error:function(xhr, textStatus, errorThrown){
 							$(".r1").html(textStatus + "(HTTP- " + xhr.status + "/" + errorThrown);
 						}
 					});	
 			});
 		</script>
<%@ include file="inc/footer.jsp"%>
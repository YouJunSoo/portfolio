<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ include file="inc/header.jsp"%>
	<div class="container  mycontainer" >
		<br/>
		<br/>
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
 													
 							var tr1 = $("<div  class='row'>");   //<div class='col-sm-3'> 
 							var p2 = $("<h3>").html("<a href='"+link+"' title=''>"+title+"</a>");    //col-sm-3에 들어갈내용
 							var p3 = $("<p class='col-sm-2'>").html("<a href='"+link+"' title=''>"+"<img src='${pageContext.request.contextPath}/PORTFOLIO/img4/1/1.png' alt=''/>"+"</a>"); 
 							var p4 = $("<p class='col-sm-10'>").html("<a href='"+link+"' title=''>"+description+"</a>");    //col-sm-3에 들어갈내용
 							tr1.append(p2).append(p3).append(p4);
 							
 							var tr2 = $("<div  class='row'>"); 
 							var p4 = $("<h3>").html("<a href='"+link1+"' title=''>"+title1+"</a>");
 							var p5 = $("<p class='col-sm-2'>").html("<a href='"+link1+"' title=''>"+"<img src='${pageContext.request.contextPath}/PORTFOLIO/img4/1/2.png' alt=''/>"+"</a>"); 
 							var p6 = $("<p class='col-sm-10'>").html("<a href='"+link1+"' title=''>"+description1+"</a>");
 							tr2.append(p4).append(p5).append(p6);
 							
 							var tr3 = $("<div  class='row'>"); 
 							var p7 = $("<h3>").html("<a href='"+link2+"' title=''>"+title2+"</a>");
 							var p8 = $("<p class='col-sm-2'>").html("<a href='"+link2+"' title=''>"+"<img src='${pageContext.request.contextPath}/PORTFOLIO/img4/1/3.png' alt=''/>"+"</a>"); 
 							var p9 = $("<p class='col-sm-10'>").html("<a href='"+link2+"' title=''>"+description2+"</a>");
 							tr3.append(p7).append(p8).append(p9);
 							
 							var tr4 = $("<div  class='row'>"); 
 							var p10 = $("<h3>").html("<a href='"+link3+"' title=''>"+title3+"</a>");
 							var p11 = $("<p class='col-sm-2'>").html("<a href='"+link3+"' title=''>"+"<img src='${pageContext.request.contextPath}/PORTFOLIO/img4/1/4.png' alt=''/>"+"</a>"); 
 							var p12 = $("<p class='col-sm-10'>").html("<a href='"+link3+"' title=''>"+description3+"</a>");
 							tr4.append(p10).append(p11).append(p12);
 							
 							var tr5 = $("<div  class='row'>"); 
 							var p13 = $("<h3>").html("<a href='"+link4+"' title=''>"+title4+"</a>");
 							var p14 = $("<p class='col-sm-2'>").html("<a href='"+link4+"' title=''>"+"<img src='${pageContext.request.contextPath}/PORTFOLIO/img4/1/5.png' alt=''/>"+"</a>"); 
 							var p15 = $("<p class='col-sm-10'>").html("<a href='"+link4+"' title=''>"+description4+"</a>");
 							tr5.append(p13).append(p14).append(p15);
 							
 							var tr6 = $("<div  class='row'>"); 
 							var p16 = $("<h3>").html("<a href='"+link5+"' title=''>"+title5+"</a>");
 							var p17 = $("<p class='col-sm-2'>").html("<a href='"+link5+"' title=''>"+"<img src='${pageContext.request.contextPath}/PORTFOLIO/img4/1/6.png' alt=''/>"+"</a>"); 
 							var p18 = $("<p class='col-sm-10'>").html("<a href='"+link5+"' title=''>"+description5+"</a>");
 							tr6.append(p16).append(p17).append(p18);
 							
 							var tr7 = $("<div  class='row'>"); 
 							var p19 = $("<h3>").html("<a href='"+link6+"' title=''>"+title6+"</a>");
 							var p20 = $("<p class='col-sm-2'>").html("<a href='"+link6+"' title=''>"+"<img src='${pageContext.request.contextPath}/PORTFOLIO/img4/1/7.png' alt=''/>"+"</a>"); 
 							var p21 = $("<p class='col-sm-10'>").html("<a href='"+link6+"' title=''>"+description6+"</a>");
 							tr7.append(p19).append(p20).append(p21);
 							
 							var tr8 = $("<div  class='row'>"); 
 							var p22 = $("<h3>").html("<a href='"+link7+"' title=''>"+title7+"</a>");
 							var p23 = $("<p class='col-sm-2'>").html("<a href='"+link7+"' title=''>"+"<img src='${pageContext.request.contextPath}/PORTFOLIO/img4/1/8.png' alt=''/>"+"</a>"); 
 							var p24 = $("<p class='col-sm-10'>").html("<a href='"+link7+"' title=''>"+description7+"</a>");
 							tr8.append(p22).append(p23).append(p24);
 							
 	
 							
 							
 							
 							//tr.append(p2).append(p3).append(br).append(p4).append(p5).append(br).append(p6).append(p7).append(br).append(p8).append(p9).append(br).append(p10).append(p11)
 							//  .append(br).append(p12).append(p13).append(br).append(p14).append(p15).append(br).append(p16).append(p17).append(br).append(p18).append(p19).append(br).append(p20).append(p21);    
 							$(".r1 ").append(tr1).append(tr2).append(tr3).append(tr4).append(tr5).append(tr6).append(tr7).append(tr8);
 							
 						},error:function(xhr, textStatus, errorThrown){
 							$(".r1").html(textStatus + "(HTTP- " + xhr.status + "/" + errorThrown);
 						}
 					});	
 			});
 		</script>
<%@ include file="inc/footer.jsp"%>
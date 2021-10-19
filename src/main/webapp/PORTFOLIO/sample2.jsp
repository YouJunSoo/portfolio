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
   <style>
   .nav-tabs>li.col-sm-4{  padding:0; margin:0; }
	.js {
	    background-color: ;
	}
	.nav-tabs.js>li.active>a, .nav-tabs.js>li.active>a:focus, .nav-tabs.js>li.active>a:hover {
	    background-color: white;
	    border: 0 none;
	    color: black;
	    text-align: center;
	}   
	.nav-tabs.js>li>a {
	    color: black;
	    text-align: center;
	    border:3px solid white; 
	}
	.nav-tabs>li>a:hover {
	    border-color:black;
	    border-right:1px solid  black; 
		}	
	.nav-tabs.js>li>a:hover {
	    border-color:black;
	}	
	</style>
 </head>
 <body>
 <script>
 $(function(){
	 $("#search1").on("click" , function(){
		 $("#home").html("db에서 가져온데이터");
		 
	 });
	 
 });
 
 </script>
 	<div class="container">
		 <ul class="nav nav-tabs  js">
		  <li class="active  col-sm-5"><a data-toggle="tab" href="#home"  id="search1">제조사</a></li>
		  <li  class="col-sm-5"><a data-toggle="tab" href="#menu1">모델</a></li>
		</ul>
		
		<div class="tab-content">
		  <div id="home" class="tab-pane fade">
		    <h3>제조사</h3>
		    <p>Some content.</p>
		  </div>
		  <div id="menu1" class="tab-pane fade">
		    <h3>Menu 1</h3>
		    <p>Some content in menu 1.</p>
		  </div>
		  <div id="menu2" class="tab-pane fade">
		    <h3>Menu 2</h3>
		    <p>Some content in menu 2.</p>
		  </div>
		</div>	
 	</div>
 
 </body>
</html>
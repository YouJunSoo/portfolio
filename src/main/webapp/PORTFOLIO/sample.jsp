<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang="ko">
  <head>
     <meta  charset="UTF-8" />
     <title>HTML BASIC</title>
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  	<style>
  	.js_tmp{  border: 2px solid #000;}
  	.js_tmp select {
	    border: 0 none;
	    padding: 12px; 
	    width: 100%;
	 }	
  	.js_tmp  .col-sm-3{  border-right:1px solid #ddd;}
  	.js_tmp  .col-sm-3.mylast{ border:0 none;   background-color:#000; padding:4px }
  	.mybtn {
	    background-color: #000;
	    color: white;
	    width: 100%;
	}
	/*							*/
	/*							*/
	/*							*/
 
 	</style>
  
  </head>
  <body> 
  	<div class="container panel panel-success">
  		<h3 class="panel-heading">sample</h3>
  		<div  class="row  js_tmp">
  			<div class="col-sm-3">
  				<select><option>제조사</option></select>
  			</div>
  			<div class="col-sm-3">
  				<select><option>모델</option></select>
  			</div>
  			<div class="col-sm-3">
  				<select><option>제조사</option></select>  			
  			</div>
  			<div class="col-sm-3 mylast">
  				<input type="button"  value="검색"  class="btn mybtn"/>
  			</div>
  		</div>
  	</div>
  	
  	<!-- 					 -->
  	<!-- 					 -->
  </body>
</html>
  
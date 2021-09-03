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
 		<h3 class="panel-heading">ERROR-TEST - INDEX</h3>
 		<p><a href="<%=request.getContextPath()%>/test" class="btn btn-danger form-control">404 - /test 이경로없음</a></p>
 		<p><a href="<%=request.getContextPath()%>/basic?data=123" class="btn btn-danger form-control">500 오류안나는 페이지 basic?data=123</a></p>
 		<p><a href="<%=request.getContextPath()%>/basic?data=hello" class="btn btn-danger form-control">500 - 오류나는 페이지 basic?data=hello</a></p>
 	</div>
 </body>
</html>
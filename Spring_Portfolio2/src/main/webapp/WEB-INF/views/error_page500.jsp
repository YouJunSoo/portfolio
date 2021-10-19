<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
 		<h3 class="panel-heading">ERROR ${exception.getMessage()}</h3>
 		<ul>
 			<c:forEach items="${exception.getStackTrace()}" var="stack">
 			<li>${stack}</li>
 			</c:forEach>
 		</ul>
 	</div>
 </body>
</html>
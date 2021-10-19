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
 	<%@page import = "DBManager.DBManager" %>
 	<%@page import = "java.sql.Connection" %>
 	
 	<%
 		DBManager db = new DBManager();
		Connection conn = db.getConnection();
		if(conn != null){ out.println("dbcp연동?"); }
 	
 	%>
 </body>
</html>
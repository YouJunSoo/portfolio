<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme The Band</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="<%=request.getContextPath()%>/PORTFOLIO/js/cookie.js"></script>
  <style>
  body {
    font: 400 15px/1.8 Lato, sans-serif;
    color: #777;
  }
  h3, h4 {
    margin: 10px 0 30px 0;
    letter-spacing: 10px;      
    font-size: 20px;
    color: #111;
  }
  .container {
    padding: 80px 120px;
  }
  .person {
    border: 10px solid transparent;
    margin-bottom: 25px;
    width: 80%;
    height: 80%;
    opacity: 0.7;
  }
  .person:hover {
    border-color: #f1f1f1;
  }
  .carousel-inner img {
    -webkit-filter: none;
    filter: none;
    width: 100%;
    margin: auto;
	}
  .carousel-caption h3 {
    color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
    background: #2d2d30;
    color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
    border-top-right-radius: 0;
    border-top-left-radius: 0;
  }
  .list-group-item:last-child {
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail p {
    margin-top: 15px;
    color: #555;
  }
  .btn {
    padding: 10px 20px;
    background-color: #333;
    color: #f1f1f1;
    border-radius: 0;
    transition: .2s;
  }
  .btn:hover, .btn:focus {
    border: 1px solid #333;
    background-color: #fff;
    color: #000;
  }
  .modal-header, h4, .close {
    background-color: #333;
    color: #fff !important;
    text-align: center;
    font-size: 30px;
  }
  .modal-header, .modal-body {
    padding: 40px 50px;
  }
  .nav-tabs li a {
    color: #777;
  }
  #googleMap {
    width: 100%;
    height: 400px;
    -webkit-filter: grayscale(100%);
    filter: grayscale(100%);
  }  
  .navbar {
    font-family: Montserrat, sans-serif;
    margin-bottom: 0;
    background-color: #2d2d30;
    border: 0;
    font-size: 11px !important;
    letter-spacing: 4px;
    opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
    color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
    color: #fff !important;
  }
  .navbar-nav li.active a {
    color: #fff !important;
    background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
  }
  .open .dropdown-toggle {
    color: #fff;
    background-color: #555 !important;
  }
  .dropdown-menu li a {
    color: #000 !important;
  }
  .dropdown-menu li a:hover {
    background-color: red !important;
  }
  footer {
    background-color: #2d2d30;
    color: #f5f5f5;
    padding: 32px;
  }
  footer a {
    color: #f5f5f5;
  }
  footer a:hover {
    color: #777;
    text-decoration: none;
  }  
  .form-control {
    border-radius: 0;
  }
  textarea {
    resize: none;
  }
  .carousel-caption {
    right: 0;
    left: -70%;
    top: 10%;
    padding-bottom: 30px;
	}
  .logincontainer { padding: 80px 380px; }

	.insertfieldset {
    min-width: 0px;
    padding: 100px;
    margin: 80px;
    border: 0;
	}
 	.video-wrap{ position:relative; padding-bottom:56.25%; padding-top:30px; height:0; overflow:hidden;}
 	.video-wrap iframe,
 	.video-wrap object,
 	.video-wrap embed{ position:absolute; top:0; left:0; width:100%; height:100%}
 		
 	}
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
	.row {
    margin-right: -250px;
    margin-left: 200px;
	}
	
	.confirm_container {
    padding: 150px 360px;
}
	
	.mypage_confirmcontainer {
    padding: 100px 360px;
}
  	.editmenu select {
	    border: 0 none;
	    padding: 12px; 
	    width: 100%;
	 }	
	 .modelcontainer {
    padding: 100px 0px;
	}
	.nav-tabs li a {
    color: #fff;
	}
	.mainpage_h3{
    margin: 10px 0 30px 0;
    letter-spacing: 10px;
    font-size: 20px;
    color: #fff;
	}
	.well {
    min-height: 20px;
    padding: 0px;
    margin-bottom: 20px;
    background-color: #f5f5f5;
    border: 1px solid #e3e3e3;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgb(0 0 0 / 5%);
    box-shadow: inset 0 1px 1px rgb(0 0 0 / 5%);
	}
	.models_h3{
	margin: 10px 0 30px 0;
    letter-spacing: 10px;
    font-size: 20px;
    color: #fff;
	}
	div#notice {
    width: 300px;
    /* height: 300px; */
    position: absolute;
    left: 20%;
    top: 10%;
    padding: 0 20px;
    background-color: rgba(0,0,0,0.7);
    color: white;
	}
		div#notice img { width:100%;}
		
	/*    20210826  */
	.mycontainer{padding:0 }		
	
	.mycontainer  .row   a {
	    color: #333;
	    font-size: 15px; 
	}
	.mycontainer  .row h3 {
    text-align: center;
	}
	.mycontainer .row {
    margin: 0;
    border-top: 1px solid #bbb;
	}
  </style>
  
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <p><a href="<%=request.getContextPath()%>/Gimg"><img src="${pageContext.request.contextPath}/PORTFOLIO/img/genesis.png"/></a>GENESIS</p>
    </div>
   <div class="collapse navbar-collapse" id="myNavbar">
     <ul class="nav navbar-nav navbar-right"> 
        <li><a href="<%=request.getContextPath()%>/review.ge">시승기</a></li>
        <c:if test="${sessionScope.loginSession  == null}">  <!-- -->
        <li><a href="<%=request.getContextPath()%>/insert_view.ge">회원가입</a></li>
        </c:if>
        <c:if test="${sessionScope.loginSession  == null}">  <!-- -->
        <li><a href="<%=request.getContextPath()%>/login_view.ge">로그인</a></li>
        </c:if>
        <c:if test="${sessionScope.loginSession  != null}">  <!-- -->
        <li><a href="<%=request.getContextPath()%>/logout.ge">로그아웃</a></li>
        </c:if>
        <li><a href="<%=request.getContextPath()%>/mypage_confirm.ge">마이페이지</a></li>
      	<c:if test="${sessionScope.loginSession  != null}">  <!-- -->
        <li><a href="<%=request.getContextPath()%>/report_view.ge">report</a></li>
        </c:if>
      </ul>
    </div>
  </div>
</nav>
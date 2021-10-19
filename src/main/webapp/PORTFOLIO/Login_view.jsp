<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/header.jsp"%>
<div>
	<br/>
	<br/>
	<div class="container logincontainer">
		<h3 class="panel-heading text-center">
		<strong>GENESIS 로그인</strong></h3>
		<form action="${pageContext.request.contextPath}/login.ge" method="post">
			<div class="form-group">
				<input type="text" id = userid name = "userid" placeholder="이메일" class="form-control">
			</div>
			
			<div class="form-group">
				<input type="text" id = userpass name = "userpass" placeholder="비밀번호" class="form-control">
			</div>
			
			<div class="form-group text-right" style="text-align:center">
				<a href="${pageContext.request.contextPath}/insert_view.ge" class="btn btn-info">회원가입</a>
				<input type="submit" value="LOGIN" class="btn btn-danger"/>			
			</div>
			
			<div style="text-align:center">
				<p>
 					<a href="https://kauth.kakao.com/oauth/authorize?
						client_id=77f3bf02ab542837a2cf58dbbd1c4e42&redirect_uri=http://localhost:8181/Portfolio_GENESIS/kakao_login&response_type=code">
						<img src="${pageContext.request.contextPath}/PORTFOLIO/img/kakao_login.png" alt=""/>
					</a>
 				</p>
			</div>
		</form>
	</div>
</div>
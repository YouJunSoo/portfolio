<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/header.jsp"%>
	<div class="container insertcontainer">
		<br/>
		<br/>
			<h2 class="panel-heading text-center">가입 정보 입력</h2>
			<form action="insert.ge" method = "post" id = "form">
				<fieldset class="fieldset insertfieldset">
					<h3 class="text-center">로그인 정보 및 가입정보를 입력하세요.</h3>
					<div class="form-group">
						<label for = "name">이름</label>
						<input type="text" id = "name" name = "name" class="form-control">
					</div>
					
					<div class="form-group">
						<label for = "email">이메일</label>
						<input type="text" id = "email" name = "email" class="form-control">
					</div>
					
					<div class="form-group">
						<label for = "pass">비밀번호</label>
						<input type="text" id = "pass" name = "pass" class="form-control">
					</div>
					
					<div class="form-group">
						<label for = "phone">연락처</label>
						<input type="text" id = "phone" name = "phone" class="form-control">
					</div>
					
					<div class="form-group">
						<label for = "address">주소</label>
						<input type="text" id = "address" name = "address" class="form-control">
					</div>
					
					<div class="form-group">
						<label for = "car">소유하고 계신 차량</label>
						<input type="text" id = "car" name = "car" class="form-control">
					</div>
					
					<div class="form-group text-right">
						<a href="login_view.ge" class="btn btn-info">로그인 페이지로 이동</a>
						<input type="submit" id = "enter" value="입력" class="btn btn-info"/>
						
					</div>
				</fieldset>
			</form>
	</div>
<%@ include file="inc/footer.jsp"%>
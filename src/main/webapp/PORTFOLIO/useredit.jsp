<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/header.jsp" %>
<%@ page import = "java.sql.*"%>
	<div class="container" style="margin-top:5%; min-height:500px">
			<form action="${pageContext.request.contextPath}/useredit_success.ge" method="post" id="form">
				<fieldset>
					<legend>회원정보 수정페이지 입니다</legend>
					<div class="form-group">
						<label for="name">이름</label>
						<input type="text" name="name" id="name" class="form-control" value="${dto.name}" >
					</div>
					
					<div class="form-group">
						<label for="email">아이디</label>
						<input type="text" name="email" id="email" class="form-control" value="${dto.email}" >
					</div>
					
					<div class="form-group">
						<label for="pass">비밀번호</label>
						<input type="password" name="pass" id="pass" class="form-control">
						
					</div>
					
					<div class="form-group">
						<label for="phone">전화번호</label>
						<input type="text" name="phone" id="phone" class="form-control" value="${dto.phone}">
					</div>
					
					<div class="form-group">
						<label for="address">주소지</label>
						<textarea name="address" id="address" class="form-control" >${dto.address}</textarea>
					</div>
					
					<div class="form-group">
						<label for="car">차량</label>
						<textarea name="car" id="car" class="form-control" >${dto.car}</textarea>
					</div>
					
					<div class="form-group text-right">
						
						<input type="submit" value="수정" class="btn btn-info">
						<a href="${pageContext.request.contextPath}/carousel.ge" class="btn btn-info">홈으로</a>
					</div>
				</fieldset>
			</form>
			<script>
				$(function(){
					$("#form").submit(function(){
						if( $("#bpass").val()==""){
							alert('비밀번호를 입력해주세요'); $("#bpass").focus(); return false; 
						}
					});
				});
			</script>
	</div>
<%@ include file="inc/footer.jsp" %>
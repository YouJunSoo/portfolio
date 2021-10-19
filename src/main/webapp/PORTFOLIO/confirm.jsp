<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/header.jsp" %>
<%@ page import = "java.sql.*"%>

	<div class="container confirm_container">
		<h3>개인정보 확인</h3>
			<div class="panel">
				<div class="panel-body">
				<span class="glyphicon glyphicon-plus">이름</span>
				<p class="form-control">${dto.name}</p>
				</div>
		</div>
		
		<div class="panel">
				<div class="panel-body">
				<span class="glyphicon glyphicon-plus">이메일</span>
				<p class="form-control" readonly>${dto.email}</p>
				</div>
		</div>
		
		<div class="panel">
				<div class="panel-body">
				<span class="glyphicon glyphicon-plus">연락처</span>
				<p class="form-control" readonly>${dto.phone}</p>
				</div>
		</div>
		
		<div class="panel">
				<div class="panel-body">
				<span class="glyphicon glyphicon-plus">주소지</span>
				<textarea class="form-control" readonly>${dto.address}</textarea>
			</div>
		</div>
		
		<div class="panel">
				<div class="panel-body">
				<span class="glyphicon glyphicon-plus">차량</span>
				<textarea class="form-control" readonly>${dto.car}</textarea>
			</div>
		</div>
		
		<div class="text-right">
			<a href="${pageContext.request.contextPath}/Gimg" class="btn btn-info">메인페이지로</a>
			<a href="${pageContext.request.contextPath}/delete_view.ge" class="btn btn-info">회원탈퇴</a>
			<a href="${pageContext.request.contextPath}/useredit.ge?phone=${dto.phone}" class="btn btn-info">회원정보 수정</a>	
		</div>
		
	</div>
<%@ include file="inc/footer.jsp" %>
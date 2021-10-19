<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/header.jsp"%>
<div>
	<br/>
	<br/>
	<div class="container mypage_confirmcontainer">
		<form action="confirm.ge" method="post" id = "form">
		<h3 class="panel-heading text-center"><strong>확인을 위해 이름과 연락처 그리고 비밀번호를 입력해주세요</strong></h3>
		<div class="form-group">
			<label for="cname">이름</label>
			<input type="text" id="cname" name= "cname" class="form-control" placeholder="이름">
		</div>
		
		<div class="form-group">
			<label for="cphone">연락처</label>
			<input type="text" id="cphone" name= "cphone" class="form-control" placeholder="연락처">
		</div>
		
		<div class="form-group">
			<label for="cpass">비밀번호</label>
			<input type="text" id="cpass" name= "cpass" class="form-control" placeholder="비밀번호">
		</div>
		
		<div class="form-group text-right">
			<input type="submit" id = "enter" value="다음" class="btn btn-info"/>	
			<a href="${pageContext.request.contextPath}/Gimg" class="btn btn-info">메인 페이지로</a>						
		</div>
		
		</form>
	</div>
</div>
<%@ include file="inc/footer.jsp"%>
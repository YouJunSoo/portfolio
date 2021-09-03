<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/header.jsp" %>
	<div class="container mysub">
		<h3>QNA 등록</h3>
		<form action="${pageContext.request.contextPath}/board2/write2" method = "post"  id="form">
			<fieldset>
			<legend>QNA등록</legend>
			<div class="form-group">
				<label for="bname">이름 </label>
				<input type="text" id = "bname" name = "bname" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="bpass">비밀번호</label>
				<input type="text" id = "bpass" name = "bpass" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="btitle">제목</label> 
				<textarea id = "btitle" name = "btitle" class="form-control"></textarea>
			</div>
			
			<div class="form-group">
				<label for="bcontent">내용</label>
				<textarea id = "bcontent" name = "bcontent" class="form-control"></textarea>
			</div>
			
			<div class="form-group text-right">
				<input type="submit" id = "enter" value="입력" class="btn btn-danger" />
				<a href="${pageContext.request.contextPath}/board2/list2" class="btn btn-info">취소</a>
				<a href="${pageContext.request.contextPath}/board2/list2" title="목록으로이동" class="btn btn-default" >목록보기</a>
			</div>
			
			</fieldset>
		</form>
	</div>
<%@ include file="inc/footer.jsp" %>
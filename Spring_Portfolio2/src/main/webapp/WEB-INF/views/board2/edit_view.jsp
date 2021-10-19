<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/header.jsp" %>
<%@ page import = "java.sql.*"%>
	<div class="container" style="margin-top:5%; min-height:500px">
		<h3>MULTIBOARD수정하기</h3>  
			<form action="${pageContext.request.contextPath}/board2/edit2?bno=${dto.bno}"  method="post" id="form">
				<fieldset>
					<legend>수정 하기</legend>
					<div class="form-group">
						<label for="bname">이름</label>
						<input type="text" name="bname" id="bname" class="form-control" value="${dto.bname}" readonly>
					</div>
					
					<div class="form-group">
						<label for="bpass">비밀번호</label>
						<input type="password" name="bpass" id="bpass" class="form-control">
						
					</div>
					
					<div class="form-group">
						<label for="btitle">제목</label>
						<input type="text" name="btitle" id="btitle" class="form-control" value="${dto.btitle}">
					</div>
					
					<div class="form-group">
						<label for="bcontent">내용</label>
						<textarea name="bcontent" id="bcontent" class="form-control" >${dto.bcontent}</textarea>
					</div>
					
					
					<div class="form-group text-right">
						
						<input type="submit" value="수정" class="btn btn-info">
						<a href="${pageContext.request.contextPath}/board2/list2" class="btn btn-info">목록보기</a>
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
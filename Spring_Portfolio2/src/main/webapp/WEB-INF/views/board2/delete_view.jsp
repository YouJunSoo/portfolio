<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="inc/header.jsp" %>
<%@ page import = "java.sql.*"%>
	<div class="container" style="margin-top:5%; min-height:500px">
		<h3>SpringBoard 삭제</h3>
			<form action="${pageContext.request.contextPath}/board2/delete2?bno=${boardDto.bno}" method="post" id="form"> <!-- 보드 컨트롤러의 삭제폼에서 데이터를 보내주는 Model을 사용하지 않아서 BoardDto 의 첫자 소문자로 boardDto 로 써줘야 제대로 작동함 -->
				<div class="form-group">
					<label for="bpass">비밀번호</label>
					<input type="password" name = "bpass" id = "bpass" class="form-control">
					<span>(*)삭제시 필수입니다 </span>
				</div>
					
				<div class="form-group text-right">
					<input type="submit" value="삭제" class="btn btn-info">
					<a href="${pageContext.request.contextPath}/board2/list2" class="btn btn-info">취소</a>
				</div>
			</form>
			<script>
				$(function(){
					$("#form").submit(function(){
						if( $("#bpass").val()==""){
							alert("비밀번호를 입력해주세요"); $("#bpass").focus(); return flase;
						}
					});
				});
			</script>				
	</div>
<%@ include file="inc/footer.jsp" %>
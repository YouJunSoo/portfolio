<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/header.jsp" %>
<%@ page import = "java.sql.*"%>
<script>
	$(function(){
		var result = '${success}'; console.log(result);<%-- 전 페이지의 addFlashAttriburte 안의 success 와 일치시켜줘야 값이 넘어옴--%>
		if(result == 'fail'){ alert('비밀번호를 확인해주세요.'); history.go(-1); }
		else if( result.length != 0){ alert (result); }
	});
</script>
	<div class="container">
		<h3>상세보기</h3>
			<div class="panel">
				<div class="panel-body">
				<span class="glyphicon glyphicon-plus">조회수</span>
				<p class="form-control">${dto.bhit}</p>
				</div>
		</div>
		
		<div class="panel">
				<div class="panel-body">
				<span class="glyphicon glyphicon-plus">이름</span>
				<p class="form-control">${dto.bname}</p>
				</div>
		</div>
		
		<div class="panel">
				<div class="panel-body">
				<span class="glyphicon glyphicon-plus">제목</span>
				<p class="form-control">${dto.btitle}</p>
				</div>
		</div>
		
		<div class="panel">
				<div class="panel-body">
				<span class="glyphicon glyphicon-plus">내용</span>
				<textarea class="form-control">${dto.bcontent}</textarea>
			</div>
		</div>
		
		<div class="text-right">
			<a href="${pageContext.request.contextPath}/board2/edit_view2?bno=${dto.bno}" class="btn btn-info">수정</a>
			<a href="${pageContext.request.contextPath}/board2/delete_view2?bno=${dto.bno}" class="btn btn-info">삭제</a>
			<a href="${pageContext.request.contextPath}/board2/list2" class="btn btn-info">목록보기</a>
		</div>
		
	</div>
<%@ include file="inc/footer.jsp" %>
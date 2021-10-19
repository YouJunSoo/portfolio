<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="inc/header.jsp" %>
<script>
	$(function(){
		var result = '${success}'; console.log(result);<%-- 전 페이지의 addFlashAttriburte 안의 success 와 일치시켜줘야 값이 넘어옴--%>
		if(result == 'fail'){ alert('비밀번호를 확인해주세요.'); history.go(-1); }
		else if( result.length != 0){ alert (result); }
	});
</script>

	<div class="container" style="margin-top:5%; min-height:500px">
		<h3>SpringBoard</h3>
		
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">BNO</th>
					<th scope="col">TITLE</th>
					<th scope="col">WRITER</th>
					<th scope="col">DATE</th>
					<th scope="col">HIT</th>
				</tr> 
			</thead>		
			<tbody>
				<c:forEach var="dto" items="${list}" varStatus="status">
				<tr>
					<td>${list.size()-status.index}</td>
					<td><a href="${pageContext.request.contextPath}/board2/detail_view2?bno=${dto.bno}">${dto.btitle}</a></td>
					<td>${dto.bname}</td>
					<td>${dto.bdate}</td>
					<td>${dto.bhit}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<p class="text-right"><a href="${pageContext.request.contextPath}/board2/write_view2" class="btn btn-danger">글쓰기</a></p>
	</div>
<%@ include file="inc/footer.jsp" %>
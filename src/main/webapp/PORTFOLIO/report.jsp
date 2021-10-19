<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ include file="inc/header.jsp"%>
	<div class="container">
 		<form action="${pageContext.request.contextPath}/report.ge" method="post">
 			<fieldset>
 				<legend>관리자에게 오류내용 전송</legend>
 				<table class="table table-striped">
 					<caption>에러발생시 이메일 보내주세요</caption>
 					<tbody>
 						<tr>
 							<th class="row"><label for="subject">TITLE</label></th>
 							<td><input type="text" name="subject" id = "subject" class="form-control" placeholder="제목"/></td>
 						</tr>
 						<tr>
 							<th class="row"><label for="content">Content</label></th>
 							<td><textarea name ="content" id="content" class="form-control" rows="10" cols="40" placeholder="어디서 어떻게 오류가 발생했는지 상세하게 적어주세요."></textarea></td>
 						</tr>
 						<tr>
 							<td colspan="2"><input type="submit" value="전송" class="btn btn-success"/></td>
 						</tr>
 					</tbody>
 				</table>
 			</fieldset>
 		</form>
 		<script>
 		$(function(){
 			CKEDITOR.replace( 'content' );
 		});	
 		</script>
 	</div>
<%@ include file="inc/footer.jsp"%>
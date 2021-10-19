package CONTROLLER;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import GDAO.dao;
import GDTO.dto;

public class GInsertAction implements GAction {

	@Override
		public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			dto dto = new dto();
			dao dao = new dao();
			dto.setName(request.getParameter("name"));
			dto.setEmail(request.getParameter("email"));
			dto.setPass(request.getParameter("pass"));
			dto.setPhone(request.getParameter("phone"));
			dto.setAddress(request.getParameter("address"));
			dto.setCar(request.getParameter("car"));
			int result = dao.insert(dto);
			
			if(result>0) {
				out.println("<script>alert('회원가입 완료됐습니다.'); location.href='"+request.getContextPath()+"/login_view.ge';</script>");
			}else {
				out.println("<script>alert('관리자에게 문의바랍니다.'); history.go(-1);</script>");	
			}
			
	}
	
}

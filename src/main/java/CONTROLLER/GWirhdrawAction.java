package CONTROLLER;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import GDAO.dao;
import GDTO.dto;

public class GWirhdrawAction implements GAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		dto dto = new dto();
		dao dao = new dao();
		dto.setEmail(request.getParameter("cemail"));
		dto.setPass(request.getParameter("cpass"));
		
		if(dao.withdraw(dto)>0) {
			out.println("<script>alert('탈퇴 성공했습니다.'); location.href='"+request.getContextPath()+"/carousel.ge';</script>");
			HttpSession session = request.getSession();
			session.invalidate();
		}
		else {
			out.println("<script>alert('관리자에게 문의바랍니다.'); history.go(-1);</script>");
		}
	}

}

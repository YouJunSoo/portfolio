package CONTROLLER;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import GDTO.dto;

public class GLogoutAction implements GAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		dto dto = new dto();
		HttpSession session = request.getSession();
		session.invalidate();
		out.println("<script>location.href='"+request.getContextPath()+"/carousel.ge';</script>");
	}

}

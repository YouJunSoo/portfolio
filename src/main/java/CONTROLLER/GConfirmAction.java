package CONTROLLER;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import GDAO.dao;
import GDTO.dto;

public class GConfirmAction implements GAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		dto dto = new dto();
		dao dao = new dao();
		dto.setName(request.getParameter("cname"));
		dto.setPhone(request.getParameter("cphone"));
		dto.setPass(request.getParameter("cpass"));
		System.out.println(request.getParameter("cname"));
		System.out.println(request.getParameter("cphone"));
		System.out.println(request.getParameter("cpass"));
		request.setAttribute("dto", dao.confirm(dto));
	}

}

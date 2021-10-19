package CONTROLLER;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import GDAO.dao;
import GDTO.dto;

public class GEditViewAction implements GAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		dao dao = new dao();
		dto dto = new dto();
		dto.setPhone(request.getParameter("phone"));
		request.setAttribute("dto", dao.confirm2(dto));
	}
}

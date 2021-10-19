package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import GDAO.dao;
import GDTO.GModel_Info_DTO;

public class GShowAction implements GAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		dao dao = new dao();
		//GModel_Info_DTO dto = new GModel_Info_DTO();
		//dto.setNo(Integer.parseInt(request.getParameter("no")));
		ArrayList<GModel_Info_DTO> list = dao.ModelSpecification(Integer.parseInt(request.getParameter("no")));
		request.setAttribute("list", list);
 
	}

}

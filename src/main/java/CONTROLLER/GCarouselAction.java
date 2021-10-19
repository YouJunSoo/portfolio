package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.genesis_img.Genesis_img_dto;

import GDAO.dao;

public class GCarouselAction implements GAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text.html; charset=utf-8");
		dao dao = new dao();
		Genesis_img_dto dto = new Genesis_img_dto();
		
		ArrayList<Genesis_img_dto> list = dao.carousel(dto);
 
		request.setAttribute("list", list);
		System.out.println(".............. GCarouselAction controller : " + list);
	}

}

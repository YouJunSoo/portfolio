package CONTROLLER;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import GDAO.dao;
import GDTO.dto;

public class GLoginAction implements GAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		dto dto = new dto();
		dao dao = new dao();
		dto.setEmail(request.getParameter("userid"));
		dto.setPass(request.getParameter("userpass"));
		System.out.println(request.getParameter("userid") + 1);
		System.out.println(request.getParameter("userpass") + 2);
		int result = dao.login(dto);
		System.out.println(result);
		
		
		if(dao.login(dto)>0) {
			//여기에서 세션설정
			HttpSession session = request.getSession();
			session.setAttribute("loginSession", dto.getEmail());
			out.println("<script>alert('로그인 되었습니다'); location.href='"+request.getContextPath()+"/carousel.ge';</script>");
		}		//																				carousel.ge  >>> 캐로셀호출하는 경로....
		else {
			out.println("<script>alert('아이디와 비밀번호가 일치하지 않습니다.'); history.go(-1);</script>");
		}
		
		
		/// 이 자리에서 캐로셀부르는 ge를 한번 더 실행시키라는 말씀이신가요
	}

}

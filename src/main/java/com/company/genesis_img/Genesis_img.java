package com.company.genesis_img;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Gimg") // 로그인 완료 전 메인페이지
public class Genesis_img extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Genesis_img() { super();  }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text.html; charset=utf-8");
		
		///서블릿 호출 : ImgUsing001(db호출)
		Connection c = null; PreparedStatement p = null; ResultSet r = null;
		String sql = "select * from genesis_img";
		ArrayList<Genesis_img_dto> list = new ArrayList<Genesis_img_dto>();
		DBManager db = new DBManager();
		
		try {
			c = db.getConnection();
			p = c.prepareStatement(sql);
			r = p.executeQuery();
			while(r.next()) {
				list.add(new Genesis_img_dto(r.getInt("no") , r.getString("title") 
						            , r.getString("name") , r.getString("description") , r.getString("img")));	
			}
		}catch(Exception e) { e.printStackTrace();
		}finally {
			if(r != null) { try {r.close();}catch(Exception e) {e.printStackTrace();}}
			if(p != null) { try {p.close();}catch(Exception e) {e.printStackTrace();}}
			if(c != null) { try {c.close();}catch(Exception e) {e.printStackTrace();}}
		}
		System.out.println(list);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/PORTFOLIO/mainpage.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}

package com.company.ajax_img;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBManager.DBManager;

@WebServlet("/Ajax_Img")
public class Ajax_Img extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Ajax_Img() { super();  }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		Connection c = null; PreparedStatement p = null; ResultSet r = null;
		int cnt = -1; String result = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n" + "<images>\r\n";
		
		try {
			DBManager db = new DBManager();
			c = db.getConnection();
			if(c != null) { System.out.println("db연동성공! :  1"); }
		}catch(Exception e) { e.printStackTrace(); }
		
		try {
			p = c.prepareStatement("select * from genesis_ajax_img");
			r = p.executeQuery();
			while(r.next()) {
				result += "<image>\r\n"
						+"<no>" + r.getInt("no") + "</no>\r\n"
						+"<img>" + r.getString("img") + "</img>\r\n"
						+"</image>\r\n";
			}
			result +="</images>";
			out.println(result);
		}catch(Exception e) { e.printStackTrace();
		}finally {
			if(r != null) { try { r.close(); }catch(Exception e) { e.printStackTrace(); }}
			if(p != null) { try { p.close(); }catch(Exception e) { e.printStackTrace(); }}
			if(c != null) { try { c.close(); }catch(Exception e) { e.printStackTrace(); }}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

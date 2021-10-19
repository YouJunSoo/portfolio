package CONTROLLER;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class GKakaoAction implements GAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String requestUrl = "https://kauth.kakao.com/oauth/token?"
				+ "grant_type=authorization_code&"
				+ "client_id=77f3bf02ab542837a2cf58dbbd1c4e42&"
				+ "redirect_uri=http://localhost:8181/Portfolio_GENESIS/kakao_login2&"
				+ "code=" + request.getParameter("code");
		URL url = new URL(requestUrl);
		HttpURLConnection conn = (HttpURLConnection)url.openConnection();
		conn.setDoInput(true);
		conn.setDoOutput(true);
		conn.setRequestMethod("POST");
		conn.setRequestProperty("Content-type", "application/json;charset=utf-8");
		
		BufferedReader br;
		StringBuffer res = new StringBuffer();
		String inputLine="";
		int responsecode = conn.getResponseCode();
		if(responsecode == 200) {
			br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			while( (inputLine = br.readLine()) != null) { res.append(inputLine); }
			br.close();
			System.out.println(res.toString());
		}
		int start 	= res.toString().indexOf("access_token")+15;
		int end 	= res.toString().indexOf("token_type")-3;
		String access_token = res.toString().substring(start,end);
		
		System.out.println(access_token);
		HttpSession session = request.getSession();
		session.setAttribute("loginSession", access_token);
		PrintWriter out = response.getWriter();
		out.println("<script>alert('로그인 되었습니다'); location.href='"+request.getContextPath()+"/carousel.ge';</script>");

	}

}

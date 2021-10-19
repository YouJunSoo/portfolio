package CONTROLLER;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GMailAction implements GAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		/////////////////////////////////////////////////데이터 받아옴
		String host="smtp.naver.com";
		String user="junsens1@naver.com";
		String password="NPDJ9SX4LJCQ";
		///////////////////////////////////////////////// 받는사람 설정 ( 실습확인용 - 선생님 이메일로 적기)
		String to = "junsens1@naver.com";		// 이메일 인증하기로 활용 가능
		
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", 587);
		
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {

				return new PasswordAuthentication(user,password);
			}	
		});		
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject(subject);	//메일 제목
			message.setContent(content, "text/html; charset=euc-kr"); // 메일 내용
			Transport.send(message);
			PrintWriter out = response.getWriter();
			out.println("<script>alert('메일 전송됨'); location.href='"+request.getContextPath()+"/carousel.ge'; </script>");
		} catch (Exception e) { e.printStackTrace(); } 

		}

}

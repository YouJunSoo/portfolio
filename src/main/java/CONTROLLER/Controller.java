package CONTROLLER;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
@WebServlet("*.ge")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Controller() { super();  }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		action(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		action(request, response);
	}
	private void action(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String path = request.getRequestURI().substring(request.getContextPath().length());
		String view = "";
		GAction command = null;
		if(path.equals("/insert.ge")) {
			command = new GInsertAction(); command.execute(request, response);			
		}
		else if(path.equals("/login_view.ge")) {  
			request.getRequestDispatcher("PORTFOLIO/Login_view.jsp").forward(request, response);	
		}
		else if(path.equals("/insert_view.ge")) {
			request.getRequestDispatcher("PORTFOLIO/insert_view.jsp").forward(request, response);
		}
		else if(path.equals("/mypage_confirm.ge")) {
			request.getRequestDispatcher("PORTFOLIO/mypage_confirm.jsp").forward(request, response);
		}
		else if(path.equals("/confirm.ge")) {
			command = new GConfirmAction(); command.execute(request, response);
			request.getRequestDispatcher("PORTFOLIO/confirm.jsp").forward(request, response);
		}
		/*else if(path.equals("/login.ge")) {
			request.getRequestDispatcher("PORTFOLIO/mainpage.jsp").forward(request, response);
		}
		*/
		else if(path.equals("/delete_view.ge")) {
			request.getRequestDispatcher("PORTFOLIO/delete_view.jsp").forward(request, response);
		}
		else if(path.equals("/withdraw.ge")) {
			command = new GWirhdrawAction(); command.execute(request, response);			
		}
		else if(path.equals("/edit_view.ge")) {
			request.getRequestDispatcher("PORTFOLIO/edit_view.jsp").forward(request, response);	
		}
		else if(path.equals("/show.ge")) {
			command = new GShowAction(); command.execute(request, response);
			request.getRequestDispatcher("PORTFOLIO/search_result.jsp").forward(request, response);
		}
		else if(path.equals("/carousel.ge")) { 
			command = new GCarouselAction(); command.execute(request, response);   ///// 캐로셀부르는 .ge 불러서 dispatchㄷㄱ로 처리
			request.getRequestDispatcher("PORTFOLIO/mainpage.jsp").forward(request, response);
		}
		else if(path.equals("/login.ge")) {
			command = new GLoginAction(); command.execute(request, response);	/// 로그인하는   ~.ge에서 알림창띄운후	
		}
		else if(path.equals("/main.ge")) {
			command = new GCarouselAction(); command.execute(request, response);
			request.getRequestDispatcher("PORTFOLIO/mainpage.jsp").forward(request, response);	
		}
		else if(path.equals("/useredit.ge")) {
			command = new GEditViewAction(); command.execute(request, response);	/// 로그인하는   ~.ge에서 알림창띄운후	
			request.getRequestDispatcher("PORTFOLIO/useredit.jsp").forward(request, response);
		}
		else if(path.equals("/useredit_success.ge")) {
			command = new GEditAction(); command.execute(request, response);
		}
		else if(path.equals("/logout.ge")) {
			command = new GLogoutAction(); command.execute(request, response);	/// 로그인하는   ~.ge에서 알림창띄운후	
		}
		else if(path.equals("/report.ge")) {
			command = new GMailAction(); command.execute(request, response);	/// 로그인하는   ~.ge에서 알림창띄운후	
		}
		else if(path.equals("/report_view.ge")) {  
			request.getRequestDispatcher("PORTFOLIO/report.jsp").forward(request, response);	
		}
		else if(path.equals("/kakao_login.ge")) {
			command = new GKakaoAction(); command.execute(request, response);	/// 로그인하는   ~.ge에서 알림창띄운후	
		}
		else if(path.equals("/review.ge")) {
			request.getRequestDispatcher("PORTFOLIO/main_review2.jsp").forward(request, response);	
		}
	}
}

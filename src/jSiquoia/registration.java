package jSiquoia;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class registration
 */
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registration() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String newusr= request.getParameter("name");
		String newgender = request.getParameter("gender");
		String newemail = request.getParameter("email_name");
		String newpw = request.getParameter("pwd_name");
		String confirmPw = request.getParameter("confirm_pw");
		

		try {

			UserBean user = new UserBean();
			user.setName(request.getParameter("uname"));
			user.setPassword(request.getParameter("upass"));

			user = UserDAO.login(user);

			if (user.isValid()) {

				HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionUser", user);
				response.sendRedirect("userLog.jsp"); // logged-in page
			}

			else
				response.sendRedirect("invalidLog.jsp"); // error page
		}

		catch (Throwable theException) {
			System.out.println(theException);
		}
		
	}

}

package jSiquoia;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

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
		String msg;

		try {

			
			String newusr= request.getParameter("name");
			String newemail = request.getParameter("email_name");
			String newpw = request.getParameter("pwd_name");
			String confirmPw = request.getParameter("confirm_pw");

			UserBean user = new UserBean();
			user.setName(newusr);
			user.setEmail(newemail);
			// default values for user 100 siquoia tokens and level 1 accesslevel
			// user (0 for DBA)
			user.setToken(100);
			user.setLevel(1);
			//DATE IS SET ON DATABASE MYSQL AUTOMATICALLY USING TRIGGER DONT SET IT HERE
			
			if(newpw.equals(confirmPw))
			{
				user.setPassword(newpw);
				msg = "Account Successfully Created";			
			}
			else
				msg = "Password are not the same";	
			

			user = UserDAO.registration(user);

			if (user.isValid()) {
				HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionUser", user);
				//response.sendRedirect("errorpage.jsp"); // 
			}

			else
				; // error page
			
			
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<font color=#fff size=100px>" +msg+"</font>");	
			
			
		}

		catch (Throwable theException) {
			System.out.println(theException);
		}
		

	}
	
	
	

}

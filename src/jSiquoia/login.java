package jSiquoia;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 * Handles login when one submit username and password
 */
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public login() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	//GET
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
		
		try {

			//Instaniates a javabean of UserBean to be used (Object)
			UserBean user = new UserBean();
			//Set info to the javabean object
			//request.getParamater is the getter for the name of the button, radio, textfield etc.
			//ex. look at login.jsp   <input name="umail"/> ... getParameter gets the values user have inserted
			user.setEmail(request.getParameter("umail"));
			user.setPassword(request.getParameter("upass"));
			
			System.out.print(user.getEmail());
			
			//UserDAO (DATA ACCESS OBJECT)  validates the inputs from the GET note * the .login
			if(user.getEmail() != "" || user.getPassword() != "" )				
			{
					user = UserDAO.login(user);
				//If valid go to logged phase page
				if (user.isValid()) {
	
					HttpSession session = request.getSession(true);
					session.setAttribute("currentSessionUser", user);
					response.sendRedirect("loginValid.jsp"); // logged-in page
				}
				//Else go to error page
				else
					response.sendRedirect("loginInvalid.jsp"); // error page
			}
			//Else go to error page
			else
				response.sendRedirect("loginInvalid.jsp"); // error page
		}

		catch (Throwable theException) {
			System.out.println(theException);
		}
	}
}

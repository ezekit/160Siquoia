package jSiquoia;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
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
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
			       response.sendRedirect("index.jsp");
	}
	

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {


	    PrintWriter pWriter = response.getWriter();  
		
		try {

			//Instaniates a javabean of UserBean to be used (Object)
			UserBean user = new UserBean();
			//Set info to the javabean object
			//request.getParamater is the getter for the name of the button, radio, textfield etc.
			//ex. look at login.jsp   <input name="umail"/> ... getParameter gets the values user have inserted
			String input_umail = request.getParameter("umail");
			String input_upass = request.getParameter("upass");
			
			user.setEmail(input_umail);
			user.setPassword(input_upass);
			

			//UserDAO (DATA ACCESS OBJECT)  validates the inputs from the GET note * the .login
			if(user.getEmail() != "" || user.getPassword() != "" )				
			{
				
				user = UserDAO.login(user);
				//If valid go to logged phase page
				if (user.isValid()) {
	
					HttpSession session = request.getSession(true);
					//binds object to session (String name, Object ob)
					session.setAttribute("currUser", input_umail);

					// setting session to expiry in 30 mins
					session.setMaxInactiveInterval(30 * 60);
					
					
					/*FOR SESSION COOKIES*/
					// cookie (String name, String value)
		            Cookie userName = new Cookie("currUser", input_umail);
		            //Cookie userName = new Cookie("user", user);
					//age of cookie 30 min
					userName.setMaxAge(30 * 60);
					response.addCookie(userName);			
		   
		            
		            //Get the encoded URL string
		            String encodedURL = response.encodeRedirectURL("account.jsp");
		            response.sendRedirect(encodedURL);
					
				}
				//Else go to error page
				else {
					response.sendRedirect("index.jsp");
					pWriter.println(1);
				}
			}
			//Else go to error page
			else
				  {
				response.sendRedirect("index.jsp"); }
		}

		catch (Throwable theException) {
			System.out.println(theException);
		}
		
	}
}

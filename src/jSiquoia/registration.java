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
 * Handles registration form when one submits
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String msg;

		try {

			//GETS the values of the textfield, button ...etc of registration.jsp form
			String newusr= request.getParameter("name");
			String newemail = request.getParameter("email_name");
			String newpw = request.getParameter("pwd_name");
			String confirmPw = request.getParameter("confirm_pw");

			//Instantiates new javabean object
			UserBean user = new UserBean();
			//sets each parameter to a value from above
			user.setName(newusr);
			user.setEmail(newemail);
			// default values for user 100 siquoia tokens and level 1 accesslevel
			// user (0 for DBA) //token and level should be on DATABASE DEFAULT SO WE SHOULDNT
			// INCLUDE IT HERE BUT DOING SO FOR EXAMPLE... if u dont get what i just said
			// dont worry just know that this sets the token value to the object userbean java
			user.setToken(100);
			user.setLevel(1);
			//DATE IS SET ON DATABASE MYSQL AUTOMATICALLY USING TRIGGER DONT SET IT HERE
			
			
			//if password doesnt equal confirmation password
			if(newpw.equals(confirmPw))
			{
				user.setPassword(newpw);
				msg = "Account Successfully Created";			
			}
			else
				msg = "Password are not the same";	
			

			//UserDAO (DATA ACCESS OBJECT)  validates the inputs from the GET note * the .registration
			user = UserDAO.registration(user);

		    PrintWriter pWriter = response.getWriter();  
			if (user.isValid()) {
				HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionUser", user);
			    pWriter.println(1);
			    response.flushBuffer();
			}

			else
			{

			   pWriter.println("<p class=err>Registration failed please try again</p>");
			   response.flushBuffer();
			}
			
		}

		catch (Throwable theException) {
			System.out.println(theException);
		}
		

	}
	
	
	

}

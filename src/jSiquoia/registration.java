package jSiquoia;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
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
		
		
		String msg;
		if(!confirmPw.equals(newpw))
			msg = "Please make sure you type in the same password to confirm!";
		else 
			msg = "Your name  is " + newusr + "email is:" + newemail;
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<h3>" +msg+"</h3>");		
		
	}

}

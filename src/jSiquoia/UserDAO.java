package jSiquoia;

import java.sql.*;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;



/**
 * GETTERS AND SETTERS ONLY DONT ADD FUNCTIONALITY HERE 
 * MAKE A SERVLET FOR FUNCTIONALITY HERE IS FOR DB ONLY
 * 
 * @author takeitez
 *
 */
public class UserDAO {
	static Connection currentCon = null;
	static ResultSet rs = null;
	static Statement stmt = null;

	/**
	 * Used by login.java to connect to database mysql
	 * @param bean to be referenced and used
	 * @return bean object for login
	 */
	public static UserBean login(UserBean bean) {
		
		//The passed object bean from login.java is used bellow to set to temp strings
		String password = bean.getPassword();
		String email = bean.getEmail();

		//A SQL STATEMENT FOR SELECTING A ROW WITH THE VALUE OF THE PASSED PARAMETER (say email = test@test.edu)
		String searchQuery = "select * from userprofile where email='" + email
				+ "' AND upassword='" + password + "'";
		//FOR DEBUGGIN ONLY TO SEE what the hecks happening in ECLIPSE CONSOLE WHEN SUBMITTED
		System.out.print(searchQuery);


		
		try {
			// connect to DB MYSQL
			currentCon = ConnectionManager.getConnection();
			stmt = currentCon.createStatement();
			//executes the query from the string searchQuery
			rs = stmt.executeQuery(searchQuery);
			//boolean row query from stmt.executeQuery(searchQuery); works then should be true meaning 
			//there it is found on db
			boolean row = rs.next();

			// if user does not exist set the isValid variable to false
			if (!row) {
				System.out
						.println("Sorry, you are not a registered user! Please sign up first");
				bean.setValid(false);
			}

			// if user exists set the isValid variable to true
			else if (row) {
				String dbname = rs.getString("uname");
				String dbdate = rs.getString("login_date").toString();
				String dbemail = rs.getString("email"); 
			    int dbtoken = rs.getInt("token"); 

				System.out.println("Welcome " + dbname);
				bean.setName(dbname);
				bean.setDate(dbdate);
				bean.setEmail(dbemail);
				bean.setToken(dbtoken);
				
				bean.setValid(true);
			}
		}

		catch (Exception ex) {
			System.out.println("Log In failed: An Exception has occurred! " + ex);
		}

		// some exception handling
		finally {
			err();
		}

		return bean;

	}

	/**
	 * Used by registration.java
	 * @param bean to be referenced and used
	 * @return bean object for registration
	 */
	public static UserBean registration(UserBean bean) {
		String name = bean.getName();
		String pass = bean.getPassword();
		String email = bean.getEmail();

		//SQL - INSERTS values to database user table
		String sql = "insert into userprofile (uname, upassword, email)"
				+ " values('" + name + "','" + pass + "','"
				+ email + "')";
		
		
		currentCon = ConnectionManager.getConnection();
		try {
			stmt = currentCon.createStatement();
			stmt.executeUpdate(sql);
			bean.setValid(true);
		
			//TESTING
			String setTokenDefault = "select token from userprofile where email = " + email ;
			rs = stmt.executeQuery(setTokenDefault);
			bean.setToken(rs.getInt("token"));
			//TESTING
			
			//for DEBUGGIN
			//printResultSetfromStudents(rs);
			
		} catch (SQLException e) {
			bean.setValid(false);
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return bean;
	}

	//FOR DEBUGGIN
	private static void printResultSetfromStudents(ResultSet rs) throws SQLException
	{
	   while(rs.next())
	   {
	 
	      String name = rs.getString("name"); 
	      String pw = rs.getString("password"); 
	      String em = rs.getString("email"); 
	      int token = rs.getInt("token"); 
	      int acl = rs.getInt("accesslevel");
	      String date =  rs.getDate("login_date").toString();
	      System.out.println("name:" + name + " Pw:" + pw + " Email:" + em + " tok:" + token + " level:" + acl + " date:" + date); 
	   }
	}
	
	
	//error handler just ignore for now
	private static void err()
	{
		
		if (rs != null) {
			try {
				rs.close();
			} catch (Exception e) {
			}
			rs = null;
		}

		if (stmt != null) {
			try {
				stmt.close();
			} catch (Exception e) {
			}
			stmt = null;
		}

		if (currentCon != null) {
			try {
				currentCon.close();
			} catch (Exception e) {
			}

			currentCon = null;
		}
		
	}
	
}



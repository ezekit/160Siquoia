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
		String searchQuery = "select * from user where email='" + email
				+ "' AND password='" + password + "'";
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
				String name = rs.getString("name");
				String date = rs.getString("login_date");

				System.out.println("Welcome " + name);
				bean.setName(name);
				bean.setValid(true);
			}
		}

		catch (Exception ex) {
			System.out.println("Log In failed: An Exception has occurred! "
					+ ex);
		}

		// some exception handling
		finally {
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
		int token = bean.getToken();
		int accesslevel = bean.getLevel();

		//SQL - INSERTS values to database user table
		String sql = "insert into user (name, password, email, token, accesslevel)"
				+ " values('" + name + "','" + pass + "','"
				+ email + "'," + token + "," + accesslevel + ")";

		currentCon = ConnectionManager.getConnection();
		try {
			stmt = currentCon.createStatement();
			stmt.executeUpdate(sql);
			bean.setValid(true);
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
}

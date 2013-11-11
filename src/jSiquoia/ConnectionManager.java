package jSiquoia;

import java.sql.*;
import java.util.*;

/**
 * Connector for jdbc
 * Use and instantiate whenever needed
 * @author takeitez
 *
 */
public class ConnectionManager {

	static String url;
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost/siquoia";
	//Change to your own user and password
	static final String USER = "root";
	static final String PASS = "root";
	private static Connection con = null;

	public static Connection getConnection() {
		try {
			String url = "jdbc:odbc:" + "DataSource";
			// assuming "DataSource" is your DataSource name

			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

			try {
				con = DriverManager.getConnection(url, USER, PASS);
			}

			catch (SQLException ex) {
				ex.printStackTrace();
			}
		}

		catch (ClassNotFoundException e) {
			System.out.println(e);
		}

		return con;
	}
}

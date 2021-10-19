package DBManager;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {
	public static Connection conn;
	
	public DBManager() { super(); }

	public Connection getConnection() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			DataSource db = (DataSource)envContext.lookup("jdbc/junsens1");
			conn = db.getConnection();
		}catch(Exception e) { e.printStackTrace();}
		return conn;
	}
}

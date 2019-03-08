package hospital.tool;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseTool {
	private static final String DRIVER = ConfigManager.getProperties("driverClassName");
	private static final String URL = ConfigManager.getProperties("url");
	private static final String USER = ConfigManager.getProperties("username");
	private static final String PASSWORD = ConfigManager.getProperties("password");
	private static Connection connection;

	static{
		try {
			Class.forName(DRIVER);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("加载驱动失败");
		}
		try {
			connection = DriverManager.getConnection(URL,USER,PASSWORD);
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("执行getConn失败");
		}
	}

	public Connection getConn(){
		return this.connection;
	}

	public void closeConn(){
		if (connection != null){
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("关闭连接失败");
			}
		}
	}
}

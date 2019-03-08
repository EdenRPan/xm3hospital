package hospital.tool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DataBaseDao {
	protected PreparedStatement preparedStatement;
	protected ResultSet resultSet;
	protected Connection connection;

	public DataBaseDao(Connection connection){
		this.connection = connection;
	}

	public ResultSet exeQuery(String sql, Object... objects){
		try {
			preparedStatement = connection.prepareStatement(sql);

			int i = 1;
			for (Object obj:objects
				 ) {
				preparedStatement.setObject(i,obj);
				i++;
			}
			resultSet = preparedStatement.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultSet;
	}

	public int exeUptate(String sql, Object... objects){
		int i = 0;
		try {
			preparedStatement = connection.prepareStatement(sql);
			
			int j = 1;
			for (Object obj:objects
				 ) {
				preparedStatement.setObject(j,obj);
				j++;
			}

			i = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
}

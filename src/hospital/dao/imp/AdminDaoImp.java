package hospital.dao.imp;

import hospital.dao.AdminDao;
import hospital.modle.Admin;
import hospital.tool.DataBaseDao;

import java.sql.Connection;
import java.sql.SQLException;

public class AdminDaoImp extends DataBaseDao implements AdminDao {
	public AdminDaoImp(Connection connection) {
		super(connection);
	}

	@Override
	public Admin searchOne(Admin admin) {
		String sql = "select * from admin where admin = ? and password = ?";
		Object[] objects = new Object[]{
				admin.getAdmin(),admin.getPassword()
		};
		resultSet = super.exeQuery(sql,objects);
		Admin admin1 = new Admin();
		try {
			if (resultSet.next()){
				admin1.setAdmin(resultSet.getString("admin"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return admin1;
	}

	@Override
	public Admin insertOne(Admin admin) {
		return null;
	}
}

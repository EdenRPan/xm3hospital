package hospital.service.imp;

import hospital.dao.imp.AdminDaoImp;
import hospital.modle.Admin;
import hospital.service.AdminService;
import hospital.tool.DataBaseTool;

import java.util.Objects;

public class AdminServiceImp implements AdminService {
	protected DataBaseTool tool = new DataBaseTool();
	@Override
	public Boolean login(Admin admin) {
		if (Objects.isNull( new AdminDaoImp( tool.getConn() ).searchOne(admin).getAdmin() ) ){
			return false;
		}
		return true;
	}

	@Override
	public Boolean regis(Admin admin) {
		return null;
	}
}

package hospital.dao;

import hospital.modle.Admin;

public interface AdminDao {
	//查
	Admin searchOne(Admin admin);
	//增
	Admin insertOne(Admin admin);
}

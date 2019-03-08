package hospital.service;

import hospital.modle.Admin;

public interface AdminService {
	Boolean login(Admin admin);
	Boolean regis(Admin admin);
}

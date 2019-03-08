package hospital.modle;

public class Admin {
	int id;
	String admin;
	String password;

	@Override
	public String toString() {
		return "Admin{" +
				"id=" + id +
				", admin='" + admin + '\'' +
				", password='" + password + '\'' +
				'}';
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}

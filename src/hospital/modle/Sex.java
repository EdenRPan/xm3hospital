package hospital.modle;

public class Sex {
	int id;
	String sex;

	@Override
	public String toString() {
		return "Sex{" +
				"id=" + id +
				", sex='" + sex + '\'' +
				'}';
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}
}

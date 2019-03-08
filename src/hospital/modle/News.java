package hospital.modle;

public class News {
	int id;
	String parents;
	int baby;
	String info;
	String infohref;
	Double weight;
	Sex sex;//关联表，成员变量直接用类

	@Override
	public String toString() {
		return "News{" +
				"id=" + id +
				", parents='" + parents + '\'' +
				", baby=" + baby +
				", info='" + info + '\'' +
				", infohref='" + infohref + '\'' +
				'}';
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public Sex getSex() {
		return sex;
	}

	public void setSex(Sex sex) {
		this.sex = sex;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getParents() {
		return parents;
	}

	public void setParents(String parents) {
		this.parents = parents;
	}

	public int getBaby() {
		return baby;
	}

	public void setBaby(int baby) {
		this.baby = baby;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getInfohref() {
		return infohref;
	}

	public void setInfohref(String infohref) {
		this.infohref = infohref;
	}
}

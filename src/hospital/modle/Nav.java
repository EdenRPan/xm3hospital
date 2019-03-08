package hospital.modle;

public class Nav {
	int id;
	String li;
	String href;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLi() {
		return li;
	}

	public void setLi(String li) {
		this.li = li;
	}

	public String getHref() {
		return href;
	}

	public void setHref(String href) {
		this.href = href;
	}

	@Override
	public String toString() {
		return "Nav{" +
				"id=" + id +
				", li='" + li + '\'' +
				", href='" + href + '\'' +
				'}';
	}
}

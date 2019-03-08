package hospital.modle;

public class Picture {
	int id;
	String src;
	String alt;
	String eng;

	@Override
	public String toString() {
		return "Picture{" +
				"id=" + id +
				", src='" + src + '\'' +
				", alt='" + alt + '\'' +
				", eng='" + eng + '\'' +
				'}';
	}

	public String getEng() {
		return eng;
	}

	public void setEng(String eng) {
		this.eng = eng;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

	public String getAlt() {
		return alt;
	}

	public void setAlt(String alt) {
		this.alt = alt;
	}

}

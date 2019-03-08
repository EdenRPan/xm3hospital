package hospital.modle;

import java.util.Date;

public class Part9 {
	int id;
	String title;
	String content;
	Date time;

	@Override
	public String toString() {
		return "Part9{" +
				"id=" + id +
				", title='" + title + '\'' +
				", content='" + content + '\'' +
				", time=" + time +
				'}';
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}
}

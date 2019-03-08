package hospital.service;

import hospital.modle.Content_2;

import java.util.List;

public interface Con_2Service {
	boolean chaCon(Content_2 con_2);
	boolean insCon(Content_2 con_2);
	boolean addTitle(Content_2 con_2);
	List<Content_2> conList();
	Content_2 searchOneCon(Content_2 con_2);
	boolean deleteCon_2(Content_2 con_2);
}

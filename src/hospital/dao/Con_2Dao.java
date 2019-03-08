package hospital.dao;

import hospital.modle.Content_2;

import java.util.List;

public interface Con_2Dao {
	int update(Content_2 con_2);
	int insert(Content_2 con_2);
	int updataTitle(Content_2 con_2);
	List<Content_2> searchAll();
	Content_2 searchOne(Content_2 con_2);
}

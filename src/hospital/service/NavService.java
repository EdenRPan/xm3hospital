package hospital.service;

import hospital.modle.*;

import java.util.List;

public interface NavService {
	//导航ul
	List<Nav> ulTop7();
	List<Nav> ulTop7_7();
	boolean updateHref(Nav nav);
	List<Nav> searchAll();//查询所有li
	boolean addLi(Nav nav);
	boolean deleteLi(Nav nav);

	void DataList(Page page);//分页数据

	//导航广告条
	List<Picture> rotaTop4();

	//今日喜报
	List<News> newsList();
	boolean addNews(News news);
	boolean deleteNews(News news);
	boolean modifyNews(News news);

	//三坨
	List<Picture> threePart();

	//修改三坨
	Boolean changeThree(Picture picture);

	////显三共九
	List<Part9> p9List();
}

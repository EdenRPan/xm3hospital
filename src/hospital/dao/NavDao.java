package hospital.dao;

import hospital.modle.*;

import java.util.List;

public interface NavDao<E> {
	//导航ul
	List<Nav> searchTop7();
	List<Nav> limit7_7();
	int updateHref(Nav nav);//修改li
	List<Nav> searchAll();//查询所有li
	int addLi(Nav nav);
	int deleteLi(Nav nav);
	List<E> getDatalist(Page page);//获取分页的数据
	int getRecordCount();//获取总记录条数


	//导航广告条
	List<Picture> rotation();

	//今日喜报
	List<News> news();

	//中间三坨
	List<Picture> threePart();

	//修改三坨内容
	int update(Picture picture);

	//显三共九
	List<Part9> part9();
}

package hospital.service.imp;

import hospital.dao.imp.NavDaoImp;
import hospital.modle.*;
import hospital.service.NavService;
import hospital.tool.DataBaseTool;

import java.util.List;

public class NavServiceImp implements NavService {
	private DataBaseTool tool = new DataBaseTool();
	@Override
	public List<Nav> ulTop7() {
		return new NavDaoImp(tool.getConn()).searchTop7();
	}

	@Override
	public List<Nav> ulTop7_7() {
		return new NavDaoImp(tool.getConn()).limit7_7();
	}

	@Override
	public boolean updateHref(Nav nav) {//修改nav
		if (new NavDaoImp(tool.getConn()).updateHref(nav) > 0){
			return true;
		}
		return false;
	}

	@Override
	public List<Nav> searchAll() {//查询所有nav
		return new NavDaoImp(tool.getConn()).searchAll();
	}

	@Override
	public boolean addLi(Nav nav) {//增加nav
		if (new NavDaoImp(tool.getConn()).addLi(nav) > 0){
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteLi(Nav nav) {//删除nav
		if (new NavDaoImp(tool.getConn()).deleteLi(nav) > 0){
			return true;
		}
		return false;
	}

	@Override
	public void DataList(Page page) {
		int totalCount = new NavDaoImp(tool.getConn()).getRecordCount();//sql查询总记录条数
		page.setRecordCount(totalCount);//总记录数赋值
		if(page.getCurrentPage() <= 0){//当前页判断
			page.setCurrentPage(1);
		}else if(page.getCurrentPage() > page.getTotalPage()){
			page.setCurrentPage(page.getTotalPage());//当前页 == 最大分页
		}
		page.setDataList(new NavDaoImp(tool.getConn()).getDatalist(page));//分页数据赋值
	}

	@Override
	public List<Picture> rotaTop4() {
		return new NavDaoImp(tool.getConn()).rotation();
	}

	@Override
	public List<News> newsList() {
		return new NavDaoImp(tool.getConn()).news();
	}

	@Override
	public List<Picture> threePart() {
		return new NavDaoImp(tool.getConn()).threePart();
	}

	@Override
	public Boolean changeThree(Picture picture) {//修改三坨
		if (new NavDaoImp(tool.getConn()).update(picture) > 0){
			return true;
		}
		return false;
	}

	@Override
	public List<Part9> p9List() {
		return new NavDaoImp(tool.getConn()).part9();
	}
}

package hospital.dao.imp;

import hospital.dao.NavDao;
import hospital.modle.*;
import hospital.tool.DataBaseDao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NavDaoImp extends DataBaseDao implements NavDao {
	public NavDaoImp(Connection connection) {
		super(connection);
	}

	@Override
	public List<Nav> searchTop7() {
		String sql = "SELECT * FROM navul limit 0,7";
		resultSet = super.exeQuery(sql);
		List<Nav> ulList = new ArrayList<>();
		try {
			while (resultSet.next()){
				Nav nav = new Nav();
				nav.setId(resultSet.getInt("id"));
				nav.setLi(resultSet.getString("li"));
				nav.setHref(resultSet.getString("href"));
				ulList.add(nav);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ulList;
	}

	@Override
	public List<Nav> limit7_7() {
		String sql = "SELECT * FROM navul limit 7,7";
		resultSet = super.exeQuery(sql);
		List<Nav> ulList = new ArrayList<>();
		while (true) {
			try {
				if (!resultSet.next()) break;
				Nav nav = new Nav();
				nav.setId(resultSet.getInt("id"));
				nav.setLi(resultSet.getString("li"));
				nav.setHref(resultSet.getString("href"));
				ulList.add(nav);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return ulList;
	}

	@Override
	public int updateHref(Nav nav) {//修改主页li的连接地址，主要用于修改最后的参数，来获取二级页面表想获取的 内容
		int i;
		String sql = "update navul set li = ?,href = ? where id = ?";
		Object[] objects = new Object[]{
				nav.getLi(),nav.getHref(),nav.getId()
		};
		i = super.exeUptate(sql,objects);
		return i;
	}

	@Override
	public List<Nav> searchAll() {
		String sql = "select * from navul";
		resultSet = super.exeQuery(sql);
		List<Nav> liList = new ArrayList<>();
		while (true) {
			try {
				if (!resultSet.next()) break;
				Nav nav = new Nav();
				nav.setId(resultSet.getInt("id"));
				nav.setLi(resultSet.getString("li"));
				nav.setHref(resultSet.getString("href"));
				liList.add(nav);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return liList;
	}

	@Override
	public int addLi(Nav nav) {
		String sql = "insert into navul(li,href) values(?,?)";
		int i;
		i = super.exeUptate(sql,nav.getLi(),nav.getHref());
		return i;
	}

	@Override
	public int deleteLi(Nav nav) {
		String sql = "delete from navul where id = ?";
		int i;
		i = super.exeUptate(sql,nav.getId());
		return i;
	}

	@Override
	public List getDatalist(Page page) {
		String sql = "select * from navul order by id limit ?,?";
		List<Nav> dataList = new ArrayList<>();
		resultSet = super.exeQuery(sql,(page.getCurrentPage()-1) * page.getLinage(),page.getLinage());
		while (true){
			try {
				if (!resultSet.next()) break;
				Nav nav = new Nav();
				nav.setId(resultSet.getInt("id"));
				nav.setLi(resultSet.getString("li"));
				nav.setHref(resultSet.getString("href"));
				dataList.add(nav);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return dataList;
	}

	@Override
	public int getRecordCount() {//总记录条数
		String sql = "select count(id) count from navul";
		resultSet = super.exeQuery(sql);
		try {
			if(resultSet.next()){//获取总记录条数
				return resultSet.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public List<Picture> rotation() {//轮播图
		String sql = "select * from picture limit 0,4";
		resultSet = super.exeQuery(sql);
		List<Picture> picList = new ArrayList<>();
		while (true) {
			try {
				if (!resultSet.next()) break;
				Picture picture = new Picture();
				picture.setId(resultSet.getInt("id"));
				picture.setSrc(resultSet.getString("src"));
				picture.setAlt(resultSet.getString("alt"));
				picture.setEng(resultSet.getString("eng"));
				picList.add(picture);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		/*picList.forEach(picture -> System.out.println(picture));*/
		return picList;
	}

	@Override
	public List<News> news() {//今日喜报
		String sql = "select n.*,s.sex from daynews n left join bbsex s on baby = s.id ORDER BY n.id";
		List<News> newsList = new ArrayList<>();
		resultSet = super.exeQuery(sql);
		while (true) {
			try {
				if (!resultSet.next()) break;
				News news = new News();
				news.setId(Integer.parseInt(resultSet.getString("id")));
				news.setParents(resultSet.getString("parents"));
				news.setWeight(resultSet.getDouble("weight"));
				Sex sex = new Sex();
				sex.setId(resultSet.getInt("baby"));
				sex.setSex(resultSet.getString("sex"));
				//将这个sex类 成员变量赋值到news
				news.setSex(sex);
				newsList.add(news);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return newsList;
	}

	@Override
	public int addNews(News news) {
		String sql = "insert into daynews(parents,baby,weight) values(?,?,?)";
		Object[] objects = new Object[]{
				news.getParents(),news.getBaby(),news.getWeight()
		};
		return super.exeUptate(sql,objects);
	}

	@Override
	public int deleteNews(News news) {
		String sql = "delete from daynews where id = ?";
		return super.exeUptate(sql,news.getId());
	}

	@Override
	public int modifyNews(News news) {
		String sql = "update daynews set parents = ?,baby = ?,weight = ? where id = ?";
		Object[] objects = new Object[]{
				news.getParents(),news.getBaby(),news.getWeight(),news.getId()
		};
		return super.exeUptate(sql,objects);
	}

	@Override
	public List<Picture> threePart() {
		String sql = "SELECT * FROM picture limit 4,3";
		List<Picture> threeList = new ArrayList<>();
		resultSet = super.exeQuery(sql);
		while (true) {
			try {
				if (!resultSet.next()) break;
				Picture picture = new Picture();
				picture.setId(resultSet.getInt("id"));
				picture.setSrc(resultSet.getString("src"));
				picture.setAlt(resultSet.getString("alt"));
				picture.setEng(resultSet.getString("eng"));
				threeList.add(picture);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return threeList;
	}

	@Override
	public int update(Picture picture) {//修改三坨
		int r;
		String sql = "update picture set src = ?,alt = ?,eng = ? where id = ?";
		Object[] objects = new Object[]{
				picture.getSrc(),picture.getAlt(),picture.getEng(),picture.getId()
		};
		r = super.exeUptate(sql,objects);
		return r;
	}

	@Override
	public List<Part9> part9() {//显三共九
		String sql = "SELECT * FROM part9 limit 0,9";
		List<Part9> p9List = new ArrayList<>();
		resultSet = super.exeQuery(sql);
		while (true) {
			try {
				if (!resultSet.next()) break;
				Part9 part9 = new Part9();
				part9.setId(resultSet.getInt("id"));
				part9.setTitle(resultSet.getString("title"));
				part9.setContent(resultSet.getString("content"));
				part9.setTime(resultSet.getDate("time"));
				p9List.add(part9);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return p9List;
	}
}

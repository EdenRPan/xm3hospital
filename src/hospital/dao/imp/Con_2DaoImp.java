package hospital.dao.imp;

import hospital.dao.Con_2Dao;
import hospital.modle.Content_2;
import hospital.tool.DataBaseDao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Con_2DaoImp extends DataBaseDao implements Con_2Dao {

	public Con_2DaoImp(Connection connection) {
		super(connection);
	}

	@Override
	public int update(Content_2 con_2) {
		int i;
		String sql = "update content_2 set title = ?,content = ? where id = ?";
		Object[] objects = new Object[]{
				con_2.getTitle(),con_2.getContent(),con_2.getId()
		};
		i = super.exeUptate(sql,objects);
		return i;
	}

	@Override
	public int insert(Content_2 con_2) {
		int i;
		String sql = "insert into content_2(content) values(?)";
		i = super.exeUptate(sql,con_2.getContent());
		return i;
	}

	@Override
	public int updataTitle(Content_2 con_2) {
		int i;
		String sql = "update content_2 set title = ? where id = ?";
		i = super.exeUptate(sql,con_2.getTitle(),con_2.getId());
		return i;
	}

	@Override
	public List<Content_2> searchAll() {
		String sql = "select * from content_2";
		resultSet = super.exeQuery(sql);
		List<Content_2> conList = new ArrayList<>();
		try {
			while (resultSet.next()){
				Content_2 content_2 = new Content_2();
				content_2.setId(resultSet.getInt("id"));
				content_2.setTitle(resultSet.getString("title"));
				content_2.setContent(resultSet.getString("content"));
				conList.add(content_2);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conList;
	}

	@Override
	public Content_2 searchOne(Content_2 con_2) {
		String sql = "select * from content_2 where id = ?";
		resultSet = super.exeQuery(sql,con_2.getId());
		Content_2 content_2 = new Content_2();
		try {
			if (resultSet.next()){
				content_2.setId(resultSet.getInt("id"));
				content_2.setTitle(resultSet.getString("title"));
				content_2.setContent(resultSet.getString("content"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return content_2;
	}

	@Override
	public int deleteCon_2(Content_2 con_2) {
		String sql = "delete from content_2 where id = ?";
		int i = super.exeUptate(sql,con_2.getId());
		return i;
	}
}

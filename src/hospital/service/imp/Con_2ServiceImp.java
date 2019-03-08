package hospital.service.imp;

import hospital.dao.imp.Con_2DaoImp;
import hospital.modle.Content_2;
import hospital.service.Con_2Service;
import hospital.tool.DataBaseTool;

import java.util.List;

public class Con_2ServiceImp implements Con_2Service {
	protected DataBaseTool tool = new DataBaseTool();
	@Override
	public boolean chaCon(Content_2 con_2) {
		if (new Con_2DaoImp(tool.getConn()).update(con_2) > 0){
			return true;
		}
		return false;
	}

	@Override
	public boolean insCon(Content_2 con_2) {
		if(new Con_2DaoImp(tool.getConn()).insert(con_2) > 0){
			return true;
		}
		return false;
	}

	@Override
	public boolean addTitle(Content_2 con_2) {
		if (new Con_2DaoImp(tool.getConn()).updataTitle(con_2) > 0){
			return true;
		}
		return false;
	}

	@Override
	public List<Content_2> conList() {
		return new Con_2DaoImp(tool.getConn()).searchAll();
	}

	@Override
	public Content_2 searchOneCon(Content_2 con_2) {
		return new Con_2DaoImp(tool.getConn()).searchOne(con_2);
	}
}

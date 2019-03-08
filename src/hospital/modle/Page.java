package hospital.modle;

import java.util.List;

public class Page<T> {
	private int currentPage = 1;//当前页，默认为1
	private int indexPage=1;//首页
	private int endPage;//尾页
	private int linage = 5;//每页显示的行数
	private int recordCount;//总记录数 ---record 记录
	private int totalPage;//总页数 = 总记录数 / 每页行数 (+1)
	private List<T> dataList;//得到的数据放入list集合中

	public int getTotalPage(){
		if(recordCount % linage == 0){
			totalPage = recordCount / linage;
		}else{
			totalPage = recordCount / linage + 1;
		}
		return totalPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getLinage() {
		return linage;
	}

	public void setLinage(int linage) {
		this.linage = linage;
	}

	public int getRecordcount() {
		return recordCount;
	}

	public void setRecordcount(int recordcount) {
		this.recordCount = recordcount;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public List<T> getDataList() {
		return dataList;
	}

	public void setDataList(List<T> dataList) {
		this.dataList = dataList;
	}

	public int getIndexPage() {
		return indexPage;
	}

	public void setIndexPage(int indexPage) {
		this.indexPage = indexPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}
}

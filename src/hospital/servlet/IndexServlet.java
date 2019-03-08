package hospital.servlet;

import hospital.modle.Nav;
import hospital.modle.News;
import hospital.modle.Part9;
import hospital.modle.Picture;
import hospital.service.imp.NavServiceImp;

import java.io.IOException;
import java.util.List;

public class IndexServlet extends javax.servlet.http.HttpServlet {
	protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
		this.doGet(request,response);
	}

	protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
		//主页导航条，表navul，第一个ul，limit 0,7
		List<Nav> ulList7 = new NavServiceImp().ulTop7();
		request.getSession().setAttribute("ulList7",ulList7);

		//第二个ul,limit7,7
		List<Nav> ulList7_7 = new NavServiceImp().ulTop7_7();
		request.getSession().setAttribute("limit7_7",ulList7_7);

		//导航广告条，前4
		List<Picture> picList = new NavServiceImp().rotaTop4();
		request.getSession().setAttribute("ratation",picList);

		//今日喜报
		List<News> newsList = new NavServiceImp().newsList();
		request.getSession().setAttribute("newsList",newsList);

		//三坨
		List<Picture> threePart = new NavServiceImp().threePart();
		request.getSession().setAttribute("three",threePart);

		//显三共九
		List<Part9> part9List = new NavServiceImp().p9List();
		request.getSession().setAttribute("p9List",part9List);

		//获取初始化数据完成，进行重定向
		response.sendRedirect("/hospital/home.jsp");
	}
}

package hospital.servlet;

import hospital.dao.imp.NavDaoImp;
import hospital.modle.Nav;
import hospital.modle.News;
import hospital.modle.Page;
import hospital.service.imp.NavServiceImp;
import hospital.tool.DataBaseTool;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "NavServlet",urlPatterns = "/NavServlet/*")
public class NavServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request,response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StringBuffer url = request.getRequestURL();
		String action = url.substring(url.lastIndexOf("/") + 1);
		switch (action){
			case "modifyNav" : modifyNav(request,response);
			    break;
			case "deleteNav" : deleteNav(request,response);
			    break;
			case "addNav" : addNav(request,response);
			    break;
			case "searchAllNav" : searchAllNav(request,response);
			    break;
			case "pageBean" : pageBean(request,response);
			    break;
			case "addNews" : addNews(request,response);
				break;
			case "deleteNews" : deleteNews(request,response);
				break;
			case "modifyNews" : modifyNews(request,response);
				break;
			case "searchAllNews" : searchAllNews(request,response);
				break;
		}
	}

	protected void modifyNav(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Nav nav = new Nav();
		nav.setId(Integer.parseInt(request.getParameter("id")));
		nav.setLi(request.getParameter("li"));
		nav.setHref(request.getParameter("href"));
		if (new NavServiceImp().updateHref(nav)){
			response.sendRedirect("/hospital/NavServlet/pageBean");
		}else{
			request.setAttribute("mag","修改失败");
			request.getRequestDispatcher("/admin/message.jsp").forward(request,response);
		}
	}

	protected void deleteNav(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Nav nav = new Nav();
		nav.setId(Integer.parseInt(request.getParameter("id")));
		if (new NavServiceImp().deleteLi(nav)){
			response.sendRedirect("/hospital/NavServlet/pageBean");
		}else{
			request.setAttribute("mag","删除失败");
			request.getRequestDispatcher("/admin/message.jsp").forward(request,response);
		}
	}

	protected void addNav(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Nav nav = new Nav();
		nav.setLi(request.getParameter("li"));
		nav.setHref(request.getParameter("href"));
		if (new NavServiceImp().addLi(nav)){
			response.sendRedirect("/hospital/NavServlet/pageBean");
		}else{
			request.setAttribute("mag","添加失败");
			request.getRequestDispatcher("/admin/message.jsp").forward(request,response);
		}
	}

	protected void searchAllNav(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Nav> navList = new NavServiceImp().searchAll();
		request.getSession().setAttribute("navList",navList);
		response.sendRedirect("/hospital/admin/homenav.jsp");
	}

	protected void pageBean(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Page page = new Page();
		int currentPage = request.getParameter("currentPage") == null ? 1 : Integer.parseInt(request.getParameter("currentPage"));
		page.setCurrentPage(currentPage);//当前
		//调服务 给分页数据赋值
		new NavServiceImp().DataList(page);

		request.getSession().setAttribute("pagelist",page);
		request.getRequestDispatcher("/admin/homenav.jsp").forward(request,response);
	}

	//今日喜报
	protected void searchAllNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<News> newsList = new NavServiceImp().newsList();
		request.getSession().setAttribute("newsList",newsList);

		response.sendRedirect("/hospital/admin/daynews.jsp");
	}

	protected void addNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		News news = new News();
		news.setParents(request.getParameter("parents"));
		news.setBaby(Integer.parseInt(request.getParameter("baby")));
		news.setWeight(Double.parseDouble(request.getParameter("weight")));
		if (new NavServiceImp().addNews(news)){
			response.sendRedirect("/hospital/NavServlet/searchAllNews");
		}else{
			request.setAttribute("mag","添加失败");
			request.getRequestDispatcher("/admin/message.jsp").forward(request,response);
		}
	}

	protected void deleteNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		News news = new News();
		news.setId(Integer.parseInt(request.getParameter("did")));
		if (new NavServiceImp().deleteNews(news)){
			response.sendRedirect("/hospital/NavServlet/searchAllNews");
		}else{
			request.setAttribute("mag","删除失败");
			request.getRequestDispatcher("/admin/message.jsp").forward(request,response);
		}
	}

	protected void modifyNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		News news = new News();
		news.setId(Integer.parseInt(request.getParameter("mid")));
		news.setParents(request.getParameter("nparents"));
		news.setBaby(Integer.parseInt(request.getParameter("nbaby")));
		news.setWeight(Double.parseDouble(request.getParameter("nweight")));

		if (new NavServiceImp().modifyNews(news)){
			response.sendRedirect("/hospital/NavServlet/searchAllNews");
		}else{
			request.setAttribute("mag","修改失败");
			request.getRequestDispatcher("/admin/message.jsp").forward(request,response);
		}
	}
}

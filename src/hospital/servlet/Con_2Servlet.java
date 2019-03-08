package hospital.servlet;

import hospital.modle.Content_2;
import hospital.service.imp.Con_2ServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Con_2Servlet",urlPatterns = "/Con_2Servlet/*")
public class Con_2Servlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request,response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StringBuffer url = request.getRequestURL();
		String action = url.substring(url.lastIndexOf("/") + 1);
		switch (action){
			case "searchOneCon" : searchOneCon(request,response);//根据主页ul导航的li的路径后面追加get参数?cid=1,(2,3,..),显示需要的内容项
			break;
			case "chaContent" : chaContent(request,response);//改变内容（以及标题）对象
			break;
			case "searchAllCon" : searchAllCon(request,response);//更改内容
			break;
			case "addTitle" : addTitle(request,response);//添加标题
			break;
		}
	}

	protected void searchOneCon(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Content_2 content_2 = new Content_2();
		content_2.setId(Integer.parseInt(request.getParameter("cid")));//连接参数 ?cid=1
		content_2 = new Con_2ServiceImp().searchOneCon(content_2);
		request.getSession().setAttribute("content_2",content_2);

		response.sendRedirect("/hospital/fuke.jsp");
	}

	protected void chaContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Content_2 con_2 = new Content_2();
		con_2.setId(Integer.parseInt(request.getParameter("cid")));
		con_2.setTitle(request.getParameter("ntitle"));
		con_2.setContent(request.getParameter("ncontent"));

		if (new Con_2ServiceImp().chaCon(con_2)){
			response.sendRedirect("/hospital/Con_2Servlet/searchAllCon");
		}else {
			request.setAttribute("msg","操作失败");
			request.getRequestDispatcher("/admin/message.jsp").forward(request,response);
		}
	}

	protected void addTitle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Content_2 con_2 = new Content_2();
		con_2.setId(Integer.parseInt(request.getParameter("cid")));
		con_2.setTitle(request.getParameter("ntitle"));

		if (new Con_2ServiceImp().addTitle(con_2)){
			response.sendRedirect("/hospital/Con_2Servlet/searchAllCon");
		}else {
			request.setAttribute("msg","添加失败");
			request.getRequestDispatcher("/admin/message.jsp").forward(request,response);
		}
	}

	protected void searchAllCon(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Content_2> conList = new Con_2ServiceImp().conList();
		request.getSession().setAttribute("conList",conList);

		response.sendRedirect("/hospital/admin/chacontent.jsp");

	}
}

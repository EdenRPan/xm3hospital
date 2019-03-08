package hospital.servlet;

import hospital.modle.Content_2;
import hospital.service.imp.Con_2ServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/UploadServlet/*")
public class UploadServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request,response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StringBuffer url = request.getRequestURL();
		String action = url.substring(url.lastIndexOf("/") + 1);
		switch (action){
			case "img" : img(request,response);
				break;

			case "insertCon_2" : insertCon_2(request,response);
				break;
		}
	}

	protected void img(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String content = request.getParameter("editorValue");
		request.getSession().setAttribute("content",content);

		response.sendRedirect("/hospital/admin/chome.jsp");
	}

	protected void insertCon_2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String content = request.getParameter("editorValue");
		Content_2 con_2 = new Content_2();
		con_2.setContent(content);
		/*request.setAttribute("con_2",con_2);//Content_2对象 先获取内容，转发后再获取标题*/
		if (new Con_2ServiceImp().insCon(con_2)){
			request.setAttribute("msg","添加内容成功");
		}else{
			request.setAttribute("msg","添加失败");
		}

		request.getRequestDispatcher("/admin/message.jsp").forward(request,response);
	}
}

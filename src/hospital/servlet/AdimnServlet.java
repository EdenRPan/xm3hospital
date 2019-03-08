package hospital.servlet;


import hospital.modle.Admin;
import hospital.modle.Picture;
import hospital.service.imp.AdminServiceImp;
import hospital.service.imp.NavServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AdimnServlet", urlPatterns = "/AdimnServlet/*")
public class AdimnServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request,response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StringBuffer url = request.getRequestURL();
		String action = url.substring(url.lastIndexOf("/") + 1);
		switch (action){
			case "login" : login(request,response);
			break;

			case "changeThree" : changeThree(request,response);
			break;
		}
	}

	protected void changeThree(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Picture picture = new Picture();
		picture.setId(Integer.parseInt(request.getParameter("oid")));
		picture.setSrc(request.getParameter("nsrc"));
		picture.setAlt(request.getParameter("nalt"));
		picture.setEng(request.getParameter("neng"));
		if (new NavServiceImp().changeThree(picture)){
			request.getSession().setAttribute("msg","修改成功");
		}else {
			request.getSession().setAttribute("msg","修改失败");
		}
		response.sendRedirect("/hospital/admin/message.jsp");
	}

	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		Admin admin = new Admin();
		admin.setAdmin(request.getParameter("admin"));
		admin.setPassword(request.getParameter("pwd"));
		if (new AdminServiceImp().login(admin)){
			request.getSession().setAttribute("ad",admin.getAdmin());
			response.sendRedirect("/hospital/admin/home.jsp");
		}else{
			pw.write("<script language=\"JavaScript\">alert(\"登录失败，用户名或密码错误\");window.location.href = \"/hospital/admin/login.jsp\";</script>");
			pw.close();
		}
	}
}

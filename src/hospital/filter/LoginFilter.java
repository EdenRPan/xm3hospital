package hospital.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Objects;

@WebFilter(filterName = "LoginFilter")
public class LoginFilter implements Filter {
	public void destroy() {
	}

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
		HttpServletRequest hreq = (HttpServletRequest)req;
		HttpServletResponse hresp = (HttpServletResponse)resp;
		HttpSession httpSession = hreq.getSession();
		//获取请求的URL
		String path = hreq.getRequestURI();
		String ad = (String)httpSession.getAttribute("ad");
		if (path.indexOf("/login.jsp") > -1){//indexOf,从 原字符串 查找 子字符串（参数）没有返回负一
			chain.doFilter(hreq,hresp);
			return;
		}else{
			if (ad == null || "".equals(ad)){
				hresp.sendRedirect("/hospital/admin/login.jsp");
			}else {
				chain.doFilter(hreq,hresp);
			}
		}
		chain.doFilter(hreq, hresp);
	}

	public void init(FilterConfig config) throws ServletException {

	}

}

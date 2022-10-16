package kr.ac.alcoholiday.interceptor;

import kr.ac.alcoholiday.model.User;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		
		User user = (User) session.getAttribute("member");
		if(user != null) {
			System.out.println("UserInterceptor: TRUE");
			return true;
		}
		
		String query = request.getQueryString();
		session.setAttribute("target_url", request.getRequestURI() + (query != null ? "?" + query : "") );
		System.out.println("INTERCEPTOR: " + session.getAttribute("target_url"));
		
		response.sendRedirect("/login");
		
		System.out.println("UserInterceptor: FALSE");
		return false;	
	}
}

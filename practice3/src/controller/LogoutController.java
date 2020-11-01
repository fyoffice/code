package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutController
 */
@WebServlet(urlPatterns="/logout.do")
public class LogoutController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        session.removeAttribute("downloadList");
        session.removeAttribute("main");
        // 用于清除 session 的所有信息
        session.invalidate();
        Cookie cookies[] = request.getCookies();
        for(int i=0;i<cookies.length;i++) {
            // 删除选定的 cookie 信息
            if(cookies[i].getName().equals("userName")||cookies[i].getName().equals("userPassword")) {
                cookies[i].setMaxAge(0);
                response.addCookie(cookies[i]);
            }
        }
        response.sendRedirect(request.getContextPath()+"/login.html");
    }
}

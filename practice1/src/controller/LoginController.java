package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import vo.User;

/**
 * Servlet implementation class LoginController
 */
@WebServlet(urlPatterns="/login.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String userName = request.getParameter("userName");
		//判断有误返回值
		System.out.println(userName);
		String password = request.getParameter("password");
		String vcode = request.getParameter("userCode");
		//获取HttpSession对象
		HttpSession session= request.getSession();
		String saveVcode=(String)session.getAttribute("verityCode");
		String forwardPath="";
		if(!vcode.equalsIgnoreCase(saveVcode)) {
			request.setAttribute("info", "验证码错误");
			forwardPath="/error.jsp";
			
		}else {
			UserDao userDao = new UserDao();
			User user=userDao.get(userName);
			System.out.println("用户名："+userName);
			if(user==null) {
				request.setAttribute("info", "您输入的用户不存在！");
				forwardPath="/error.jsp";
			}else {//用户名存在
				if(!user.getPassword().equals(password)) {//密码错误
					request.setAttribute("info", "您输入的密码不正确!");
					forwardPath="/error.jsp";
				}
				else {
					session.setAttribute("currentUser", user);
					request.setAttribute("userName",userName);
					forwardPath="/main.jsp";
				}
			}			
		}
		
		RequestDispatcher rd= request.getRequestDispatcher(forwardPath);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

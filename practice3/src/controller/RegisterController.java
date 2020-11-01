package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.RegisterDao;
import dao.UserDao;
import vo.User;



@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServletdoPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
        User user = new User();
        user.setUserName(request.getParameter("userName"));
        user.setPassword(request.getParameter("userPassword"));
        user.setChrName(request.getParameter("chrName"));
        user.setEmailAddress(request.getParameter("emailAddress"));
        user.setProvince(request.getParameter("province"));
        user.setCity(request.getParameter("city"));

        System.out.println(user);

        RegisterDao registerDao = new RegisterDao();
        int update = registerDao.addUser(user);

        String jsonStr = "success";
        if(update == 0) {
            jsonStr = "×¢²áÊ§°Ü£¡";
        }

        jsonStr = new Gson().toJson(jsonStr);
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print(jsonStr);
        out.flush();
        out.close();
	}

}

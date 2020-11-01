package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import dao.UserDao;
import vo.User;


@WebServlet(urlPatterns = "/ajaxLoginCheck.do")
public class AjaxLoginCheck extends HttpServlet {
	
	private static UserDao userDao = new UserDao();
    User user;
    private static final String ERROR = "error";
    private static final String MAIN = "main";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String userName = (String) session.getAttribute("userName");
        String userPassword = (String) session.getAttribute("userPassword");
        String path = "";

        //�ж��û��Ƿ����
        user = userDao.getUser(userName);
        if(user.getUserName()==null) {
            System.err.println(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())+":\t���û������ڣ�");
            request.setAttribute(ERROR, "��Ǹ����������û���������!!");
            path = "/error.jsp";
        } else {
            //�ж��û������Ƿ���ȷ
            if (user.getPassword().equals(userPassword)) {
                session.setAttribute(MAIN, user);
                session.removeAttribute("userName");
                session.removeAttribute("userPassword");
                path = "/main.jsp";
            } else {
                System.err.println(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()) + ":\t�û����벻��ȷ");
                request.setAttribute(ERROR, "��Ǹ������������벻��ȷ!!");
                path = "/error.jsp";
            }
        }
        request.getRequestDispatcher(path).forward(request,response);
    }
}

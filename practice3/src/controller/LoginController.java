package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
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

/**
 * Servlet implementation class LoginController
 */
@WebServlet(urlPatterns="/login.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDao userDao = new UserDao();
	User user;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String userName = request.getParameter("userName");
		String userPassword = request.getParameter("userPassword");
		boolean radio_check = Boolean.parseBoolean(request.getParameter("radio_check"));

		String Verify = request.getParameter("Verify_input");

		Map<String,Object> objectMap = new HashMap<String, Object>();

		HttpSession session = request.getSession();
		String verityCode = (String) session.getAttribute("verityCode");

		//�ж���֤���Ƿ����
        if(!verityCode.equalsIgnoreCase(Verify)) {
            System.err.println(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())+":\t��֤�����");
            objectMap.put("code",0);
            objectMap.put("info","��Ǹ�����������֤�벻��ȷ!!");
        } else {
            //�ж��û��Ƿ����
            user = userDao.getUser(userName);
            if(user.getUserName()==null) {
                System.err.println(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())+":\t���û������ڣ�");
                objectMap.put("code",0);
                objectMap.put("info","��Ǹ����������û���������!!");
            } else {
                //�ж��û������Ƿ���ȷ
                if(userPassword.equals(user.getPassword())) {
                    if (radio_check) {
                        Cookie name_cookie = new Cookie("userName",userName);
                        Cookie pwd_cookie = new Cookie("userPassword",userPassword);
                        name_cookie.setMaxAge(60*60*24*7);
                        pwd_cookie.setMaxAge(60*60*24*7);
                        response.addCookie(name_cookie);
                        response.addCookie(pwd_cookie);
                    }
                    session.setAttribute("main", user);
                    objectMap.put("code",1);
                    objectMap.put("info","��¼�ɹ�����");
                } else {
                    System.err.println(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())+":\t�û����벻��ȷ");
                    objectMap.put("code",0);
                    objectMap.put("info","��Ǹ������������벻��ȷ!!");
                }
            }
        }

		Gson gson = new Gson();
		String gsonObject = gson.toJson(objectMap);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(gsonObject);
		out.flush();
		out.close();
	}

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String userName = request.getParameter("userName");
	    String userEmail = request.getParameter("userEmail");
	    String jsonStr = "";

	    if (userName!=null) {
            User user = userDao.getUser(userName);
            if(user.getUserName()==null) {
                jsonStr = "false";
            } else {
                jsonStr = "true";
            }
        } else if(userEmail!=null) {
            User user = userDao.getUserByEmail(userEmail);
            if(user.getEmailAddress()==null) {
                jsonStr = "false";
            } else {
                jsonStr = "true";
            }
        }

        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print(jsonStr);
        out.flush();
        out.close();
    }

}

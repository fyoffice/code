package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DownloadDao;
import vo.Download;

/**
 * Servlet implementation class GetDownloadListController
 */
@WebServlet(urlPatterns = "/getDownloadList.do")
public class GetDownloadListController extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DownloadDao dao = new DownloadDao();
		ArrayList<Download> list = dao.query();
		request.setAttribute("downloadList", list);
		RequestDispatcher rd = request.getRequestDispatcher("/download.jsp");
		rd.forward(request, response);
	}


}

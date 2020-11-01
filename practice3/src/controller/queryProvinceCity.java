package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


import dao.ProvinceCityDao;
import vo.City;
import vo.Province;


@WebServlet(urlPatterns = "/queryProvinceCity.do")
public class queryProvinceCity extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String provinceCode = request.getParameter("provinceCode");
        String jsonStr = "";
        ProvinceCityDao provinceCiteDao = new ProvinceCityDao();
        if(provinceCode == null) {
            List<Province> list = provinceCiteDao.queryProvince();
            jsonStr = new Gson().toJson(list);
        } else {
            List<City> list = provinceCiteDao.queryCity(Integer.parseInt(provinceCode));
            jsonStr = new Gson().toJson(list);
        }
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print(jsonStr);
        out.flush();
        out.close();
		
		
	}

}

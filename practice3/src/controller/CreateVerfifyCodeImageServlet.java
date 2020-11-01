package controller;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CreateVerificationCodeImage;



@WebServlet(urlPatterns="/servlet/CreateVerfifyCodeImage")
public class CreateVerfifyCodeImageServlet extends HttpServlet {
	

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CreateVerificationCodeImage createVCodeImage = new CreateVerificationCodeImage();
		String vCode = createVCodeImage.createCode();
		HttpSession session=request.getSession();
		session.setAttribute("verityCode", vCode);
		response.setContentType("img/jpeg");
		response.setHeader("Pragma","No-cache");
		response.setHeader("Cache-Control","No-cache");
		response.setDateHeader("Expires",0);
		BufferedImage image = createVCodeImage.CreateImage(vCode);
		ServletOutputStream out=response.getOutputStream();
		ImageIO.write(image, "JPEG", out);
		out.flush();
		out.close();
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

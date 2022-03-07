package day01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class helloServlet
 */
@WebServlet("/eee")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */										//입력 객체						//출력 객체
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setContentType("text/html; charset=utf-8"); // 문서양식이 html 문자셋 utf-8
//		PrintWriter out = response.getWriter();
//		out.println("<h3>Hello, Servlet!!</h3>");
		
		//response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String cnt_ = request.getParameter("cnt");
		int cnt = 100;
		if(cnt_!= null && !(cnt_.equals(""))) {
		cnt = Integer.parseInt(request.getParameter("cnt"));
		} 
		for(int i=0; i<cnt; i++) {
			out.println((i+1) +": 안녕!! Servlet!"+"<br>");
		}
		
	}



}

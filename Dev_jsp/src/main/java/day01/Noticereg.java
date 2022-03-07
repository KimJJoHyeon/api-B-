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
@WebServlet("/notice-reg")
public class Noticereg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */										//입력 객체						//출력 객체
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setContentType("text/html; charset=utf-8"); // 문서양식이 html 문자셋 utf-8
//		PrintWriter out = response.getWriter();
//		out.println("<h3>Hello, Servlet!!</h3>");
		
		//출력 객체 - 화면에 출력하는 객체 : response
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		//입력 객체- 사용자로부터 읽어드리는 객체 : request 객체
		//request.setCharacterEncoding("UTF-8");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		
		out.println("사용자가 입력한 제목: "+title+"<br>");
		out.println("사용자가 입력한 내용 : "+content+"<br>");
		
	}



}

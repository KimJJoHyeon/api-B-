package study;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Calc33")
public class Servlet33_cookies2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. 입력 request객체 utf-8로 설정 -> 이미함

		// 2. 출력 response객체 utf-8로 설정
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter pos = response.getWriter();

		// 3.html로 보낸 객체 가져오기 (값,계산식)
		String value = request.getParameter("v");

		// 계산식은 여러개 이므로(submit 여러개) 배열로 넘어오지만 눌렀을 땐 1개만 넘어옴
		String operator = request.getParameter("operator");
		
		
		Cookie valuecookie  = new Cookie("value", value);
		Cookie opercookie = new Cookie("op",operator);
		response.addCookie(valuecookie);
		response.addCookie(opercookie);
		
		String v_val = "";
		String v_oper = "";
		// 4. 이미 요청한 값을 가져와야 하므로 cookie로 가져옴
		Cookie cookies[] = request.getCookies();
		System.out.println(cookies.length);
		
		for(Cookie c : cookies) {
			System.out.println(c.getName());
			if("value".equals(c.getName())){
				System.out.println("value : " +c.getValue());
			}
			if("op".equals(c.getName())) {
				System.out.println("oper : "+c.getValue());
			}
		}
		
		
		
		
	}

}

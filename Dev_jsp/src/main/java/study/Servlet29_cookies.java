package study;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Calc29")
public class Servlet29_cookies extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//1. 입력된 객체는 Filter에서 걸러줌(request)
		
		
//		//2. 출력 객체 utf설정
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		//3. 출력 객체로 부터 out 객체 가져오기
		//OutputStream os = response.getOutputStream();
				//버퍼의 크기가 모두 차기 전에도 보내라 -> 이거해야함
		PrintWriter pos = response.getWriter();
		//덧셈 결과를 가져오기
//		ServletContext application = request.getServletContext();
//		HttpSession session = request.getSession();
		
		//쿠키는 배열로 온다
		Cookie cookies[] = request.getCookies();
		
		String v_= request.getParameter("v");
		String op = request.getParameter("operator");
		
		int v = 0;
		
		
		if(!(v_.equals(""))) { 
			v = Integer.parseInt(v_);
		}
		//계산하는거
		if(op.equals("=")) {
			
			//앞에서 저장하는값 
			//int x = (Integer)application.getAttribute("value");
//			int x = (Integer)session.getAttribute("value");
			
			int x = 0;
			
			for(Cookie c: cookies) {
				System.out.println("1 : "+c.getName());
			if(c.getName().equals("value")) {
		
				x = Integer.parseInt(c.getValue());
				break;
				}
			}
			String op_ = "";
			for(Cookie c: cookies) {
				System.out.println("1 : "+c.getName());
				if(c.getName().equals("op")) {
					op_ = c.getValue();
					break;
					}
			}
			
			int y = v;
			//String op_ = (String)application.getAttribute("op");
			//String op_ = (String)session.getAttribute("op");
			
			int result = 0;
			if(op_.equals("+")) {
				result = x + y;
			}
			else {
				result = x-y;
			}
			response.getWriter().printf("result is %d\n",result);
		}
		
		//값을 저장
		else {
			//어플리 케이션 객체
			
			//application.setAttribute("value", v);
			//application.setAttribute("op", op);
			
			//세션 객체
//			session.setAttribute("value", v);
//			session.setAttribute("op", op);
			
			//클라이언트에 보내기(웹브라이저에) - 쿠키 보냄
			
			Cookie valuecookie = new Cookie("value", String.valueOf(v));
			Cookie opcookie = new Cookie("op", op);
			valuecookie.setPath("/Calc29");
			valuecookie.setMaxAge(60*60*24);
			
			opcookie.setPath("/Calc29");
			opcookie.setMaxAge(60*60*24);
			
			response.addCookie(valuecookie);
			response.addCookie(opcookie);	
			
			response.sendRedirect("Study/calc4.html");
			
		}
		
		
		
		
	}

}

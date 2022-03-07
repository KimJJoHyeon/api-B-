package study;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Calc")
public class Servlet23 extends HttpServlet
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
		
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String button = request.getParameter("button");
		
		//System.out.println(button);
		
		int x_= 0, y_ = 0;

		if(x!=null && y!=null) {
			try {
				x_ = Integer.parseInt(x);
				y_ = Integer.parseInt(y);
			} catch (Exception e) {
				pos.println("숫자가 아닙니다.");
			}
			
		}
		if(button.equals("덧셈")) {
			pos.println("덧셈 결과: " +( x_+ y_) + "입니다. <br>");
		}else {
			pos.println("뺄셈 결과: " +( x_- y_) + "입니다. <br>");
		}
		
		
	}

}

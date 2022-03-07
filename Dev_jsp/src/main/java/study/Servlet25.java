package study;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Calc25")
public class Servlet25 extends HttpServlet
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
		ServletContext application = request.getServletContext();
		HttpSession session = request.getSession();
		String v_= request.getParameter("v");
		String op = request.getParameter("operator");
		
		int v= 0;
		if(!(v_.equals(""))) { 
			v = Integer.parseInt(v_);
		}
		//계산하는거
		if(op.equals("=")) {
			
			//앞에서 저장하는값 
			//int x = (Integer)application.getAttribute("value");
			int x = (Integer)session.getAttribute("value");
			int y = v;
			//String op_ = (String)application.getAttribute("op");
			String op_ = (String)session.getAttribute("op");
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
			//application.setAttribute("value", v);
			//application.setAttribute("op", op);
			session.setAttribute("value", v);
			session.setAttribute("op", op);
		}
		
		
		
		
	}

}

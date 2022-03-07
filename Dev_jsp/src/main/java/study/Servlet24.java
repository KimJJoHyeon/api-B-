package study;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Calc24")
public class Servlet24 extends HttpServlet
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
		
		//배열로 가져오기
		String [] nums = request.getParameterValues("num");
		
		int result = 0;
		for(int i =0; i< nums.length; i++) {
			int num_ = Integer.parseInt(nums[i]);
			result += num_;
		}
	
		pos.println("덧셈 결과: " +(result) + "입니다. <br>");

		
	}

}

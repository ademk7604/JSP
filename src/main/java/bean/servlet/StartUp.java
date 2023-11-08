package bean.servlet;
import java.io.IOException;

import bean.pojo.Student;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/students"})
public class StartUp extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*
		String bilgi = "Students srvletinden geldim.";
		req.setAttribute("info", bilgi); */
		
		Student student = new Student("1748","Mehmet","Gezer",12,'A');
		req.setAttribute("student", student);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("jspUseBean/Students.jsp");
		dispatcher.forward(req, resp); // forward demek iletmek demek
		
		
	}
	

}

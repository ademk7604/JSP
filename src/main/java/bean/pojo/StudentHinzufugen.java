package bean.pojo;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/studentEkle"})
public class StudentHinzufugen extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		RequestDispatcher dispatcher = req.getRequestDispatcher("jspUseBean/StudentEkle.jsp");
		dispatcher.forward(req, resp);
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Student student = new Klassenzimmerstudent() {
			{
				setNo(req.getParameter("No"));
				setFirstname(req.getParameter("firstname"));
				setLastname(req.getParameter("lastname"));
				setSinif(Integer.parseInt(req.getParameter("sinif")));
				setSube(req.getParameter("sube").charAt(0));
			}
		};
		req.setAttribute("eklenenOgrenci", student);
		RequestDispatcher dispatcher = req.getRequestDispatcher("jspUseBean/StudentEkle.jsp");
		dispatcher.forward(req, resp);
		
	}
	

}

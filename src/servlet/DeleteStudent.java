package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import manage.ManageStudent;

public class DeleteStudent extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String studentId = request.getParameter("id");

		ManageStudent.deleteStudent(studentId);

		request.setAttribute("data", ManageStudent.getStudents());

		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/home");
		dispatcher.forward(request, response);
	}
}

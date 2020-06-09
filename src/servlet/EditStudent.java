package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import manage.ManageStudent;

public class EditStudent extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String studentId = request.getParameter("id");

		request.setAttribute("data", ManageStudent.showEditStudent(studentId));

		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/view/editForm.jsp");
		dispatcher.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String checkId = request.getParameter("id");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String license_number = request.getParameter("license_number");

		ManageStudent.editStudent(name, age, license_number, checkId);

		request.setAttribute("data", ManageStudent.getStudents());

		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/view/home.jsp");
		dispatcher.forward(request, response);
	}

}
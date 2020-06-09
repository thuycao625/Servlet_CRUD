package manage;

import java.util.ArrayList;
import java.util.List;

import entity.Student;

public class ManageStudent {

	private static List<Student> listStudent = new ArrayList<>();

	public static List<Student> getStudents() {
		return listStudent;
	}

	public static void addStudent(String id, String name, String age, String license_car_number) {

		Student student = new Student();

		student.setId(id);
		student.setName(name);
		student.setAge(Integer.parseInt(age));
		student.setLicense_car_number(license_car_number);

		listStudent.add(student);
	}

	public static void deleteStudent(String id) {

		for (int i = 0; i < listStudent.size(); i++) {

			if (listStudent.get(i).getId().equals(id)) {
				listStudent.remove(i);
			}
		}
	}

	public static Student showEditStudent(String id) {

		for (int i = 0; i < listStudent.size(); i++) {

			if (listStudent.get(i).getId().equals(id)) {

				return listStudent.get(i);
			}
		}
		return null;
	}

	public static void editStudent(String name, String age, String license_car_number, String checkId) {
		for (int i = 0; i < listStudent.size(); i++) {

			if (listStudent.get(i).getId().equals(checkId)) {

				listStudent.get(i).setName(name);
				listStudent.get(i).setAge(Integer.parseInt(age));
				listStudent.get(i).setLicense_car_number(license_car_number);
			}
		}
	}

}

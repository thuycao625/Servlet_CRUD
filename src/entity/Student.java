package entity;

public class Student {

	private String name;
	private int age;
	private String id;
	private String license_car_number;

	public Student() {

	}

	public Student(String id,String name, int age) {
		this.id = id;
		this.name = name;
		this.age = age;
	}

	public Student(String id,String name, int age, String license_car_number) {
		this.id = id;
		this.name = name;
		this.age = age;
		this.license_car_number = license_car_number;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getName() {
		return name;
	}

	public int getAge() {
		return age;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLicense_car_number() {
		return license_car_number;
	}

	public void setLicense_car_number(String license_car_number) {
		this.license_car_number = license_car_number;
	}

}

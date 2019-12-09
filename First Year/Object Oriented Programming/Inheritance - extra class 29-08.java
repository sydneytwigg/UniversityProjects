public class Student extends Parent {
	private String name;
	private int age;
	
	public Student(String s, String n, int a) {
		super(s);
		name = n;
		age = a;
	}
	
	public void DisplayAll(){
		System.out.println("Name is: " + name + " surname is: " + super.getSurname());
	}
	
	public static void main(String [] args){
		Student stu = new Student ("Mapaso", "Ndai", 56);
		stu.DisplayAll();
	}

}

public class Parent {
	private String surname;
	
	public Parent(String surname) {
		this.surname = surname;
	}
	
	public String get Surname() {
		return this.surname;
	}
}
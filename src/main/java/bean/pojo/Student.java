package bean.pojo;

public class Student {
	private String no;
	private String firstname;
	private String lastname;
	private int sinif;
	private char sube;
	
	public Student() {
}

	public Student(String no, String firstname, String lastname, int sinif, char sube) {
		super();
		this.no = no;
		this.firstname = firstname;
		this.lastname = lastname;
		this.sinif = sinif;
		this.sube = sube;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public int getSinif() {
		return sinif;
	}

	public void setSinif(int sinif) {
		this.sinif = sinif;
	}

	public char getSube() {
		return sube;
	}

	public void setSube(char sube) {
		this.sube = sube;
	}
	
}

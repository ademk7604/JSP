package bean.pojo;

public class Ogretmen {
	private int no;
	private String firstname;
	private String lastname;
	private String brans;
	
	public Ogretmen() {
		
	}
	public Ogretmen(int no, String firstname, String lastname, String brans) {
		this.no = no;
		this.firstname = firstname;
		this.lastname = lastname;
		this.brans = brans;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
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
	public String getBrans() {
		return brans;
	}
	public void setBrans(String brans) {
		this.brans = brans;
	}
	
	

}

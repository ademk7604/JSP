package bean.pojo;

import java.util.ArrayList;
import java.util.List;

public class Klassenzimmerstudent extends Student{
	private List<String> kurse;
	
	public Klassenzimmerstudent() {
		this.kurse = new ArrayList<String>();
	}

	public Klassenzimmerstudent(String no, String firstname, String lastname, int sinif, char sube,
			List<String> kurse) {
		super(no, firstname, lastname, sinif, sube);
		if(kurse == null) {
			this.kurse = new ArrayList<String>();
		}else {
			this.kurse = kurse;
		}
	}
	
	
	
	

}

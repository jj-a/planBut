package kr.co.planbut.common;


// Country(국가) Table
public class CountryDTO {

	// Variable
	private String c_code, c_name;
	
	
	// Constructor
	public CountryDTO() {
		;
	}

	
	// Getter&Setter

	public String getC_code() {
		return c_code;
	}

	public void setC_code(String c_code) {
		this.c_code = c_code;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

}
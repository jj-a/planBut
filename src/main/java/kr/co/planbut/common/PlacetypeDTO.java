package kr.co.planbut.common;


// Placetype(관광지유형) Table
public class PlacetypeDTO {

	// Variable
	private String pt_code, pt_name;

	
	// Constructor
	public PlacetypeDTO() {
		;
	}

	
	// Getter&Setter

	public String getPt_code() {
		return pt_code;
	}

	public void setPt_code(String pt_code) {
		this.pt_code = pt_code;
	}

	public String getPt_name() {
		return pt_name;
	}

	public void setPt_name(String pt_name) {
		this.pt_name = pt_name;
	}

}
package kr.co.planbut.common;

public class PlaceDTO {
	
	public PlaceDTO() {
		System.out.println("Start PlaceVO");
	}

	
	// Country(국가) Table
	public class Country {
		
		// Variable
		private String c_code, c_name;


		// Constructor
		public Country() {
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
		
	} // Country() Class

	
	
	// City(도시) Table
	public class City {
		
		// Variable
		private String ct_code, c_code, ct_name;


		// Constructor
		public City() {
			;
		}
		

		// Getter&Setter
		
		public String getCt_code() {
			return ct_code;
		}

		public void setCt_code(String ct_code) {
			this.ct_code = ct_code;
		}

		public String getC_code() {
			return c_code;
		}

		public void setC_code(String c_code) {
			this.c_code = c_code;
		}

		public String getCt_name() {
			return ct_name;
		}

		public void setCt_name(String ct_name) {
			this.ct_name = ct_name;
		}
		
	} // City() Class

	
	
	// Placetype(관광지) Table
	public class Placetype {
		
		// Variable
		private String pt_code, pt_name;


		// Constructor
		public Placetype() {
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
		
	} // Placetype() Class

	
	
	// Place(관광지) Table
	class Place {
		
		// Variable
		private String p_code, pt_code, ct_code, p_name, address, xy, content;


		// Constructor
		public Place() {
			;
		}


		// Getter&Setter

		public String getP_code() {
			return p_code;
		}

		public void setP_code(String p_code) {
			this.p_code = p_code;
		}

		public String getPt_code() {
			return pt_code;
		}

		public void setPt_code(String pt_code) {
			this.pt_code = pt_code;
		}

		public String getCt_code() {
			return ct_code;
		}

		public void setCt_code(String ct_code) {
			this.ct_code = ct_code;
		}

		public String getP_name() {
			return p_name;
		}

		public void setP_name(String p_name) {
			this.p_name = p_name;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getXy() {
			return xy;
		}

		public void setXy(String xy) {
			this.xy = xy;
		}

		public String getContent() {
			return content;
		}

		public void setContent(String content) {
			this.content = content;
		}
		
	} // Place() Class
	
	
}
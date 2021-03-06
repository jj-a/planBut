package kr.co.planbut.common;


// Place(관광지) Table
public class PlaceDTO {

	private String p_code, pt_code, ct_code, p_name, address, content;
	private double lat, lng;
	
	private PlacetypeDTO placetype;	// placetype 테이블 조인


	// Constructor
	public PlaceDTO() {
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	

	public double getLat() {
		return lat;
	}


	public void setLat(double lat) {
		this.lat = lat;
	}


	public double getLng() {
		return lng;
	}


	public void setLng(double lng) {
		this.lng = lng;
	}


	public PlacetypeDTO getPlacetype() {
		return placetype;
	}

	public void setPlacetype(PlacetypeDTO placetype) {
		this.placetype = placetype;
	}

}
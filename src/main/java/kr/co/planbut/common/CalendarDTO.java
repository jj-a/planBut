package kr.co.planbut.common;


// Calendar(캘린더) Table
public class CalendarDTO {

	// Variable
	private String cal_code, cp_code, ct_code, memo, date;
	private CityplanDTO cityplan;
	private CityDTO city;


	// Constructor
	public CalendarDTO() {
		;
	}

	
	// Getter&Setter

	public String getCal_code() {
		return cal_code;
	}

	public void setCal_code(String cal_code) {
		this.cal_code = cal_code;
	}

	public String getCp_code() {
		return cp_code;
	}

	public void setCp_code(String cp_code) {
		this.cp_code = cp_code;
	}

	public String getCt_code() {
		return ct_code;
	}

	public void setCt_code(String ct_code) {
		this.ct_code = ct_code;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public CityplanDTO getCityplan() {
		return cityplan;
	}

	public void setCityplan(CityplanDTO cityplan) {
		this.cityplan = cityplan;
	}
	
	public CityDTO getCity() {
		return city;
	}

	public void setCity(CityDTO city) {
		this.city = city;
	}

}
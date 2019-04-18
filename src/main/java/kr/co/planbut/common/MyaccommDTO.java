package kr.co.planbut.common;


// Myaccomm(숙소) Table
public class MyaccommDTO {

	// Variable
	private String ac_code, cp_code, ac_name;
	private int price;
	private String memo;

	
	// Constructor
	public MyaccommDTO() {
		;
	}
	
	
	// Getter&Setter

	public String getAc_code() {
		return ac_code;
	}

	public void setAc_code(String ac_code) {
		this.ac_code = ac_code;
	}

	public String getCp_code() {
		return cp_code;
	}

	public void setCp_code(String cp_code) {
		this.cp_code = cp_code;
	}

	public String getAc_name() {
		return ac_name;
	}

	public void setAc_name(String ac_name) {
		this.ac_name = ac_name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

}
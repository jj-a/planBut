package kr.co.planbut.common;


// Myticket(티켓) Table
public class MyticketDTO {

	// Variable
	private String tic_code, cp_code, tic_name, date;
	private int price;
	private String memo;

	
	// Constructor
	public MyticketDTO() {
		;
	}
	

	// Getter&Setter

	public String getTic_code() {
		return tic_code;
	}

	public void setTic_code(String tic_code) {
		this.tic_code = tic_code;
	}

	public String getCp_code() {
		return cp_code;
	}

	public void setCp_code(String cp_code) {
		this.cp_code = cp_code;
	}

	public String getTic_name() {
		return tic_name;
	}

	public void setTic_name(String tic_name) {
		this.tic_name = tic_name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
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
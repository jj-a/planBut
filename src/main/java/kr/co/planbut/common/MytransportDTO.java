package kr.co.planbut.common;


// Mytransport(교통) Table
public class MytransportDTO {

	// Variable
	private String trans_code, cp_code, s_point, e_point, trans;
	private int price;
	private String s_time, e_time, memo;

	
	// Constructor
	public MytransportDTO() {
		;
	}
	

	// Getter&Setter

	public String getTrans_code() {
		return trans_code;
	}

	public void setTrans_code(String trans_code) {
		this.trans_code = trans_code;
	}

	public String getCp_code() {
		return cp_code;
	}

	public void setCp_code(String cp_code) {
		this.cp_code = cp_code;
	}

	public String getS_point() {
		return s_point;
	}

	public void setS_point(String s_point) {
		this.s_point = s_point;
	}

	public String getE_point() {
		return e_point;
	}

	public void setE_point(String e_point) {
		this.e_point = e_point;
	}

	public String getTrans() {
		return trans;
	}

	public void setTrans(String trans) {
		this.trans = trans;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getS_time() {
		return s_time;
	}

	public void setS_time(String s_time) {
		this.s_time = s_time;
	}

	public String getE_time() {
		return e_time;
	}

	public void setE_time(String e_time) {
		this.e_time = e_time;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

}
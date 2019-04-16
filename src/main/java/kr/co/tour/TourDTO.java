package kr.co.tour;

public class TourDTO {
	private String tour_code;
	private String tour_name;
	private String ct_code;
	private int price;
	private String content;
	private String s_date;
	private String e_date;
	private String photo;
	private String category;
	private int t_time;
	private String m_place;
	private int capacity;
	private int minimum;
	private String day;
	
	
	public TourDTO() {}


	public String getTour_code() {
		return tour_code;
	}


	public void setTour_code(String tour_code) {
		this.tour_code = tour_code;
	}


	public String getTour_name() {
		return tour_name;
	}


	public void setTour_name(String tour_name) {
		this.tour_name = tour_name;
	}


	public String getCt_code() {
		return ct_code;
	}


	public void setCt_code(String ct_code) {
		this.ct_code = ct_code;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getS_date() {
		return s_date;
	}


	public void setS_date(String s_date) {
		this.s_date = s_date;
	}


	public String getE_date() {
		return e_date;
	}


	public void setE_date(String e_date) {
		this.e_date = e_date;
	}


	public String getPhoto() {
		return photo;
	}


	public void setPhoto(String photo) {
		this.photo = photo;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public int getT_time() {
		return t_time;
	}


	public void setT_time(int t_time) {
		this.t_time = t_time;
	}


	public String getM_place() {
		return m_place;
	}


	public void setM_place(String m_place) {
		this.m_place = m_place;
	}


	public int getCapacity() {
		return capacity;
	}


	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}


	public int getMinimum() {
		return minimum;
	}


	public void setMinimum(int minimum) {
		this.minimum = minimum;
	}


	public String getDay() {
		return day;
	}


	public void setDay(String day) {
		this.day = day;
	}


	@Override
	public String toString() {
		return "TourDTO [tour_code=" + tour_code + ", tour_name=" + tour_name + ", ct_code=" + ct_code + ", price=" + price + ", content=" + content
				+ ", s_date=" + s_date + ", e_date=" + e_date + ", photo=" + photo + ", category=" + category + ", t_time=" + t_time + ", m_place="
				+ m_place + ", capacity=" + capacity + ", minimum=" + minimum + ", day=" + day + "]";
	}
	
	
	
}

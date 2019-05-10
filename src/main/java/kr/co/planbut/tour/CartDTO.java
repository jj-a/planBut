package kr.co.planbut.tour;

import java.util.ArrayList;

public class CartDTO {
	private String cart_code;
	private String tour_code;
	private String m_id;
	private String tourday;	
	private int people;
	private ArrayList<String> cart_list;
	
	
	public CartDTO() {}

	public String getCart_code() {
		return cart_code;
	}

	public void setCart_code(String cart_code) {
		this.cart_code = cart_code;
	}

	public String getTour_code() {
		return tour_code;
	}

	public void setTour_code(String tour_code) {
		this.tour_code = tour_code;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getTourday() {
		return tourday;
	}

	public void setTourday(String tourday) {
		this.tourday = tourday;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public ArrayList<String> getCart_list() {
		return cart_list;
	}

	public void setCart_list(ArrayList<String> cart_list) {
		this.cart_list = cart_list;
	}

	@Override
	public String toString() {
		return "CartDTO [cart_code=" + cart_code + ", tour_code=" + tour_code + ", m_id=" + m_id + ", tourday=" + tourday + ", people=" + people
				+ "]";
	}
	
	
}

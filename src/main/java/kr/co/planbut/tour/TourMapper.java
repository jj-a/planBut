package kr.co.planbut.tour;

import java.util.ArrayList;


public interface TourMapper {

	/*
	 * 매퍼(notice.xml)에 등록되어 있는 id를 인터페이스 메소드에 다시 한번 등록함으로써 MyBatis3에서 호출하기 편리하도록 지원함.
	 */

	// <select id="list">
	public ArrayList<TourDTO> countrylist();

	public ArrayList<TourDTO> citylist();

	public ArrayList<TourDTO> plannerlist();

	public ArrayList<TourDTO> tourlist(TourDTO dto);

	public ArrayList<TourDTO> cartlist(String m_id);
	
	public ArrayList<TourDTO> reviewlist(TourDTO dto);
	
	public ArrayList<TourDTO> reservelist(String m_id);
	
	public ArrayList<TourDTO> c_reservelist(String m_id);
	
	public ArrayList<TourDTO> qnalist(String m_id);
	
	public ArrayList<ReplyDTO> replylist(String m_id);

	public TourDTO read(TourDTO dto);
	
	public int tourtotal(TourDTO dto);
	
	public int reviewtotal(TreviewDTO review);
	
	public int addcart(CartDTO dto);

	public int addreview(TreviewDTO dto);
	
	public int addqna(QnaDTO dto);

	public Integer reviewavg(TreviewDTO review);

	public int payed(TreserveDTO dto);

	public ArrayList<TourDTO> readcart(ArrayList<CartDTO> cart_list);
 
}

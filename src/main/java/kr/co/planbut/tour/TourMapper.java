package kr.co.planbut.tour;

import java.util.ArrayList;

public interface TourMapper {

	/*
	 * 매퍼(notice.xml)에 등록되어 있는 id를 인터페이스 메소드에 다시 한번 등록함으로써 MyBatis3에서 호출하기 편리하도록 지원함.
	 */

	// <select id="list">
	public ArrayList<TourDTO> countrylist();

	public ArrayList<TourDTO> citylist();

	public TourDTO read(TourDTO dto);
	
//	public TourDTO create(TourDTO dto);
	
//	public TourDTO update(TourDTO dto);

//	public TourDTO delete(TourDTO dto);
}

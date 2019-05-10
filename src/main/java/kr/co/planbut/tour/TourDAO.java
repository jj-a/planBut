package kr.co.planbut.tour;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;



@Component
public class TourDAO {

	@Autowired
	SqlSession sqlSession;

	public TourDAO() {
		System.out.println("--- TourDAO 생성");
	}
	
	//국가 리스트
	public ArrayList<TourDTO> countrylist() {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		ArrayList<TourDTO> countrylist = mapper.countrylist();
		return countrylist;
	}//countrylist end

	//도시 리스트
	public ArrayList<TourDTO> citylist() {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		ArrayList<TourDTO> citylist = mapper.citylist();
		return citylist;
	}// city end
	
	//투어 리스트
	public ArrayList<TourDTO> tourlist(TourDTO dto) {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		ArrayList<TourDTO> tourlist = mapper.tourlist(dto);
		return tourlist;
	}//tourlist end
	
	//내 계획에 맞는 도시 리스트
	public ArrayList<TourDTO> plannerlist() {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		ArrayList<TourDTO> plannerlist = mapper.plannerlist();
		return plannerlist;
	}//planner end

	//장바구니 
	public ArrayList<TourDTO> cartlist(String m_id) {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		ArrayList<TourDTO> cartlist = mapper.cartlist(m_id);
		return cartlist;
	}//cartlist end

	//장바구니 상세조회(예약용) 
	public TourDTO readcart(String cart_code) {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		TourDTO dto = mapper.readcart(cart_code);
		return dto;
	}//cartlist end

	//리뷰 목록
	public ArrayList<TourDTO> reviewlist(TourDTO dto) {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		ArrayList<TourDTO> reviewlist = mapper.reviewlist(dto);
		return reviewlist;
	}//review end
	
	//예약하기
		public int payed(TreserveDTO dto) {
			TourMapper mapper = sqlSession.getMapper(TourMapper.class);
			int res = mapper.payed(dto);
			return res;
		}
		
	//예약목록
	public ArrayList<TourDTO> reservelist(String m_id) {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		ArrayList<TourDTO> reservelist = mapper.reservelist(m_id);
		return reservelist;
	}//reservelist end
	
	//지난 예약목록
	public ArrayList<TourDTO> c_reservelist(String m_id) {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		ArrayList<TourDTO> c_reservelist = mapper.c_reservelist(m_id);
		return c_reservelist;
	}//c_reservelist end
	
	//문의내역
	public ArrayList<TourDTO> qnalist(String m_id) {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		ArrayList<TourDTO> qnalist = mapper.qnalist(m_id);
		return qnalist;
	}//c_reservelist end
	
	//투어 상세보기
	public TourDTO read(TourDTO dto) {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		dto = mapper.read(dto);  
		return dto;
	}//read end

	//투어 개수
	public int tourtotal(TourDTO dto) {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		int tourtotal = mapper.tourtotal(dto);
		return tourtotal;
	}//tourtotal end

	//장바구니 추가
	public int addcart(CartDTO dto) {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		int res = mapper.addcart(dto);
		return res;
	}

	//리뷰쓰기
	public int addreview(TreviewDTO dto) {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		int res = mapper.addreview(dto);
		return res;
	}
	
	//문의 작성
	public int addqna(QnaDTO dto) {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		int res = mapper.addqna(dto);
		return res;
	}
	
	//리뷰 갯수
	public int reviewtotal(TreviewDTO review) {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		int reviewtotal = mapper.reviewtotal(review);
		return reviewtotal;
	}//tourtotal end

	//리뷰 평균
	public Integer reviewavg(TreviewDTO review) {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		Integer reviewavg = mapper.reviewavg(review);
		return reviewavg;
	}
	
	//문의 목록
	public ArrayList<ReplyDTO> replylist(String m_id) {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		ArrayList<ReplyDTO> replylist = mapper.replylist(m_id);
		return replylist;
	}
/*
	public int delete(CartDTO dto) {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		int count = mapper.delete(dto);
		return count;
	}//delete end	
	
	*/
}

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

	public ArrayList<TourDTO> countrylist() {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		ArrayList<TourDTO> countrylist = mapper.countrylist();
		return countrylist;
	}
	
	public ArrayList<TourDTO> citylist() {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		ArrayList<TourDTO> citylist = mapper.citylist();
		return citylist;
	}// list end

	public TourDTO read(TourDTO dto) {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		dto = mapper.read(dto);  
		return dto;
	}

}

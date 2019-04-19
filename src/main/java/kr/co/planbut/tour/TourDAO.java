package kr.co.planbut.tour;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;


public class TourDAO {

	/*
	@Autowired
	SqlSession sqlSession;
	*/

	public TourDAO() {
		System.out.println("--- TourDAO 생성");
	}
	
/*	
	public ArrayList<TourDTO> list() {
		TourMapper mapper = sqlSession.getMapper(TourMapper.class);
		ArrayList<TourDTO> list = mapper.list();
		return list;
	}// list end
*/
}

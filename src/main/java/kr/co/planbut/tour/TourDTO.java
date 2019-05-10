package kr.co.planbut.tour;


import kr.co.planbut.common.CityDTO;
import kr.co.planbut.common.CityplanDTO;
import kr.co.planbut.common.CountryDTO;
import kr.co.planbut.common.MemberDTO;
import kr.co.planbut.common.PlannerDTO;
import kr.co.planbut.tour.TreserveDTO;
import kr.co.planbut.tour.TreviewDTO;;

public class TourDTO {
	private String tour_code, tour_name, ct_code;
	private String content, s_date, e_date, photo, category, m_place, day;
	private int price, t_time, capacity, minimum;
	private CityDTO cityDTO;
	private CountryDTO countryDTO;
	private PlannerDTO plannerDTO;
	private CityplanDTO cityplanDTO;
	private CartDTO cartDTO;
	private TreserveDTO treserveDTO;
	private QnaDTO qnaDTO;
	private ReplyDTO replyDTO;
	private TreviewDTO treviewDTO;
	private MemberDTO memberdto;
	private int cnt;
	private int pay;
	
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
	
	public CityDTO getCityDTO() {
		return cityDTO;
	}

	public void setCityDTO(CityDTO cityDTO) {
		this.cityDTO = cityDTO;
	}
	
	public CountryDTO getCountryDTO() {
		return countryDTO;
	}
	
	public void setCountryDTO(CountryDTO CountryDTO) {
		this.countryDTO = CountryDTO;
	}
	
	
	public CityplanDTO getCityplanDTO() {
		return cityplanDTO;
	}


	public void setCityplanDTO(CityplanDTO cityplanDTO) {
		this.cityplanDTO = cityplanDTO;
	}

	public PlannerDTO getPlannerDTO() {
		return plannerDTO;
	}

	public void setPlannerDTO(PlannerDTO plannerDTO) {
		this.plannerDTO = plannerDTO;
	}

	public CartDTO getCartDTO() {
		return cartDTO;
	}

	public void setCartDTO(CartDTO cartDTO) {
		this.cartDTO = cartDTO;
	}

	public TreserveDTO getTreserveDTO() {
		return treserveDTO;
	}

	public void setTreserveDTO(TreserveDTO treserveDTO) {
		this.treserveDTO = treserveDTO;
	}

	public QnaDTO getQnaDTO() {
		return qnaDTO;
	}

	public void setQnaDTO(QnaDTO qnaDTO) {
		this.qnaDTO = qnaDTO;
	}

	public ReplyDTO getReplyDTO() {
		return replyDTO;
	}

	public void setReplyDTO(ReplyDTO replyDTO) {
		this.replyDTO = replyDTO;
	}

	public TreviewDTO getTreviewDTO() {
		return treviewDTO;
	}

	public void setTreviewDTO(TreviewDTO treviewDTO) {
		this.treviewDTO = treviewDTO;
	}
	
	public MemberDTO getMemberdto() {
		return memberdto;
	}

	public void setMemberdto(MemberDTO memberdto) {
		this.memberdto = memberdto;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	@Override
	public String toString() {
		return "TourDTO [tour_code=" + tour_code + ", tour_name=" + tour_name + ", ct_code=" + ct_code + ", price=" + price + ", content=" + content
				+ ", s_date=" + s_date + ", e_date=" + e_date + ", photo=" + photo + ", category=" + category + ", t_time=" + t_time + ", m_place="
				+ m_place + ", capacity=" + capacity + ", minimum=" + minimum + ", day=" + day + "]";
	}
	
	
	
}

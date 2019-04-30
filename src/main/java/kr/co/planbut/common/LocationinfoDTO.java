package kr.co.planbut.common;

public class LocationinfoDTO {
	int ip_from;//` INT(10) UNSIGNED,
	int ip_to;//` INT(10) UNSIGNED,
	String country_code;//` CHAR(2),
	String country_name;//` VARCHAR(64),
	String region_name;//` VARCHAR(128),
	String city_name;//` VARCHAR(128),
	String latitude;//` DOUBLE,
	String longitude;//` DOUBLE,
	String zip_code;//` VARCHAR(30),
	String time_zone;//` VARCHAR(8),
	
	public LocationinfoDTO() {} // constructor

	public int getIp_from() {
		return ip_from;
	}
	public void setIp_from(int ip_from) {
		this.ip_from = ip_from;
	}
	public int getIp_to() {
		return ip_to;
	}
	public void setIp_to(int ip_to) {
		this.ip_to = ip_to;
	}
	public String getCountry_code() {
		return country_code;
	}
	public void setCountry_code(String country_code) {
		this.country_code = country_code;
	}
	public String getCountry_name() {
		return country_name;
	}
	public void setCountry_name(String country_name) {
		this.country_name = country_name;
	}
	public String getRegion_name() {
		return region_name;
	}
	public void setRegion_name(String region_name) {
		this.region_name = region_name;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getZip_code() {
		return zip_code;
	}
	public void setZip_code(String zip_code) {
		this.zip_code = zip_code;
	}
	public String getTime_zone() {
		return time_zone;
	}
	public void setTime_zone(String time_zone) {
		this.time_zone = time_zone;
	}
	
}//class end

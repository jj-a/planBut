<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>플래너 - 스투비플래너</title>
<meta http-equiv="Content-Language" content="ko">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<link rel="image_src" href="//www.stubbyplanner.com/img_v9/stubby_intro2.png" />
<meta property="og:title" content="여행루트 - 스투비플래너" />
<meta property="og:type" content="website" />
<meta property="og:url"
	content="http://www.stubbyplanner.com/planner/planner_rt.asp?trip_id=10244967&tripgene=181071004:1:X,181071001:1:X,181041001:1:X,181061001:3:X,181121001:1:X" />
<meta property="og:image" content="//www.stubbyplanner.com/img_v9/stubby_intro2.png" />
<meta property="og:site_name" content="스투비플래너" />
<meta property="og:description" content="상상속 여행을 현실로, 스투비플래너" />
<meta property="fb:app_id" content="259912364023378" />


<meta name="viewport" content="width=800,initial-scale=0.4,minimum-scale=0.4,maximum-scale=0.4">


<script src="https://www.google.com/jsapi"></script>
<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
	ga('create', 'UA-913663-1', 'auto');
	ga('send', 'pageview');

	!function(f, b, e, v, n, t, s) {
		if (f.fbq)
			return;
		n = f.fbq = function() {
			n.callMethod ? n.callMethod.apply(n, arguments) : n.queue.push(arguments)
		};
		if (!f._fbq)
			f._fbq = n;
		n.push = n;
		n.loaded = !0;
		n.version = '2.0';
		n.queue = [];
		t = b.createElement(e);
		t.async = !0;
		t.src = v;
		s = b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t, s)
	}(window, document, 'script', 'https://connect.facebook.net/en_US/fbevents.js');
	fbq('init', '597062987120795');
	fbq('track', 'Planner');
</script>

<script type="text/javascript" src="//maps.google.co.kr/maps/api/js?sensor=false&language=ko&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="//code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/superguide/assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/superguide/One-Pages/assets/plugins/owl-carousel2/assets/owl.carousel.css">



<!-- Core CSS file -->
<link rel="stylesheet" href="/css/photoswipe.css">

<!-- Skin CSS file (styling of UI - buttons, caption, etc.)
     In the folder of skin CSS file there are also:
     - .png and .svg icons sprite, 
     - preloader.gif (for browsers that do not support CSS animations) -->
<link rel="stylesheet" href="//photoswipe.com/dist/default-skin/default-skin.css?v=4.1.1-1.0.4">

<!-- Core JS file -->
<script src="/js/photoswipe.min.js"></script>

<!-- UI JS file -->
<script src="/js/photoswipe-ui-default.min.js"></script>
<script src="/superguide/One-Pages/assets/plugins/owl-carousel2/owl.carousel.min.js"></script>
<script src="/superguide/One-Pages/Travel/assets/js/plugins/owl-carousel2.js"></script>
<style>
.nightMoveTab {
	float: left;
	width: 50%;
	padding-top: 5px;
	padding-bottom: 5px;
	font-size: 10pt;
	color: #fff;
	border: 2px solid #77C9D4;
	cursor: pointer;
}

.nightMoveTabSelected {
	background: #77C9D4;
	float: left;
	width: 50%;
	padding-top: 5px;
	padding-bottom: 5px;
	font-size: 10pt;
	color: #fff;
	border: 2px solid #77C9D4;
	cursor: pointer;
}

.top_menu {
	cursor: pointer;
	float: left;
	width: 25%;
	text-align: center;
	padding-top: 10px;
	padding-bottom: 10px;
}

.top_menu:hover {
	background: #08CE8F;
	border-bottom: 5px solid gray;
}

.tabMenuSelected {
	cursor: pointer;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	float: left;
	width: 45%;
	background: #A5A5Af;
	padding-top: 11px;
	padding-bottom: 7px;
	font-size: 9pt;
	font-weight: bold;
	color: #fff
}

.tabMenu {
	cursor: pointer;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	float: left;
	width: 45%;
	color: #fff;
	padding-top: 11px;
	padding-bottom: 7px;
	font-size: 9pt;
	color: #fff
}

.region_menu {
	text-align: center;
	padding-top: 2px;
	float: left;
	width: 5%;
}

.region_menu img {
	width: 80%;
}

.region_title {
	color: #696969;
	padding-left: 1px;
	padding-right: 1px;
	text-align: center;
	font-size: 7pt;
	padding-top: 3px;
	padding-bottom: 3px;
}

.trs_selector_selected {
	cursor: pointer;
	border-radius: 90px;
	border: 5px solid #3ad195;
	background: #3ad195;
	height: 105px;
	color: #fff;
	padding-top: 8px;;
	text-align: center
}

.trs_selector_container {
	float: left;
	width: 20%;
	margin-top: 5px;
	margin-bottom: 5px;
	padding-right: 5px;
	padding-left: 5px;
}

.trs_selector {
	cursor: pointer;
	height: 105px;
	border: 5px solid #3ad195;
	border-radius: 90px;
	color: #fff;
	padding-top: 8px;
	text-align: center
}

.bk_bg_selected {
	background: rgba(255, 255, 255, 0.8);
	width: 100%;
	height: 190px;
}

.bk_bg {
	background: linear-gradient(to bottom, rgba(0, 0, 0, 0), rgba(0, 0, 0, 5));
	width: 100%;
	height: 30px;
}

.bk_selected {
	position: absolute;
	color: #ee685a;
	height: 190px;
	font-size: 80pt;
	top: 5px;
	right: 28px;
}

.bk {
	position: absolute;
	color: #fff;
	height: 30px;
	font-size: 30pt;
	top: 0px;
	right: 10px;
}

.rc_bg_selected {
	background: rgba(0, 0, 0, 0.8);
	width: 100%;
	height: 220px;
	padding-top: 50px;
}

.rc_bg {
	background: linear-gradient(to bottom, rgba(0, 0, 0, 0), rgba(0, 0, 0, 5));
	width: 100%;
	height: 30px;
}

.rc_selected {
	position: absolute;
	color: #696969;
	height: 210px;
	font-size: 80pt;
	top: 15px;
	right: 22px;
}

.rc {
	position: absolute;
	color: #fff;
	height: 30px;
	font-size: 30pt;
	top: 0px;
	right: 10px;
}

.owl-dots {
	text-align: center; //
	position: fixed; //
	bottom: 5px;
	width: 100%;
	-webkit-backface-visibility: hidden;
	-moz-backface-visibility: hidden;
	-ms-backface-visibility: hidden;
	backface-visibility: hidden;
}

.owl-dot {
	border-radius: 50px;
	height: 3px;
	width: 10px;
	display: inline-block;
	background: rgba(127, 127, 127, 0.5);
	margin-left: 2px;
	margin-right: 2px;
}

.owl-dot.active {
	background: rgba(127, 127, 127, 1);
}

.owl-nav [class*=owl-] {
	background: rgba(0, 0, 0, 0.5);
	color: rgba(255, 255, 255, 0.9);
	font-size: 11px;
	width: 30px;
	height: 30px;
	line-height: 30px;
	border-radius: 0;
	text-align: center;
}

.owl-nav [class*=owl-]:hover {
	background: rgba(0, 0, 0, 0.9);
	color: #FFF;
}

.owl-prev {
	position: absolute;
	top: 110px;
	height: 30px;
	margin: auto !important;
}

.owl-next {
	position: absolute;
	top: 110px;
	height: 30px;
	margin: auto !important;
}

.owl-prev {
	left: -7px;
}

.owl-next {
	right: -7px;
}

.btn_ctype {
	cursor: pointer;
	border: 1px solid #fff;
	width: 30px;
	height: 30px;
	border-radius: 25px;
	display: inline-block;
	color: #696969;
	padding-top: 5px;
}

.selected {
	background: #fff;
}

.duration {
	font-size: 9pt;
	font-family: tahoma;
	color: gray;
	padding-left: 5px;
}

.photochar {
	border: 0px rgb(0, 0, 0);
	color: rgb(0, 0, 0);
	line-height: 10px;
	font-size: 8pt;
	font-weight: 300;
	text-decoration: none;
	background-color: transparent;
	font-family: 'NanumGothic';
}

.photoonmap {
	border: 0px rgb(0, 0, 0);
	shadow: 0px 0px 3px rgba(0, 0, 0, 0.5);
}

.spotinfo {
	border-top: 1px solid #797878;
	border-bottom: 1px solid #797878;
	width: 260px;
	display: inline-block;
	background: #eae9e9;
	padding-top: 10px;
	padding-left: 10px;
	padding-bottom: 5px;
	height: 45px;
	text-align: left;
	background-repeat: no-repeat;
	background-position: left center;
}

select {
	width: 75px;
	font-size: 8pt;
	font-family: 돋움;
}

body {
	margin: 0;
	height: 100%;
	overflow: hidden
}

.trsinfo {
	margin-bottom: 0px;
	padding-left: 15px;
	padding-right: 10px;
	text-align: left;
	font-size: 9pt;
	font-face: 돋움;
	margin-top: -1px;
}

.cityinfo { //
	border-radius: 15px; //
	width: 240px; //
	display: inline-block; //
	background: #eae9e9; //
	padding-top: 8px;
	padding-left: 15px; //
	padding-bottom: 8px;
	text-align: left;
	background-repeat: no-repeat;
	background-position: left center;
	border-top: 1px solid #efefef;
	border-bottom: 1px solid #efefef;
	margin-top: -1px;
}

.date_in_out {
	padding-top: 4px;
	font-size: 8pt;
	color: #c0c0c0;
}

.cityblock {
	padding-top: 0px;
	padding-left: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	text-align: center;
	cursor: pointer;
}

a img {
	border: 0px;
}

a {
	text-decoration: none;
}

.menu_region a {
	font-size: 11pt;
	font-family: 돋움;
	color: #ffffff;
	text-decoration: underline;
}

.ui-autocomplete {
	position: absolute;
	cursor: default;
	z-index: 9999 !important;
}

.spotbox {
	display: none;
	overflow-y: hidden;
	height: 25px;
}

.stubby_s_black {
	font-size: 10pt;
	font-family: 'NanumGothic';
	font-weight: bold;
	color: #3b3b37;
}

.stubby_s_red {
	font-size: 9pt;
	font-family: 'NanumGothic';
	font-weight: bold;
	color: #ee5a3e;
}

.stubby_s_white {
	font-size: 9pt;
	font-family: 'NanumGothic';
	font-weight: bold;
	color: #ffffff;
}

.stubby_s_grey {
	font-size: 9pt;
	font-family: 'NanumGothic';
	font-weight: bold;
	color: #a1a1a1;
}

.stubby_m_black {
	font-size: 10pt;
	font-family: 'NanumGothic';
	font-weight: bold;
	color: #3b3b37;
}

.stubby_m_red {
	font-size: 11pt;
	font-family: 'NanumGothic';
	font-weight: bold;
	color: #ee5a3e;
}

.stubby_m_white {
	font-size: 11pt;
	font-family: 'NanumGothic';
	font-weight: bold;
	color: #ffffff;
}

.stubby_m_grey {
	font-size: 11pt;
	font-family: 'NanumGothic';
	font-weight: bold;
	color: #a1a1a1;
}

.stubby_l_black {
	font-size: 15pt;
	font-family: 'NanumGothic';
	font-weight: bold;
	color: #3b3b37;
}

.stubby_l_red {
	font-size: 15pt;
	font-family: 'NanumGothic';
	font-weight: bold;
	color: #ee5a3e;
}

.stubby_l_white {
	font-size: 15pt;
	font-family: 'NanumGothic';
	font-weight: bold;
	color: #ffffff;
}

.stubby_l_grey {
	font-size: 15pt;
	font-family: 'NanumGothic';
	font-weight: bold;
	color: #a1a1a1;
}

.stubby_h_black {
	font-size: 18pt;
	font-family: 'NanumGothic';
	font-weight: bold;
	color: #3b3b37;
}

.stubby_h_red {
	font-size: 18pt;
	font-family: 'NanumGothic';
	font-weight: bold;
	color: #ee5a3e;
}

.stubby_h_white {
	font-size: 18pt;
	font-family: 'NanumGothic';
	font-weight: bold;
	color: #ffffff;
}

.shadow {
	border-radius: 1px 1px 1px 1px;
	-moz-border-radius: 1px 1px 1px 1px;
	-webkit-border-radius: 1px 1px 1px 1px;
	box-shadow: 2px 2px 2px #FFFFCC inset;
	-moz-box-shadow: 2px 2px 2px #FFFFCC inset;
	-webkit-box-shadow: 2px 2px 2px #FFFFCC inset;
}

#highlight_container img {
	margin-left: 5px;
	box-shadow: 0px 1px 5px 1px rgba(0, 0, 0, 0.3);
}

#myhighlight_container img {
	margin-left: 5px;
	box-shadow: 0px 1px 5px 1px rgba(0, 0, 0, 0.3);
}

ul {
	padding: 0;
	list-style-type: none;
}

a, td, div, span, b, i, p {
	font-family: 'NanumGothic';
}

.tabblock {
	float: left;
	width: 150px;
	height: 43px;
	background: #c0c0c0;
	color: #ffffff;
	text-align: center;
	padding-top: 6px;
	margin-right: 2px;
}

.tabblock a {
	color: #fff
}

.tabblock_selected {
	float: left;
	width: 150px;
	height: 45px;
	background: #ee5a3e;
	color: #ffffff;
	text-align: center;
	padding-top: 6px;
	margin-right: 2px;
}

.tabblock_bottom {
	font-size: 8pt;
}

.tabblock_selected a {
	color: #fff
}

.highlightblock_selected {
	margin-bottom: 2px;
	padding-top: 2px;
	padding-bottom: 2px;
	padding-left: 3px;
	padding-right: 3px;
	background: #ee5a3e;
	margin-right: 3px;
	font-size: 10pt;
	color: #fff;
}

.highlightblock_selected a {
	color: #fff
}

.highlightblock {
	margin-bottom: 2px;
	padding-top: 2px;
	padding-bottom: 2px;
	padding-left: 3px;
	padding-right: 3px;
	background: #c0c0c0;
	margin-right: 3px;
	font-size: 10pt;
	color: #fff;
}

.highlightblock a {
	color: #fff
}

.highlightblock_selected {
	margin-bottom: 2px;
	padding-top: 2px;
	padding-bottom: 2px;
	padding-left: 3px;
	padding-right: 3px;
	background: #ee5a3e;
	margin-right: 3px;
	font-size: 10pt;
	color: #fff;
}

.highlightblock_selected a {
	color: #fff
}

.highlightblock {
	margin-bottom: 1px;
	padding-top: 2px;
	padding-bottom: 2px;
	padding-left: 3px;
	padding-right: 3px;
	background: #c0c0c0;
	margin-right: 3px;
	font-size: 10pt;
	color: #fff;
}

.highlightblock a {
	color: #fff
}

body.modal-open {
	overflow: hidden;
}

.circle_night_selector_selected {
	display: inline-block;
	cursor: pointer;
	background: #3ad195;
	height: 96px;
	float: left;
	width: 96px;
	margin-left: 5px;
	margin-right: 5px;
	margin-top: 5px;
	margin-bottom: 5px;
	border: 5px solid #3ad195;
	color: #fff;
	border-radius: 70px;
	padding-top: 10px;
}

.circle_night_selector {
	display: inline-block;
	cursor: pointer;
	height: 96px;
	float: left;
	width: 96px;
	margin-left: 5px;
	margin-right: 5px;
	margin-top: 5px;
	margin-bottom: 5px;
	border: 5px solid #3ad195;
	color: #fff;
	border-radius: 70px;
	padding-top: 10px;
}

.schd_panel {
	float: left;
	width: 33%;
}

.schd_desc {
	padding-top: 0px;
	height: 160px;
}

.schd_panel_inside {
	background: #efefef;
	margin-left: 3px;
	margin-right: 3px;
	padding-top: 7px;
	padding-bottom: 7px;
}

.schd_title {
	padding-top: 7px;
	font-size: 12pt;
	font-weight: bold;
	font-color: #5b5b5b;
}

.schd_subtitle {
	padding-left: 10px;
	padding-right: 10px;
	height: 20px;
	padding-top: 3px;
	padding-bottom: 2px;
	font-size: 9pt;
	font-color: #5b5b5b;
}

.day_small {
	margin-left: 0px;
	margin-right: 70%;
	padding-top: 1px;
	padding-bottom: 1px;
	margin-bottom: 3px;
	border-bottom: 1px solid #696969;
	text-align: left;
	font-size: 9pt;
	font-family: tahoma;
	color: #696969;
	margin-top: 10px;
}

.p_schd {
	line-height: 110%;
	margin-top: 0px;
	margin-bottom: 20px;
	padding-top: 7px;
	padding-bottom: 0px;
}

html {
	-ms-overflow-style: none;
	overflow: none;
}
</style>


<script>
	var routelist = [];
	var slpRatesArr = [];

	Schd = function(id, dayofcity, stime, duration) {
		this.id = id;
		this.dayofcity = dayofcity;
		this.stime = stime;
		this.duration = duration;
	}
	Route = function(cityserial, cityname, nights, trstype, is_night_move, lat, lng, date_in, date_out) {
		this.cityserial = cityserial;
		this.name = cityname;
		this.nights = nights;
		this.trstype = trstype;
		this.is_night_move = is_night_move;
		this.lat = lat;
		this.lng = lng;
		this.date_in = date_in;
		this.date_out = date_out;
		this.schdlist = [];

	}
	function openInfoWindow(lat, lng, se, title, thumb, sdesc, airpricecity) {
		if (prv_infowindow)
			prv_infowindow.close();

		infowindow = new google.maps.InfoWindow();
		thtml = '<div><div style="width:180px;float:left;height:130px;position:relative;overflow:hidden;"><div><img src="'+thumb+'" width="180px"></div><div style="position:relative;top:-18px;background:#333;color:#fff;text-align:center"><font style="color:#fff"></font></div></div>';
		thtml = thtml + '<div style="width:300px;height:130px;padding-left:5px;float:left;overflow-y:auto;"><h5>' + title + '</h5>';
		thtml = thtml + '<p>' + sdesc + '</p></div></div><div class="clearfix"></div>';

		thedate = $("#thedate").val();

		if (airpricecity != "" && airpricecity != "null")
			thtml = thtml + '<iframe scrolling="no" width="330px" height="110px"  frameborder="0" src="planner_step1_infowindow2.asp?lang=ko&s=' + se
					+ '&d=' + thedate + '"></iframe>';
		else
			thtml = thtml + '<iframe scrolling="no" width="330px" height="110px"  frameborder="0" src="planner_step1_infowindow2.asp?lang=ko&s=' + se
					+ '"></iframe>';

		infowindow.setContent(thtml);
		infowindow.setPosition(new google.maps.LatLng(lat, lng));
		infowindow.open(map);
		getCityPhotos(se);
		prv_infowindow = infowindow;

	}
	function openInfoWindow2(lat, lng, se) {
		if (prv_infowindow)
			prv_infowindow.close();

		var myLatlng = new google.maps.LatLng(lat, lng);
		infowindow = new google.maps.InfoWindow();
		thedate = $("#thedate").val();
		if (routelist.length == 0)
			thtml = '<iframe scrolling="no" width="330px" height="110px"  frameborder="0" src="planner_step1_infowindow2.asp?lang=ko&s=' + se + '&d='
					+ thedate + '"></iframe>';
		else
			thtml = '<iframe scrolling="no" width="330px" height="110px"  frameborder="0" src="planner_step1_infowindow2.asp?lang=ko&s=' + se + '&d='
					+ thedate + '"></iframe>';

		infowindow.setContent(thtml);
		infowindow.setPosition(myLatlng);
		infowindow.open(map);
		prv_infowindow = infowindow;

		//getCityPhotos(se);
		getHighlights(se);

		google.maps.event.addListener(infowindow, 'closeclick', function() {
			if (se.substring(0, 2) == "11" || se.substring(0, 2) == "12" || se.substring(0, 2) == "13" || se.substring(0, 2) == "14")
				getHighlights('1[1-4]');
			else if (se.substring(0, 5) == "16102")
				getHighlights(se.substring(0, 5));
			else
				getHighlights(se.substring(0, 2));
		});
	}
	function update_arr_nextday() {
		saveCookie();
		updateTerm();
		updateDateInOut();

	}
	function updateTerm() {

		var arr_nextday = 0;
		if ($("#arr_nextday").is(":checked"))
			arr_nextday = 1;

		term = 1 + arr_nextday;

		for (i = 0; i < routelist.length; i++) {
			if (routelist[i].is_night_move.toString() == "X")
				routelist[i].is_night_move = "0";
			term = term + eval(routelist[i].nights) + eval(routelist[i].is_night_move);
		}
		$("#plan_term").html(term);

		$("#menu_label_route").html(eval(term - 1) + "박" + term + "일");

	}

	var trip_id = "10244967";
	var tripwith = "";
	function saveCookie(is_sync) {

		is_async = true;
		if (is_sync)
			is_async = false;

		tg = getTripgene();
		sd = $("#thedate").val();

		var arr_nextday = 0;
		if ($("#arr_nextday").is(":checked"))
			arr_nextday = 1;

		plan_term = $("#plan_term").html();
		$.ajax({
			url : "/api/planning/saveCookieX.asp",
			type : "POST",
			async : is_async,
			data : {
				tripgene : tg,
				startdate : sd,
				tid : trip_id,
				tripwith : tripwith,
				term : plan_term,
				arr_nextday : arr_nextday,
				r_trip_id : ''
			},
			success : function(data) {
				trip_id = data;
			}
		});

	}
	function reorderSchd(idx, changed_j) {
		newi = 0;
		for (i = 0; i < routelist[idx].schdlist.length; i++) {
			if (routelist[idx].schdlist[changed_j].dayofcity * 1 <= routelist[idx].schdlist[i].dayofcity * 1) {
				if (routelist[idx].schdlist[changed_j].stime * 1 <= routelist[idx].schdlist[i].stime * 1) {
					newi = i;
					break;
				}
			}
		}
		if (newi > changed_j) {
			tmp = routelist[idx].schdlist[changed_j];
			for (i = changed_j; i < newi; i++) {
				routelist[idx].schdlist[i] = routelist[idx].schdlist[i + 1];

			}
			routelist[idx].schdlist[newi] = tmp;
		} else {
			tmp = routelist[idx].schdlist[changed_j];
			for (i = changed_j; i > newi; i--) {
				routelist[idx].schdlist[i] = routelist[idx].schdlist[i - 1];
			}
			routelist[idx].schdlist[newi] = tmp;
		}
	}
	function getTripgene() {
		var rtstring = "";
		for (i = 0; i < routelist.length; i++) {
			cityserial = routelist[i].cityserial;
			if (rtstring == "")
				rtstring = cityserial;
			else
				rtstring = rtstring + "," + cityserial;

			if (routelist[i].nights != "")
				rtstring = rtstring + ":" + routelist[i].nights;
			else
				rtstring = rtstring + ":X";

			if (routelist[i].trstype != "")
				rtstring = rtstring + ":" + routelist[i].trstype;
			else
				rtstring = rtstring + ":X";

			if (routelist[i].is_night_move != "")
				rtstring = rtstring + ":" + routelist[i].is_night_move;

			for (j = 0; j < routelist[i].schdlist.length; j++) {
				rtstring = rtstring + "|" + routelist[i].schdlist[j].id;
				tdayofcity = routelist[i].schdlist[j].dayofcity;
				stime = routelist[i].schdlist[j].stime;
				duration = routelist[i].schdlist[j].duration;

				if (tdayofcity != "")
					rtstring = rtstring + ":" + tdayofcity;
				else
					rtstring = rtstring + ":X";

				if (stime != "")
					rtstring = rtstring + ":" + stime;
				else
					rtstring = rtstring + ":X";

				if (duration != "")
					rtstring = rtstring + ":" + duration;
				else
					rtstring = rtstring + ":X";
			}
		}
		return rtstring;
	}
	//alert(getTripgene());

	function moveToCalendar() {
		startdate = $("#thedate").val();
		window.location = "/plan/planner_city_schd.asp?startdate=" + startdate + "&tripgene=" + getTripgene();
	}
</script>
<script type="text/javascript">
	var stockholm = new google.maps.LatLng(45, 10);

	var marker;
	var map;
	var allMarkers = [];
	var myMarkers = [];
	var recommMarkers = [];
	var prv_infowindow;

	routelist[routelist.length] = new Route('181071004', '두바이', '1', 'X', '0', '25.271139', '55.30748499999998', new Date('2019-05-22'), new Date(
			'2019-05-23'));
	slpRatesArr[routelist[routelist.length - 1].cityserial] = '31|57|11|5|3';
	routelist[routelist.length] = new Route('181071001', '아부다비', '1', 'X', '0', '24.47643100000001', '54.37050999999998', new Date('2019-05-23'),
			new Date('2019-05-24'));
	slpRatesArr[routelist[routelist.length - 1].cityserial] = '0|42|12|8|0';
	routelist[routelist.length] = new Route('181041001', '도하', '1', 'X', '0', '25.28189200000002', '51.51754100000001', new Date('2019-05-24'),
			new Date('2019-05-25'));
	slpRatesArr[routelist[routelist.length - 1].cityserial] = '100|0|0|0|0';
	routelist[routelist.length] = new Route('181061001', '담만', '3', 'X', '0', '26.40092799999998', '50.14647099999998', new Date('2019-05-25'),
			new Date('2019-05-28'));
	slpRatesArr[routelist[routelist.length - 1].cityserial] = '5|16|68|11|5';
	routelist[routelist.length] = new Route('181121001', '쿠웨이트', '1', 'X', '0', '29.32940399999999', '48.00392999999999', new Date('2019-05-28'),
			new Date('2019-05-29'));
	slpRatesArr[routelist[routelist.length - 1].cityserial] = '0|100|0|0|100';

	function resized() {
		newMapHeight = eval($(window).height() - 3);
		newWidth = eval($(window).width());
		newRouteHeight = eval($(window).height() - 200);
		newHighlightHeight = eval($(window).height() - 100);

		$("#map_container").css("height", newMapHeight);
		$("#map_canvas").css("height", newMapHeight - 50);

		$("#btn_map_toggle").css("top", (newMapHeight + 2) * -1);

		var is_chrome = window.chrome;
		var bias = 137;
		if (!is_chrome)
			var bias = 138;

		$("#city_list").css("top", (newMapHeight + bias) * -1);
		$("#city_list").css("height", newMapHeight);
		//	$("#if_citylist").css("height",newMapHeight);

		$("#mapControllerLeft").css("height", newMapHeight);
		//	$("#map_container").css("width",newWidth-300);
		//	$("#topControllerRight").css("width",newWidth-300);

		//	$("#mapControllerLeft").css("width",300);

		$("#cityroute").css("height", newMapHeight - 95);

	}
	var isfirst = true;
	function initialize() {

		resized();
		var mapOptions = {
			zoom : 4,
			mapTypeId : google.maps.MapTypeId.ROADMAP,
			center : stockholm,
			streetViewControl : false,
			mapTypeControl : true,
			mapTypeControlOptions : {
				position : google.maps.ControlPosition.RIGHT_TOP
			},
			panControl : true,
			panControlOptions : {
				position : google.maps.ControlPosition.RIGHT_TOP
			},
			zoomControl : true,
			zoomControlOptions : {
				style : google.maps.ZoomControlStyle.SMALL,
				position : google.maps.ControlPosition.RIGHT_TOP
			},
			scaleControl : true
		};

		map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);

		google.maps.event.addListener(map, 'tilesloaded', function() {

			//	google.maps.event.addListener(map, 'idle', function() {

			SWlongitude = map.getBounds().getSouthWest().lng();
			SWlatitude = map.getBounds().getSouthWest().lat();
			NElongitude = map.getBounds().getNorthEast().lng();
			NElatitude = map.getBounds().getNorthEast().lat();
			zoomLevel = map.getZoom();

			$.ajax({
				url : "ajax/GetSMarkers.asp",
				data : {
					lang : "ko",
					SMKey : SWlongitude + "|" + zoomLevel,
					SiteType : "city",
					SWlongitude : SWlongitude,
					SWlatitude : SWlatitude,
					NElongitude : NElongitude,
					NElatitude : NElatitude,
					zoomLevel : zoomLevel
				},
				success : function(data) {
					var strv = data;
					if (strv != null) {
						clearMarkers();

						var RcvData = decodeURIComponent(strv).replace(/\+/g, ' ');
						var MarkerA = RcvData.split("@");

						for (i = 0; i < MarkerA.length - 1; i++) //0:serial,1:markerName,2:longitude,3:latitude,4:taxSerial,5:SiteLevel,6:sitetax,7:sitename_eng
						{
							var R = MarkerA[i + 1].split("#");

							var imgurl = "//www.stubbyplanner.com/img_v8/selectcityICON_red.png";
							//						var imgurl = "//www.stubbyplanner.com/images/is/flag/"+R[0].substring(0,5)+"_s.gif";

							var title = R[1];
							var zIdx = 10 / (eval(R[5]) + 1);

							var posn = new google.maps.LatLng(R[3], R[2]);
							var marker = createMarker(posn, R[0], title, imgurl, zIdx);
							marker.setMap(map);
							allMarkers.push(marker);

						}

					}
				}
			});
		});
		//document.getElementById("if_citylist").src="planner_step1_citylist.asp?lang=ko&srcserial=11";
		for (iii = 0; iii < routelist.length; iii++) {
			if (iii == routelist.length - 1)
				addCityBase(routelist[iii].name, routelist[iii].cityserial, routelist[iii].lat, routelist[iii].lng, routelist[iii].nights,
						routelist[iii].is_night_move, slpRatesArr[routelist[iii].cityserial]);
			else
				tAddCityBase(routelist[iii].name, routelist[iii].cityserial, routelist[iii].lat, routelist[iii].lng, routelist[iii].nights,
						routelist[iii].is_night_move, slpRatesArr[routelist[iii].cityserial]);

			$("#span_schd_cnt_" + iii).html("버킷 " + routelist[iii].schdlist.length);

			//		for(j=0;j<routelist[iii].schdlist.length;j++)
			//		{
			//			imgurl=routelist[iii].schdlist[j].imgurl;
			//			if(imgurl=="")
			//				imgurl='/img_v9/citymap.png';
			//
			//			addSpotBase(routelist[iii].cityserial,routelist[iii].name,routelist[iii].schdlist[j].name ,routelist[iii].schdlist[j].spotserial,routelist[iii].schdlist[j].lat,routelist[iii].schdlist[j].lng,imgurl);
			//		}
		}

		//	var styles=[{"stylers":[{"hue":"#00ffe6"},{"saturation":-20}]},{"featureType":"water","elementType":"geometry.fill","stylers":[{"lightness":-10},{"saturation":-50}]},{"featureType":"landscape.natural","elementType":"geometry.fill","stylers":[{"lightness":70}]},{"featureType":"poi","elementType":"geometry.fill","stylers":[{"lightness":60}]},{"featureType":"poi.business","stylers":[{"visibility":"off"}]},{"featureType":"poi.school","stylers":[{"visibility":"off"}]},{"featureType":"poi.place_of_worship","stylers":[{"visibility":"off"}]},{"featureType":"poi.park","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"geometry","stylers":[{"visibility":"simplified"},{"lightness":100}]},{"featureType":"transit","stylers":[{"visibility":"off"}]}];
		//	var styles=[{"featureType":"landscape","elementType":"all","stylers":[{"hue":"#FFBB00"},{"saturation":43.4},{"lightness":37.6},{"gamma":1}]},{"featureType":"poi","elementType":"all","stylers":[{"hue":"#00FF6A"},{"saturation":-1.0989012},{"lightness":11.2},{"gamma":1}]},{"featureType":"road.highway","elementType":"all","stylers":[{"hue":"#FFC200"},{"saturation":-61.8},{"lightness":45.6},{"gamma":1}]},{"featureType":"road.arterial","elementType":"all","stylers":[{"hue":"#FF0300"},{"saturation":-100},{"lightness":51.2},{"gamma":1}]},{"featureType":"road.local","elementType":"all","stylers":[{"hue":"#FF0300"},{"saturation":-100},{"lightness":52},{"gamma":1}]},{"featureType":"water","elementType":"all","stylers":[{"hue":"#00b8ff"},{"saturation":-13.2},{"lightness":2.4},{"gamma":1}]}];

		//var styles=[{"featureType": "administrative","elementType": "labels.text.fill","stylers": [{"color": "#6195a0"}]},{"featureType": "administrative.province","elementType": "geometry.stroke","stylers": [{"visibility": "off"}]},{"featureType": "landscape","elementType": "geometry","stylers": [{"lightness": "0"},{"saturation": "0"},{"color": "#f5f5f2"},{"gamma": "1"}]},{"featureType": "landscape.man_made","elementType": "all","stylers": [{"lightness": "-3"},{"gamma": "1.00"}]},{"featureType": "landscape.natural.terrain","elementType": "all","stylers": [{"visibility": "off"}]},{"featureType": "poi","elementType": "all","stylers": [{"visibility": "off"}]},{"featureType": "poi.park","elementType": "geometry.fill","stylers": [{"color": "#bae5ce"},{"visibility": "on"}]},{"featureType": "road","elementType": "all","stylers": [{"saturation": -100},{"lightness": 45},{"visibility": "simplified"}]},{"featureType": "road.highway","elementType": "all","stylers": [{"visibility": "simplified"}]},{"featureType": "road.highway","elementType": "geometry.fill","stylers": [{"color": "#fac9a9"},{"visibility": "simplified"}]},{"featureType": "road.highway","elementType": "labels.text","stylers": [{"color": "#4e4e4e"}]},{"featureType": "road.arterial","elementType": "labels.text.fill","stylers": [{"color": "#787878"}]},{"featureType": "road.arterial","elementType": "labels.icon","stylers": [{"visibility": "off"}]},{"featureType": "transit","elementType": "all","stylers": [{"visibility": "simplified"}]},{"featureType": "transit.station.airport","elementType": "labels.icon","stylers": [{"hue": "#0a00ff"},{"saturation": "-77"},{"gamma": "0.57"},{"lightness": "0"}]},{"featureType": "transit.station.rail","elementType": "labels.text.fill","stylers": [{"color": "#43321e"}]},{"featureType": "transit.station.rail","elementType": "labels.icon","stylers": [{"hue": "#ff6c00"},{"lightness": "4"},{"gamma": "0.75"},{"saturation": "-68"}]},{"featureType": "water","elementType": "all","stylers": [{"color": "#eaf6f8"},{"visibility": "on"}]},{"featureType": "water","elementType": "geometry.fill","stylers": [{"color": "#c7eced"}]},{"featureType": "water","elementType": "labels.text.fill","stylers": [{"lightness": "-49"},{"saturation": "-53"},{"gamma": "0.79"}]}];

		//var styles=[{"featureType": "administrative","elementType": "geometry.stroke","stylers": [{"color": "#b8b8b8"},{"visibility": "on"},{"weight": 1}]},{"featureType": "administrative","elementType": "labels.text.fill","stylers": [{"color": "#6195a0"}]},{"featureType": "administrative.province","elementType": "geometry.stroke","stylers": [{"visibility": "off"}]},{"featureType": "landscape","elementType": "geometry","stylers": [{"color": "#ffffff"}]},{"featureType": "landscape.man_made","stylers": [{"lightness": -5}]},{"featureType": "landscape.natural.terrain","stylers": [{"visibility": "off"}]},{"featureType": "poi","stylers": [{"visibility": "off"}]},{"featureType": "poi.park","elementType": "geometry.fill","stylers": [{"color": "#bae5ce"},{"visibility": "on"}]},{"featureType": "road","stylers": [{"saturation": -100},{"lightness": 45},{"visibility": "simplified"}]},{"featureType": "road.arterial","stylers": [{"visibility": "off"}]},{"featureType": "road.highway","stylers": [{"visibility": "off"}]},{"featureType": "transit","stylers": [{"visibility": "simplified"}]},{"featureType": "water","stylers": [{"color": "#c2f1f5"},{"saturation": 35},{"lightness": 40},{"gamma": 0.42},{"visibility": "on"}]},{"featureType": "water","elementType": "labels.text.fill","stylers": [{"color": "#adadad"},{"visibility": "on"}]}];
		var styles = [ {
			"elementType" : "geometry",
			"stylers" : [ {
				"color" : "#ffffff"
			} ]
		}, {
			"elementType" : "labels.icon",
			"stylers" : [ {
				"color" : "#e5e5e5"
			}, {
				"visibility" : "off"
			} ]
		}, {
			"elementType" : "labels.text.fill",
			"stylers" : [ {
				"color" : "#c3c3c3"
			} ]
		}, {
			"featureType" : "administrative",
			"elementType" : "geometry",
			"stylers" : [ {
				"visibility" : "off"
			} ]
		}, {
			"featureType" : "administrative.land_parcel",
			"stylers" : [ {
				"visibility" : "off"
			} ]
		}, {
			"featureType" : "administrative.locality",
			"stylers" : [ {
				"visibility" : "simplified"
			} ]
		}, {
			"featureType" : "administrative.neighborhood",
			"stylers" : [ {
				"visibility" : "off"
			} ]
		}, {
			"featureType" : "poi",
			"stylers" : [ {
				"visibility" : "off"
			} ]
		}, {
			"featureType" : "road",
			"stylers" : [ {
				"visibility" : "off"
			} ]
		}, {
			"featureType" : "transit",
			"stylers" : [ {
				"visibility" : "off"
			} ]
		}, {
			"featureType" : "water",
			"elementType" : "geometry",
			"stylers" : [ {
				"color" : "#c8f3f9"
			} ]
		}, {
			"featureType" : "water",
			"elementType" : "labels.text",
			"stylers" : [ {
				"visibility" : "off"
			} ]
		} ];
		map.setOptions({
			styles : styles
		});

		//	var mapControllerLeft=document.getElementById("mapControllerLeft");
		//	map.controls[google.maps.ControlPosition.TOP_LEFT].push(mapControllerLeft);

		var mapControllerCenterTop = document.getElementById("mapControllerCenterTop");
		map.controls[google.maps.ControlPosition.TOP_LEFT].push(mapControllerCenterTop);

		var mapControllerRightTop = document.getElementById("mapControllerRightTop");
		map.controls[google.maps.ControlPosition.TOP_RIGHT].push(mapControllerRightTop);

		//	var mapControllerBottom=document.getElementById("mapbottom_container");
		//	map.controls[google.maps.ControlPosition.BOTTOM_LEFT].push(mapControllerBottom);

		//	drawDayList();
		updateDateInOut();

		updateTerm();
	}

	function delSchd(r_id, schd_id) {
		for (i = 0; i < routelist[r_id].schdlist.length; i++) {
			if (routelist[r_id].schdlist[i].id == schd_id) {

				routelist[r_id].schdlist.splice(i, 1);

			}
		}
		$("#span_schd_cnt_" + r_id).html("버킷 " + routelist[r_id].schdlist.length);

		schd_cnt = $("#span_schd_cnt").html();
		schd_cnt--;
		$("#span_schd_cnt").html(schd_cnt);

		//alert("일정이 삭제되었습니다.");
		saveCookie();

	}
	function addSchd(r_id, schd_id) {

		routelist[r_id].schdlist[routelist[r_id].schdlist.length] = new Schd(schd_id, 'X', 'X', 'X');
		$("#span_schd_cnt_" + r_id).html("버킷 " + routelist[r_id].schdlist.length);

		schd_cnt = $("#span_schd_cnt").html();
		schd_cnt++;
		$("#span_schd_cnt").html(schd_cnt);
		saveCookie();

	}
	function clearMarkers() {
		for (i = 0; i < allMarkers.length; i++)
			allMarkers[i].setMap(null);
		allMarkers = [];

	}
	function clearMyMarkers() {
		for (i = 0; i < myMarkers.length; i++)
			myMarkers[i].setMap(null);
		myMarkers = [];
	}

	function createMarkerWithoutSize(posn, se, title, imgurl, sitelevel) {

		var image = {
			url : "//www.stubbyplanner.com/img_v13/marker/mycity_recomm.png",
			size : new google.maps.Size(57, 57),
			origin : new google.maps.Point(0, 0),
			anchor : new google.maps.Point(12, 25),
			scaledSize : new google.maps.Size(25, 25)
		};

		var markerOptions = {
			position : posn,
			title : "그 다음에 많이 가는 도시: " + title,
			icon : image,
			anchorPoint : new google.maps.Point(0, -17),
			zIndex : sitelevel
		};

		var marker = new google.maps.Marker(markerOptions);
		google.maps.event.addListener(marker, 'dblclick', function() {
			//	//	addCity(title,se,posn.lat(),posn.lng());
		});

		google.maps.event.addListener(marker, 'click', function() {
			if (prv_infowindow)
				prv_infowindow.close();

			infowindow = new google.maps.InfoWindow();
			thtml = '<iframe width="350px"  scrolling="no" height="130px" frameborder="0" src="planner_step1_infowindow2.asp?recomm=1&lastcity='
					+ lastcity.serial + '&lang=ko&s=' + se + '"></iframe>';
			infowindow.setContent(thtml);
			infowindow.open(map, marker);

			prv_infowindow = infowindow;
			//		getCityPhotos(se);
			google.maps.event.addListener(infowindow, 'closeclick', function() {
				if (se.substring(0, 2) == "11" || se.substring(0, 2) == "12" || se.substring(0, 2) == "13" || se.substring(0, 2) == "14")
					getHighlights('1[1-4]');
				else if (se.substring(0, 5) == "16102")
					getHighlights(se.substring(0, 5));
				else
					getHighlights(se.substring(0, 2));
			});

			getHighlights(se);

		});
		return marker;
	}

	function createMarker(posn, se, title, imgurl, sitelevel) {
		var image = {
			url : imgurl
		};

		var shape = {
			coord : [ 1, 1, 1, 20, 18, 20, 18, 1 ],
			type : 'poly'
		};

		var markerOptions = {
			position : posn,
			title : title,

			icon : image,

			zIndex : sitelevel
		};

		var marker = new google.maps.Marker(markerOptions);
		google.maps.event.addListener(marker, 'dblclick', function() {
			//	addCity(title,se,posn.lat(),posn.lng());
		});

		google.maps.event.addListener(marker, 'click', function() {
			if (prv_infowindow)
				prv_infowindow.close();

			var myLatlng = new google.maps.LatLng(posn.lat(), posn.lng());
			infowindow = new google.maps.InfoWindow();
			thedate = $("#thedate").val();
			if (routelist.length == 0)
				thtml = '<iframe scrolling="no" width="330px" height="110px"  frameborder="0" src="planner_step1_infowindow2.asp?lang=ko&s=' + se
						+ '&d=' + thedate + '"></iframe>';
			else
				thtml = '<iframe scrolling="no" width="330px" height="110px"  frameborder="0" src="planner_step1_infowindow2.asp?lang=ko&s=' + se
						+ '&d=' + thedate + '"></iframe>';

			infowindow.setContent(thtml);
			infowindow.setPosition(myLatlng);
			infowindow.open(map);
			//		infowindow.open(map,marker);
			prv_infowindow = infowindow;

			//getCityPhotos(se);
			getHighlights(se);

			google.maps.event.addListener(infowindow, 'closeclick', function() {
				if (se.substring(0, 2) == "11" || se.substring(0, 2) == "12" || se.substring(0, 2) == "13" || se.substring(0, 2) == "14")
					getHighlights('1[1-4]');
				else if (se.substring(0, 5) == "16102")
					getHighlights(se.substring(0, 5));
				else
					getHighlights(se.substring(0, 2));
			});

		});
		return marker;
	}
	function getCityPhotos(se) {

		$("#highlight_container").hide();
		$("#highlight_container").html('');

		$
				.ajax({
					url : "/api/planning/getRoutePhotos.asp",
					dataType : 'json',
					data : {
						lang : "ko",
						cities : se
					},
					success : function(data) {
						if (data != "") {
							thtml = '';

							$
									.each(
											data.photos,
											function(i, item) {
												var thumb = item.photo.replace(".jpg", "_m.jpg").replace(".JPG", "_m.JPG").replace(".gif", "_m.gif")
														.replace(".GIF", "_m.GIF").replace(".JPEG", "_m.JPEG").replace(".jpeg", "_m.jpeg");
												thtml = thtml
														+ '<a href="'+item.photo+'" title="'+item.title+'" data-gallery><img width="100px"  height="75px" src="'+thumb+'" alt="'+item.title+'"></a>';
											});

							$("#myhighlight_container").hide();

							$("#highlight_container").css("height", "75px");
							$("#highlight_container").html(thtml);
							$("#highlight_container").show('slow');
						} else {

						}

					}
				});
	}

	function getHighlights(cityserials, optType) {

		return;

		if (!optType)
			optType = "";
		if (!cityserials) {
			cityserials = "";
		}
		if (cityserials == "") {
			txt_citylist = "";
			for (i = 0; i < citylist.length; i++) {
				txt_citylist = txt_citylist + "," + citylist[i];
			}
			if (txt_citylist != "")
				txt_citylist = txt_citylist.substring(1);

			cityserials = txt_citylist;
			cityserials = cityserials.substring(cityserials.length - 9);
		}

		lastHighlight = cityserials;
		var cityserial = cityserials;
		thedate = $("#thedate").val();

		if (cityserials == "1[1-4]")
			cityserials = "";
		else
			cityserials = cityserials.substring(0, 5);

		$
				.ajax({
					url : "/api/planning/planner_get_best_city.asp",
					dataType : 'json',
					data : {
						thedate : thedate,
						lang : "ko",
						region_id : cityserials
					},
					success : function(data) {
						if (data != "") {
							thtml = '';
							if (data.data.items.length == 0) {
								$("#cityhighlight_title").html('');
							} else {
								$
										.each(
												data.data.items,
												function(i, item) {

													thtml = thtml
															+ '<div class="photoonmap" style="width:81px;margin-right:8px;margin-bottom:25px;float:left">';
													thtml = thtml + '<div style="position:relative;height:120px;overflow:hidden;">';
													thtml = thtml
															+ '<a href="javascript:openInfoWindow2(\''
															+ item.t
															+ '\',\''
															+ item.g
															+ '\',\''
															+ item.id
															+ '\');"><img style="border-radius:5px;box-shadow: gray 1px 1px 1px 0px;" src="'+item.imgurl+'" height="120px"></a>';
													thtml = thtml
															+ '<div style="background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 1)); border-radius: 5px; width: 100%; height: 17px; right: 0px; bottom: 0px; position: absolute;">&nbsp;</div>';
													thtml = thtml
															+ '<div style="right: 4px; bottom: 2px; position: absolute;"><font style="color: rgb(255, 255, 255); font-size: 8pt;"><i class="fa fa-star" aria-hidden="true"></i> '
															+ item.star + '</font></div>';
													thtml = thtml + '</div>';
													thtml = thtml
															+ '<div style="padding-top:3px;text-align:center"><a href="javascript:openInfoWindow2(\''
															+ item.t + '\',\'' + item.g + '\',\'' + item.id + '\');"><font class="photochar">'
															+ item.title + '</font></a></div>';
													thtml = thtml + '</div>';

												});

								thtml = thtml + '<div style="clear:both"></div>';
								$("#cityhighlight_title").html(data.data.title);
							}

							$("#cityhighlight_container").show();
							$("#cityhighlight_container").css("height", "136px");

							$("#cityhighlight_container").html(thtml);

							$("#myhighlight_container").hide();

						} else {

						}

					}
				});
	}

	function XXXXgetHighlights(cityserials, optType) {

		if (!optType)
			optType = "";
		if (!cityserials) {
			cityserials = "";
		}
		if (cityserials == "") {
			txt_citylist = "";
			for (i = 0; i < citylist.length; i++) {
				txt_citylist = txt_citylist + "," + citylist[i];
			}
			if (txt_citylist != "")
				txt_citylist = txt_citylist.substring(1);

			cityserials = txt_citylist;
			cityserials = cityserials.substring(cityserials.length - 9);
		}

		lastHighlight = cityserials;

		var noCityhighlight = false;
		//if(cityserials=='111011004'||cityserials=='111021002'||cityserials=='111031001'||cityserials=='111041001'||cityserials=='111041003'||cityserials=='111041004'||cityserials=='111041006'||cityserials=='111041009'||cityserials=='111041036'||cityserials=='111061003'||cityserials=='111061006'||cityserials=='111061008'||cityserials=='111061071'||cityserials=='111071001'||cityserials=='111071002'||cityserials=='111081001'||cityserials=='121011002'||cityserials=='121011003'||cityserials=='121021001'||cityserials=='121021003'||cityserials=='121021008'||cityserials=='121031001'||cityserials=='121041001'||cityserials=='121041003'||cityserials=='121041028'||cityserials=='121041030'||cityserials=='121041035'||cityserials=='131011001'||cityserials=='131011003'||cityserials=='131021001'||cityserials=='131041001'||cityserials=='131041002'||cityserials=='131041032'||cityserials=='131061001'||cityserials=='131061002'||cityserials=='131061009'||cityserials=='161011023'||cityserials=='161021039'||cityserials=='161021063'||cityserials=='161021080'||cityserials=='161171002'||cityserials=='161241015'||cityserials=='161251011')
		{
			var cityserial = cityserials;
			thedate = $("#thedate").val();
			$
					.ajax({
						url : "/api/planning/getCityHighlight.asp",
						dataType : 'json',
						data : {
							thedate : thedate,
							lang : "ko",
							sked_type : optType,
							cityserial : cityserials
						},
						success : function(data) {

							if (data != "") {

								thtml = '';
								if (data.buckets.length == 0 && optType == "") {
									getGuideHighlight(cityserial);
								} else {

									if (cityserial.length < 9) {

										thtml = thtml + '<div style="float:left;width:60px">';
										if (cityserials == "1[1-4]")
											thtml = thtml
													+ '<div class="highlightblock_selected"><a href="javascript:getHighlights(\'1[1-4]\');">유럽 </a></div>';
										else
											thtml = thtml
													+ '<div class="highlightblock"><a href="javascript:getHighlights(\'1[1-4]\');">유럽 </a></div>';

										if (cityserials == "16")
											thtml = thtml
													+ '<div class="highlightblock_selected"><a href="javascript:getHighlights(\'16\');"> 아시아 </a></div>';
										else
											thtml = thtml + '<div class="highlightblock"><a href="javascript:getHighlights(\'16\');"> 아시아 </a></div>';

										if (cityserials == "16102")
											thtml = thtml
													+ '<div class="highlightblock_selected"><a href="javascript:getHighlights(\'16102\');"> 일본 </a></div>';
										else
											thtml = thtml
													+ '<div class="highlightblock"><a href="javascript:getHighlights(\'16102\');"> 일본 </a></div>';

										thtml = thtml + '</div>';

										$
												.each(
														data.buckets,
														function(i, item) {

															thtml = thtml
																	+ '<div class="photoonmap" style="width:90px;overflow:hidden;height:120px;margin-right:5px;margin-bottom:25px;float:left">';
															if (cityserials == "1[1-4]" || cityserials == "16" || cityserials == "16102")
																thtml = thtml
																		+ '<div style="position:relative;height:120px;overflow:hidden"><a href="javascript:getHighlightItems(\''
																		+ item.serial
																		+ '\',\''
																		+ cityserials
																		+ '\');"><img style="top:-10px;position:relative;" src="'+item.imgurl_v+'" height="140px"></a></div>';
															else
																thtml = thtml
																		+ '<div style="position:relative;height:120px;overflow:hidden"><a href="javascript:showBucket(\''
																		+ item.serial
																		+ '\');"><img style="top:-10px;position:relative;" src="'+item.imgurl_v+'" height="140px"></a></div>';

															thtml = thtml
																	+ '<div style="position:relative;width:90px;overflow:hidden;top:-30px;height:30px;padding-left:3px;padding-top:7px;">';
															thtml = thtml + '<a href="javascript:showBucket(\'' + item.serial
																	+ '\');"><font class="photochar">' + item.title_s + '</font></a>';
															thtml = thtml + '</div>';
															thtml = thtml + '</div>';

														});
									} else {

										thtml = thtml + '<div style="float:left;width:60px">';
										if (optType == "" || optType == null)
											thtml = thtml + '<div class="highlightblock_selected"><a href="javascript:getHighlights(\'' + cityserial
													+ '\',\'\');">인기</a></div>';
										else
											thtml = thtml + '<div class="highlightblock"><a href="javascript:getHighlights(\'' + cityserial
													+ '\',\'\');">인기</a></div>';

										if (optType == "SEE")
											thtml = thtml + '<div class="highlightblock_selected"><a href="javascript:getHighlights(\'' + cityserial
													+ '\',\'SEE\');">관광</a></div>';
										else
											thtml = thtml + '<div class="highlightblock"><a href="javascript:getHighlights(\'' + cityserial
													+ '\',\'SEE\');">관광</a></div>';

										if (optType == "EAT")
											thtml = thtml + '<div class="highlightblock_selected"><a href="javascript:getHighlights(\'' + cityserial
													+ '\',\'EAT\');">맛집</a></div>';
										else
											thtml = thtml + '<div class="highlightblock"><a href="javascript:getHighlights(\'' + cityserial
													+ '\',\'EAT\');">맛집</a></div>';

										if (optType == "BUY")
											thtml = thtml + '<div class="highlightblock_selected"><a href="javascript:getHighlights(\'' + cityserial
													+ '\',\'BUY\');">쇼핑</a></div>';
										else
											thtml = thtml + '<div class="highlightblock"><a href="javascript:getHighlights(\'' + cityserial
													+ '\',\'BUY\');">쇼핑</a></div>';
										if (cityserial == "121011003" || cityserial == "111041004" || cityserial == "111041006"
												|| cityserial == "111041003") {
											if (optType == "SLP")
												thtml = thtml + '<div class="highlightblock_selected"><a href="javascript:getHighlights(\''
														+ cityserial + '\',\'SLP\');">호스텔</a></div>';
											else
												thtml = thtml + '<div class="highlightblock"><a href="javascript:getHighlights(\'' + cityserial
														+ '\',\'SLP\');">호스텔</a></div>';

										} else {
											if (optType == "TSL")
												thtml = thtml + '<div class="highlightblock_selected"><a href="javascript:getHighlights(\''
														+ cityserial + '\',\'TSL\');">숙소</a></div>';
											else
												thtml = thtml + '<div class="highlightblock"><a href="javascript:getHighlights(\'' + cityserial
														+ '\',\'TSL\');">숙소</a></div>';
										}
										thtml = thtml + '</div>';

										$
												.each(
														data.buckets,
														function(i, item) {
															thtml = thtml
																	+ '<div class="photoonmap" style="width:120px;overflow:hidden;height:120px;margin-right:5px;margin-bottom:25px;float:left">';
															thtml = thtml
																	+ '<div style="position:relative;height:120px;overflow:hidden"><a href="javascript:showBucket(\''
																	+ item.serial
																	+ '\');"><img  stye="position:relative;top:0px" src="'+item.imgurl_v+'" height="120px"></a></div>';
															thtml = thtml + '</div>';
														});

									}

									thtml = thtml + '<div style="clear:both"></div>';
								}

								$("#cityhighlight_container").show();
								$("#cityhighlight_container").css("height", "136px");
								$("#cityhighlight_container").html(thtml);

								$("#myhighlight_container").hide();

							} else {

							}

						}
					});
		}
	}

	function getHighlightItems(hserial, cityserials) {
		return;
		$
				.ajax({
					url : "/api/planning/getCityHighlightItem.asp",
					dataType : 'json',
					data : {
						hserial : hserial,
						lang : "ko"
					},
					success : function(data) {

						if (data != "") {
							thtml = '';

							if (data.items.length == 0) {

							} else {
								if (cityserials == '1[1-4]')
									thtml = thtml
											+ '<div class="highlightblock_selected"><a href="javascript:getHighlights(\'1[1-4]\');"><u>유럽</u></a> > '
											+ data.title
											+ '&nbsp;&nbsp;<a href="javascript:getHighlights(\'1[1-4]\');"><img src="/img_v8/btn_delete.png"></a></div>';
								if (cityserials == '16')
									thtml = thtml
											+ '<div class="highlightblock_selected"><a href="javascript:getHighlights(\'16\');"><u>아시아</u></a> > '
											+ data.title
											+ '&nbsp;&nbsp;<a href="javascript:getHighlights(\'16\');"><img src="/img_v8/btn_delete.png"></a></div>';
								if (cityserials == '16102')
									thtml = thtml
											+ '<div class="highlightblock_selected"><a href="javascript:getHighlights(\'16102\');"><u>일본</u></a> > '
											+ data.title
											+ '&nbsp;&nbsp;<a href="javascript:getHighlights(\'16102\');"><img src="/img_v8/btn_delete.png"></a></div>';

								thtml = thtml + '<div style="width:100%;height:100px;overflow-x:auto;overflow-y:hidden">'
								thtml = thtml + '<div style="width:'+data.items.length*125+'px">';

								$
										.each(
												data.items,
												function(i, item) {
													//	var thumb=item.imgurl_v.replace(".jpg","_m.jpg").replace(".JPG","_m.JPG").replace(".gif","_m.gif").replace(".GIF","_m.GIF").replace(".JPEG","_m.JPEG").replace(".jpeg","_m.jpeg");

													thtml = thtml
															+ '<div class="photoonmap" style="width:120px;overflow:hidden;height:90px;margin-right:5px;margin-bottom:25px;float:left">';
													thtml = thtml
															+ '<div style="position:relative;width:120px;height:90px;overflow:hidden"><a href="javascript:openInfoWindow(\''
															+ item.lat
															+ '\',\''
															+ item.lng
															+ '\',\''
															+ item.cityserial.substring(0, 9)
															+ '\',\''
															+ item.title_s.replace(/\'/g, "\\\'")
															+ '\',\''
															+ item.imgurl_v
															+ '\',\''
															+ item.sdesc.replace(/\'/g, "\\\'")
															+ '\',\''
															+ item.airpricecity
															+ '\');"><img style="top:0px;position:relative;" src="'+item.imgurl_v+'" height="90px"></a></div>';
													thtml = thtml
															+ '<div style="position:relative;width:120px;top:-30px;height:30px;overflow:hidden;padding-left:3px;padding-top:0px;">';
													thtml = thtml + '<a href="javascript:openInfoWindow(\'' + item.lat + '\',\'' + item.lng + '\',\''
															+ item.cityserial.substring(0, 9) + '\',\'' + item.title_s.replace(/\'/g, "\\\'")
															+ '\',\'' + item.imgurl_v + '\',\'' + item.sdesc.replace(/\'/g, "\\\'")
															+ '\');"><font class="photochar" style="font-size: 9pt;">' + item.title_s + '</font></a>';
													thtml = thtml + '</div>';
													thtml = thtml + '</div>';
												});
								thtml = thtml + '<div style="clear:both"></div>';
								thtml = thtml + '</div></div>';
							}

							$("#cityhighlight_container").show();
							$("#cityhighlight_container").css("height", "136px");
							$("#cityhighlight_container").html(thtml);

							$("#myhighlight_container").hide();

						} else {

						}

					}
				});
	}

	function getGuideHighlight(cityserials) {
		return;

		$("#myhighlight_container").hide();
		$("#myhighlight_container").html('');
		thedate = $("#thedate").val();
		$
				.ajax({
					url : "/api/planning/getsimilarplanners.asp",
					dataType : 'json',
					data : {
						thedate : thedate,
						lang : "ko",
						cityserials : cityserials
					},
					success : function(data) {
						if (data != "") {

							thtml = '<div style="margin-bottom:3px;">';

							thtml = thtml
									+ '<div style="float:left;margin-left:4px;background:#333333;color:#ffffff;padding-top:4px;width:150px;height:25px;text-align:center;font-family:돋움"><span class="glyphicon glyphicon-star"></span><b>'
									+ data.city
									+ ' BEST </b><span class="glyphicon glyphicon-star"></span></div><div style="float:left;width:473px;">&nbsp;</div>';
							//				if(data.cnt>0)
							{
								thedate = $("#thedate").val();
								var xx = new Date(thedate);
								thedate_month = xx.getMonth() + 1;
								thedate_day = xx.getDate();

								thtml = thtml
										+ '<div style="float:left;background:#333333;color:#ffffff;padding-top:4px;width:200px;height:25px;text-align:center;margin-left:7px;font-family:돋움"><b>'
										+ thedate_month + '월' + thedate_day + '일 @ ' + data.city + ' </b></div>';
							}

							thtml = thtml + '<div style="clear:both"></div></div>';

							//				if(data.cnt>0)
							//				{
							//					thtml=thtml+'<div style="float:left;width:230px;height:85px;overflow:hidden;position:relative;margin-left:4px;margin-bottom:10px;padding:3 3 3 3;">';
							//					$.each(data.planners, function( i, item ) {
							//						var thumb=item.imgurl;
							//						if(i<6)
							//							thtml=thtml+'<div style="width:50px;height:70px;overflow:hidden;margin-right:2px;margin-bottom:5px;float:left"><div><a href="/plan/profile.asp?from=tf&id='+item.id+'" target="_blank"><img src="'+thumb+'" width="50px" height="50px"/></a></div><div style="background:#a1a1a1;padding-top:2px;padding-bottom:2px;text-align:center"><a href="#"><font style="font-family:tahoma;color:#fff">'+item.id+'</font></a></div></div>';
							//					});
							//					thtml=thtml+'</div>';
							//				}

							thtml = thtml
									+ '<div style="float:left;width:630px;height:95px;overflow:hidden;position:relative;margin-left:0px;margin-bottom:0px;padding:0;">';
							$
									.each(
											data.places,
											function(i, item) {
												if (i < 7) {
													var thumb = item.photo.replace(".jpg", "_m.jpg").replace(".JPG", "_m.JPG").replace(".gif",
															"_m.gif").replace(".GIF", "_m.GIF").replace(".JPEG", "_m.JPEG").replace(".jpeg",
															"_m.jpeg");
													thtml = thtml
															+ '<div style="float:left;width:100px;height:85px;overflow:hidden;position:relative;margin-left:4px;border:1px solid #c0c0c0;"><a href="javascript:openGuideBook(\''
															+ item.serial
															+ '\',\''
															+ data.city
															+ '\')" title="'
															+ item.reason
															+ '(by '
															+ item.by
															+ ')"><img width="100px"  height="75px" src="'+thumb+'" alt="'+item.title+'" style="margin-left:0px;margin-right:0px;"></a><div style="position:relative;top:-20px;background:#a1a1a1;width:100px;padding-top:1px;padding-bottom:2px;color:#fff;text-align:center">'
															+ item.title + '</div></div>';
												}
											});
							thtml = thtml
									+ '<div style="float:left;width:100px;height:95px;overflow:hidden;position:relative;margin-left:4px;"><div><a href="javascript:openGuideBookExt(\''
									+ data.cityserial
									+ '\',\''
									+ data.city
									+ '\',\'map\')" title="'
									+ data.city
									+ '시내지도"><img width="100px"  height="75px" src="/img_v9/citymap.png" alt="'+data.city+'지도" style="margin-right:0px;"></a></div><div style="position:relative;top:-20px;background:#a1a1a1;width:100px;padding-top:2px;padding-bottom:2px;color:#fff;text-align:center">시내지도</div></div>';

							//					thtml=thtml+'<div style="float:left;width:100px;height:85px;overflow:hidden;position:relative;margin-left:4px;"><a href="javascript:openGuideBookExt(\''+data.cityserial+'\',\''+data.city+'\',\'site_slp\')" title="'+data.city+'숙소예약 로그"><img width="100px"  height="75px" src="/img_v9/trend_slp.png"  style="margin-right:0px;"></a></div>';
							//					thtml=thtml+'<div style="float:left;width:100px;height:85px;overflow:hidden;position:relative;margin-left:4px;"><a href="javascript:openGuideBookExt(\''+data.cityserial+'\',\''+data.city+'\',\'course\')" title="'+data.city+'투어예약 로그"><img width="100px"  height="75px" src="/img_v9/trend_tor.png" style="margin-right:0px;"></a></div>';

							thtml = thtml + '</div>';

							if (data.evtserial != '')
								thtml = thtml
										+ '<div style="float:left;width:100px;height:85px;overflow:hidden;position:relative;margin-left:4px;"><div style="padding-top:7px;height:75px;"><a href="javascript:showEvent(\''
										+ data.city
										+ '\',\''
										+ data.cityserial
										+ '\',\''
										+ thedate
										+ '\',\''
										+ data.evtserial
										+ '\');" title="'
										+ data.city
										+ '축제"><img width="100px"  height="75px" src="'+data.evtimg+'" style="margin-right:0px;"></a></div><div style="position:relative;top:-20px;background:#a1a1a1;width:100px;padding-top:2px;padding-bottom:2px;color:#fff;text-align:center;font-family:돋움">'
										+ data.evtname + '</div></div>';

							thtml = thtml
									+ '<div style="float:left;width:75px;height:85px;overflow:hidden;position:relative;margin-left:4px;border:1px solid #c0c0c0"><div style="background:#fff;padding-top:17px;width:100%;height:75px;text-align:center" id="hotdealhotel">HOT DEAL</div><div style="position:relative;top:-22px;background:#ee5a3e;width:75px;padding-top:2px;padding-bottom:2px;color:#fff;text-align:center;font-family:NanumGothic"><span class="glyphicon glyphicon-bell"></span> 특가호텔</div></div>';
							thtml = thtml
									+ '<div style="float:left;width:75px;height:85px;overflow:hidden;position:relative;margin-left:4px;border:1px solid #c0c0c0"><div style="background:#fff;padding-top:7px;width:100%;height:75px;"><a href="javascript:showWthr(\''
									+ data.city
									+ '\',\''
									+ data.cityserial
									+ '\',\''
									+ thedate
									+ '\')" title="'
									+ data.city
									+ '예상기온"><h4 style="text-align:center;color:#333">'
									+ data.temp
									+ '°C</h4></a></div><div style="position:relative;top:-22px;background:#a1a1a1;width:75px;padding-top:2px;padding-bottom:2px;color:#fff;text-align:center;font-family:돋움"><span class="glyphicon glyphicon-stats"></span> 예상기온</div></div>';
							if (data.cnt > 0)
								thtml = thtml
										+ '<div style="float:left;width:75px;height:85px;overflow:hidden;position:relative;margin-left:4px;border:1px solid #c0c0c0"><div style="background:#fff;padding-top:7px;width:100%;height:75px;"><a href="javascript:showTripFriends(\''
										+ data.city
										+ '\',\''
										+ data.cityserial
										+ '\',\''
										+ thedate
										+ '\')" title="'
										+ data.city
										+ '동행추천"><h4 style="text-align:center;color:#333">'
										+ data.cnt
										+ '명+</h4></a></div><div style="position:relative;top:-22px;background:#a1a1a1;width:75px;padding-top:2px;padding-bottom:2px;color:#fff;text-align:center;font-family:돋움"><span class="glyphicon glyphicon-user"></span> 동행추천</div></div>';

							thtml = thtml + '<div style="clear:both"></div>';

							$("#cityhighlight_container").css("height", "0px");
							$("#cityhighlight_container").hide();

							$("#myhighlight_container").html(thtml);
							$("#myhighlight_container").show('slow');

						} else {

						}

					}
				});

	}
	function getNextCities(lastcity) {

		txt_citylist = "";
		for (i = 0; i < citylist.length; i++) {
			txt_citylist = txt_citylist + "," + citylist[i];
		}
		if (txt_citylist != "")
			txt_citylist = txt_citylist.substring(1);
		$.ajax({
			url : "ajax/recommnext.asp",
			data : {
				lang : "ko",
				lastcity : lastcity,
				citylist : txt_citylist
			},
			success : function(data) {

				var strv = data;
				if (strv != null) {

					clearNextMarkers();

					var RcvData = decodeURIComponent(strv).replace(/\+/g, ' ');
					var MarkerA = RcvData.split("@");

					for (i = 0; i < MarkerA.length - 1; i++) //0:serial,1:markerName,2:name_eng, 3:longitude,4:latitude,5:trstypetxt,6:trsdesc
					{
						var R = MarkerA[i + 1].split("#");

						var imgurl = "//www.stubbyplanner.com/img_v8/marker_recommend.png";

						var title = R[1] + "(" + R[6] + " by " + R[5] + ")";
						var zIdx = 9999;
						var posn = new google.maps.LatLng(R[4], R[3]);
						var marker = createMarkerWithoutSize(posn, R[0], title, imgurl, zIdx);
						marker.setMap(map);
						recommMarkers.push(marker);
					}

				}
			}
		});
	}
	function clearNextMarkers() {
		for (i = 0; i < recommMarkers.length; i++) {
			recommMarkers[i].setMap(null);
		}
	}
	function toggleBounce() {

		if (marker.getAnimation() != null) {
			marker.setAnimation(null);
		} else {
			marker.setAnimation(google.maps.Animation.BOUNCE);
		}
	}

	$(function() {
		$("#cityroute").sortable({
			items : ".cityblock",
			start : function(event, ui) {
				var start_pos = ui.item.index();
				ui.item.data('start_pos', start_pos);

			},
			update : function(event, ui) {
				var start_pos = ui.item.data('start_pos');
				var index = ui.item.index();

				if (start_pos != index) {
					sidx = start_pos;
					eidx = index;
					if (sidx < eidx) {
						//	eidx--;
					}

					moveCity(sidx, eidx);
				} else {

				}
			},
			sort : function() {
				// gets added unintentionally by droppable interacting with sortable
				// using connectWithSortable fixes this, but doesn't allow you to customize active/hoverClass options
				//$( this ).removeClass( "ui-state-default" );
			}
		});
	});

	function selCity(t) {
		var is_chrome = window.chrome;
		var bias = 137;
		if (!is_chrome)
			var bias = 138;

		$("#city_list").css("top", (newMapHeight + bias) * -1);
		$("#city_list").css("height", newMapHeight);
		$("#if_citylist").css("height", newMapHeight);

		if (t == "map") {
			$("#toggleforlist").hide();
			$("#toggleformap").show();
			$("#city_list").hide();
		} else {
			$("#city_list").show();
			$("#toggleformap").hide();
			$("#toggleforlist").show();
			getRoute('11', '');
		}

	}

	function setcities(serials) {
		window.location = "/plan/planner_step1.asp?cityserials=" + serials;
	}
</script>



<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script>
	google.load("webfont", "1");
	google.setOnLoadCallback(function() {
		WebFont.load({
			custom : {
				families : [ "NanumGothic" ],
				urls : [ 'https://fonts.googleapis.com/earlyaccess/nanumgothic.css' ]
			}
		});
	});
</script>

<link rel="stylesheet" href="/css/blueimp-gallery.min.css">

</head>
<body topmargin="0" onload="initialize()" onresize="resized()" scroll="no">


	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
		ga('create', 'UA-913663-1', 'auto');
		ga('send', 'pageview');
		ga('send', 'event', 'planner', 'webview', '');
	</script>
	<script>
		prv_menuregion = "11";
		function showCityList(srcserial) {
			$("#menu" + prv_menuregion).removeClass("menuselected");
			$("#menu" + srcserial).addClass("menuselected");

			prv_menuregion = srcserial;
			document.getElementById("if_citylist").src = "planner_step1_citylist.asp?lang=ko&srcserial=" + srcserial;
		}
	</script>
	<script>
		function openAddCity() {

			document.getElementById("if_addcity").src = "/plan/addcity.asp";
			$("#dialog-addcity").modal();

		}
		function closeAddCity() {
			$("#dialog-addcity").dialog("destroy");
		}
		function onselectchanged(latlng) {
			latlng = latlng.split(",");
			var lat = latlng[0];
			var lng = latlng[1];
			moveTo(lat, lng);
			closeIntro();
		}
	</script>


	<SCRIPT>
		function fsubmit() {
			startdate = $("#thedate").val();
			txt_citylist = getTripgene();
			if (txt_citylist != "") {
				txt_citylist = txt_citylist.substring(3);
				var startdate = $("#thedate").val();
				window.location = "//www.stubbyplanner.com/plan/step3_multiple.asp?sdate=" + startdate + "&tripgene=" + getTripgene();
			} else
				alert("입력된 도시가 없습니다.");

		}
		$(function() {
			$("input:submit, a, button", ".demo").button({
				icons : {
					primary : 'ui-icon-circle-plus'
				}
			});
			//$( "a", ".demo" ).click(function() { return false; }); 
		});

		function moveTo(lat, lng) {
			var center = new google.maps.LatLng(lat, lng);
			map.panTo(center);
		}

		function showBottomBar() {
			if ($("#mapbottom_container").css("height") == "27px") {
				$("#mapbottom_container").css("height", "163px");
				$("#btn_bottom_show").html('<i class="fa fa-chevron-circle-down"></i>');
			} else {
				$("#mapbottom_container").css("height", "27px");
				$("#btn_bottom_show").html('<i class="fa fa-chevron-circle-up"></i>');
			}
		}
	</SCRIPT>

	<!-- Root element of PhotoSwipe. Must have class pswp. -->
	<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">

		<!-- Background of PhotoSwipe. 
         It's a separate element as animating opacity is faster than rgba(). -->
		<div class="pswp__bg"></div>

		<!-- Slides wrapper with overflow:hidden. -->
		<div class="pswp__scroll-wrap">

			<!-- Container that holds slides. 
            PhotoSwipe keeps only 3 of them in the DOM to save memory.
            Don't modify these 3 pswp__item elements, data is added later on. -->
			<div class="pswp__container">
				<div class="pswp__item"></div>
				<div class="pswp__item"></div>
				<div class="pswp__item"></div>
			</div>

			<!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->
			<div class="pswp__ui pswp__ui--hidden">

				<div class="pswp__top-bar">

					<!--  Controls are self-explanatory. Order can be changed. -->

					<div class="pswp__counter"></div>

					<button class="pswp__button pswp__button--close" title="Close (Esc)"></button>

					<button class="pswp__button pswp__button--share" title="Share"></button>

					<button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>

					<button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>

					<!-- Preloader demo //codepen.io/dimsemenov/pen/yyBWoR -->
					<!-- element will get class pswp__preloader--active when preloader is running -->
					<div class="pswp__preloader">
						<div class="pswp__preloader__icn">
							<div class="pswp__preloader__cut">
								<div class="pswp__preloader__donut"></div>
							</div>
						</div>
					</div>
				</div>

				<div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
					<div class="pswp__share-tooltip"></div>
				</div>

				<button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button>

				<button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)"></button>

				<div class="pswp__caption">
					<div class="pswp__caption__center" style="text-align: center; padding-bottom: 20px"></div>
				</div>

			</div>

		</div>

	</div>






	<div id="daylist"
		style="display: none; border-top: 1px solid #bec2c4; padding-top: 1px; width: 100%; height: 36px; overflow-x: auto; overflow-y: hidden"></div>




	<script>
		function compareAirTicket(tt) {
			FirstCity = citylist[0];
			LastCity = citylist[citylist.length - 1];

			var indate = $("#thedate").val();
			var xx = new Date(indate);
			var thedate_out = new Date();
			var term = 4;
			if ($("#TXT_TERM")) {
				term = eval($("#TXT_TERM").html());

			}
			if (term > 0)
				term = term;
			else
				term = 4;
			thedate_out.setDate(xx.getDate() + term);
			var outdate = getFormattedDate(thedate_out);
			indate_nobar = indate.replace(/-/g, '');
			outdate_nobar = outdate.replace(/-/g, '');

			if (tt == "F")
				window.open("/plan/trs_deeplink.asp?lang=ko&date_all=" + indate_nobar + "&TRSType=3&depserial=161031001&desserial=" + FirstCity);
			else if (tt == "R")
				window.open("/plan/trs_deeplink.asp?lang=ko&date_all=" + outdate_nobar + "&TRSType=3&depserial=" + LastCity + "&desserial=161031001");
			else
				window.open("/plan/trs_deeplink.asp?lang=ko&date_all=" + indate_nobar + "&rt_date_all=" + outdate_nobar
						+ "&TRSType=5&depserial=161031001&desserial=" + FirstCity);

		}
		var air_price_sum = 0;
		function getAirPrice() {
			return;

			var incity = citylist[0];
			var outcity = citylist[citylist.length - 1];
			var air_price_sum = 0;
			$("#txt_total_air_price").html('');
			var indate = $("#thedate").val();
			var xx = new Date(indate);
			//var thedate_out=new Date();
			var term = 4;
			if ($("#TXT_TERM")) {
				term = eval($("#TXT_TERM").html());

			}
			if (term > 0)
				term = term;
			else
				term = 4;

			//thedate_out.setDate(xx.getDate()+term);
			var thedate_out = new Date(xx.getTime() + term * 24 * 60 * 60 * 1000 - 30 * 24 * 60 * 60 * 1000);
			var outdate = getFormattedDate(thedate_out);

			var txt_cur = "만원";
			if (incity == outcity) {
				$
						.ajax({
							url : 'http://www.tripgene.com/api/getairprice.php?indate=' + indate + '&outdate=' + outdate + '&lang=ko&i=' + incity
									+ '&o=' + outcity,
							dataType : 'jsonp',
							success : function(data) {
								var thebtn = '<div class="div_btn_airprice" style="padding-top:3px;padding-bottom:3px;width:60px;display:inline;background:#a1a1"><a id="btn_airprice" href="javascript:compareAirTicket(\'X\');" style="color:#ffffff;font-family:돋움;font-size:9pt;">시간표</a></div>';
								if (data != "") {
									if (data > 0) {
										thebtn = '<div class="div_btn_airprice" style="padding-top:3px;padding-bottom:3px;width:60px;display:inline;background:#e45d44"><a id="btn_airprice" href="javascript:compareAirTicket(\'X\');" style="color:#ffffff;font-family:돋움;font-size:9pt;">'
												+ data + txt_cur + '~ </a></div>';
									}
								}
								$("#IN_CITY").html(cities[incity].name + " 왕복 " + thebtn);
								$("#OUT_CITY").html('');
							}
						});
			} else {
				$
						.ajax({
							url : 'http://www.tripgene.com/api/getbestprice.php?thedate=' + indate + '&lang=ko&trstype=air&dep=161031001&des='
									+ incity,
							dataType : 'jsonp',
							success : function(data) {
								var thebtn = '<div class="div_btn_airprice" style="padding-top:3px;padding-bottom:3px;width:60px;display:inline;background:#a1a1a1"><a id="btn_airprice" href="javascript:compareAirTicket(\'F\');" style="color:#ffffff;font-family:돋움;font-size:9pt;">시간표</a></div>';
								if (data != "")
									if (data > 0) {
										thebtn = '<div class="div_btn_airprice" style="padding-top:3px;padding-bottom:3px;width:60px;display:inline;background:#e45d44"> <a id="btn_airprice" href="javascript:compareAirTicket(\'F\');" style="color:#ffffff;font-family:돋움;font-size:9pt;">'
												+ data + txt_cur + '~ </a></div>';
										if (air_price_sum > 0) {
											air_price_sum = air_price_sum + data;
											$("#txt_total_air_price").html(air_price_sum + "만원~");
										} else {
											air_price_sum = data;
										}
									}
								$("#IN_CITY").html(cities[incity].name + "IN " + thebtn);

							}
						});
				$
						.ajax({
							url : 'http://www.tripgene.com/api/getbestprice.php?thedate=' + outdate + '&lang=ko&trstype=air&dep=' + outcity
									+ '&des=161031001',
							dataType : 'jsonp',
							success : function(data) {
								var thebtn = '<div class="div_btn_airprice" style="padding-top:3px;padding-bottom:3px;width:60px;display:inline;background:#a1a1a1"><a id="btn_airprice" href="javascript:compareAirTicket(\'R\');" style="color:#ffffff;font-family:돋움;font-size:9pt;">가격비교</a></div>';
								if (data != "")
									if (data > 0) {
										thebtn = '<div class="div_btn_airprice" style="padding-top:3px;padding-bottom:3px;width:60px;display:inline;background:#e45d44"> <a id="btn_airprice" href="javascript:compareAirTicket(\'R\');" style="color:#ffffff;font-family:돋움;font-size:9pt;">'
												+ data + txt_cur + '~ </a></div>';
										if (air_price_sum > 0) {
											air_price_sum = air_price_sum + data;
											$("#txt_total_air_price").html(air_price_sum + "만원~");
										} else {
											air_price_sum = data;
										}

									}

								$("#OUT_CITY").html(cities[outcity].name + "OUT " + thebtn);
							}
						});
			}

		}
	</script>

	<script>
		var lastHighlight = '';
		function updateDateSilent(theidx) {
			return;

			var thedate = $("#thedate").val();
			var des;
			var lastIdx = 0;

			$(".cityblock .trsinfo").each(function(idx) {
				if (idx > 0) {
					if (idx >= theidx) {
						dep = citylist[idx - 1];
						des = citylist[idx];
						thedate = getFormattedDate(routelist[idx - 1].date_out);

						//			$(".cityblock .trsinfo").eq(idx).find(".check_train").html("시간표");
						//			$(".cityblock .trsinfo").eq(idx).find(".check_train_div").css("background","#a1a1a1");
						//			$(".cityblock .trsinfo").eq(idx).find(".check_train").attr("href","javascript:trslink('1','"+dep+"','"+des+"','"+thedate+"')");

						//			$(".cityblock .trsinfo").eq(idx).find(".check_air").html("시간표");
						//			$(".cityblock .trsinfo").eq(idx).find(".check_air_div").css("background","#a1a1a1");
						//			$(".cityblock .trsinfo").eq(idx).find(".check_air").attr("href","javascript:trslink('2','"+dep+"','"+des+"','"+thedate+"')");

					}
				}
			});

			var thedate;
			//		var startdate = new Date(thedate);
			//		var thedate_out=new Date();
			//		thedate_out.setDate(xx.getDate()+1);
			//		var thedate_out_str = getFormattedDate(thedate_out);

			$(".cityblock .trsinfo").each(
					function(idx) {

						if (idx > 0) {
							if (idx >= theidx) {

								dep = citylist[idx - 1];
								des = citylist[idx];

								if (idx == 1) {

									loadTrsInfo(idx, dep, des);

								} else {

									lastIdx = idx;
									var txt_cur = "만원";

									thedate = getFormattedDate(routelist[idx - 1].date_out);

									$.ajax({
										url : 'http://www.tripgene.com/api/getbestprice.php?thedate=' + thedate + '&lang=ko&trstype=rail&dep=' + dep
												+ '&des=' + des,
										dataType : 'jsonp',
										success : function(data) {
											if (data != "")
												if (data > 0) {
													$(".cityblock .trsinfo").eq(idx).find(".check_train").html(data + txt_cur + "~");
													$(".cityblock .trsinfo").eq(idx).find(".check_train_div").css("background", "#e45d44");
												}
										}
									});
									$.ajax({
										url : 'http://www.tripgene.com/api/getbestprice.php?thedate=' + thedate + '&lang=ko&trstype=air&dep=' + dep
												+ '&des=' + des,
										dataType : 'jsonp',
										success : function(data) {
											if (data != "")
												if (data > 0) {
													$(".cityblock .trsinfo").eq(idx).find(".check_air").html(data + txt_cur + "~");
													$(".cityblock .trsinfo").eq(idx).find(".check_air_div").css("background", "#e45d44");
												}
										}
									});

								}

								thedate = getFormattedDate(routelist[idx - 1].date_in);
								thedate_out_str = getFormattedDate(routelist[idx - 1].date_out);

							}
						}

					});

		}

		function updateDate() {
			getAirPrice();
			//	showLoading(thedate);
			getHighlights(lastHighlight);
			saveCookie();
			//	drawDayList();
			updateDateInOut();
			updateDateSilent(0);

		}
		function getFormattedDate(date) {
			var year = date.getFullYear();
			var month = (1 + date.getMonth()).toString();
			if (month > 12) {
				year++;
				month = month - 12;
			}
			month = month.length > 1 ? month : '0' + month;
			var day = date.getDate().toString();
			day = day.length > 1 ? day : '0' + day;
			return year + '-' + month + '-' + day;
		}
		function trslink(trstype, dep, des, date_str) {
			var thedate = date_str;
			thedate_nobar = thedate.replace("-", "").replace("-", "");
			window.open('/plan/trs_deeplink.asp?lang=ko&date_all=' + thedate_nobar + '&TRSType=' + trstype + '&depserial=' + dep + '&desserial='
					+ des);
		}
		function showinfo(t) {
			//$("#cityroute").hide();
			$("#info_" + t).show();
		}
		function hideinfo(t) {
			$("#info_" + t).hide();
			//$("#cityroute").show();
		}

		var tripwith_isopen = false;
		var tripwith_txt = [];
		tripwith_txt[1] = "여자혼자";
		tripwith_txt[2] = "남자혼자";
		tripwith_txt[3] = "커플/신혼";
		tripwith_txt[4] = "여자끼리";
		tripwith_txt[5] = "남자끼리";
		tripwith_txt[6] = "남녀함께";
		tripwith_txt[7] = "아이들과";
		tripwith_txt[8] = "부모님과";
		tripwith_txt[9] = "부모님끼리";

		function toggleSelectTripWith() {
			if (tripwith_isopen) {
				$("#div_tripwith_selector").hide();
				tripwith_isopen = false;
			} else {
				thtml = "";
				thtml += '<div style="padding-bottom:15px;">';

				for (i = 0; i < 9; i++) {
					x = parseInt(i / 3) + 1;
					y = i % 3 + 1;
					thtml += '<div style="float:left;width:33%">';
					thtml += '<div><a href="javascript:selectTripwith(' + x + ',' + y + ')"><img src="/img_v14/tripwith/TW_' + x + '_' + y
							+ '_w.png" width="100%"></a></div>';
					thtml += '<div style="margin-top:-15px;text-align:center;"><font style="color:#fff;font-size:8pt">' + tripwith_txt[i + 1]
							+ '</font></div>';
					thtml += '</div>';
				}
				thtml += '<div style="clear:both"></div></div>';
				$("#div_tripwith_selector").html(thtml);
				$("#div_tripwith_selector").show();

				tripwith_isopen = true;

			}
		}

		function selectTripwith(x, y) {
			thei = (x - 1) * 3 + y * 1;

			$("#tripwith_img").attr('src', '/img_v14/tripwith/TW_' + x + '_' + y + '.png');
			$("#tripwith_txt").html(tripwith_txt[thei]);
			tripwith = thei;

			saveCookie();
			toggleSelectTripWith();
		}
		function gotoHome() {
			if (confirm('저장하지 않고 이 페이지를 나가려고 합니다.'))
				window.location = '/';
		}

		function gotoCalendar() {

			if (routelist.length == 0) {
				alert("도시를 하나이상 추가한 뒤에 일정을 만들 수 있습니다.");
				return;
			}

			if (!trip_id)
				saveCookie(1);

			window.location = 'planner_schd.asp?trip_id=' + trip_id;
		}
		function gotoResv() {

			window.location = "/common/login.asp"

		}
	</script>


	<div id="mapControllerLeft" style="width: 25%; float: left; margin-top: 0px; margin-left: 0px; background: #fff; border-radius: 9px;">

		<div style="background: #3ad195; padding-top: 5px;">
			<div id="topControllerLeft" style="padding-top: 5px; width: 75%; float: left;">
				<div style="padding-left: 10px;">
					<a href="javascript:gotoHome()"><img src="//www.stubbyplanner.com/img_v11/logo_white.png" height="35px"></a>
				</div>
				<div style="height: 45px; padding-top: 2px; padding-left: 4px; padding-bottom: 5px;">

					<div style="text-align: left; padding-top: 5px; padding-left: 5px;">
						<div style="padding-right: 20px; padding-left: 5px; padding-top: 1px;">
							<div style="border-radius: 2; border: 1px solid #efefef; padding-left: 10px; background: #fff">
								<span style="padding-left: 0px; padding-right: 0px; color: #696969; font-size: 9pt;"><i class="fa fa-calendar"></i> 출국</span> <input
									style="width: 95px; font-size: 11pt; background: #fff; margin-left: 0px; padding-left: 5px; padding-top: 2px; padding-bottom: 2px; color: #c0c0c0; border: 0px solid #c0c0c0"
									id="thedate" type="text" onchange="updateDate()"> <input onclick="update_arr_nextday()" type="checkbox" id="arr_nextday"><font
									style="color: #696969; font-size: 8pt">+1 도착</font>
							</div>
						</div>
					</div>

				</div>
			</div>


			<div style="float: left; width: 25%; text-align: right; padding-right: 10px; padding-top: 5px; padding-bottom: 0px;">
				<div onclick="toggleSelectTripWith();"
					style="cursor: pointer; border: 1px solid #efefef; background: #fff; border-radius: 2px;; text-align: center; padding-top: 5px; padding-bottom: 5px;">

					<div style="display: block">
						<img id="tripwith_img" src="//www.stubbyplanner.com/img_v14/tripwith/TW_1_3.png" height="43px">
					</div>
					<div style="font-size: 8pt;">
						<span id="tripwith_txt">타입선택</span> <i class="fa fa-angle-down"></i>
					</div>
				</div>
			</div>
			<div style="clear: both"></div>

			<div id="div_tripwith_selector"
				style="border-radius: 5px; z-index: 999; display: none; position: absolute; top: 73px; width: 270px; left: 13px; background: #696969"></div>

		</div>

		<div id="cityroute"
			style="position: relative; text-align: center; width: 100%; margin-left: 0px; padding-left: 0px; padding-top: 0px; overflow-x: hidden; overflow-y: auto; height: 480px; background: #ffffff">
			<br />
			<br />
			<br />
			<font style="font-size: 9pt" color="#c0c0c0"><b>입력된 도시가 없습니다.</b></font>
		</div>

	</div>

	<div id="map_container" style="float: left; width: 75%; height: 600px; overflow: hidden">
		<div style="padding-bottom: 0px; background: #3ad195">

			<div id="topControllerRight" style="width: 100%;">
				<div class="top_menu" id="menu1" onclick="window.location='planner_rt.asp?trip_id=10244967'" style="border-bottom: 5px solid gray">
					<font style="color: #fff; font-size: 12pt">루트</font> <span id="menu_label_route"
						style="border-radius: 2px; display: inline-block; background: #fff; padding-top: 1px; padding-bottom: 1px; padding-left: 2px; padding-right: 2px; color: #696969; font-size: 8pt;">-박-일</span>
				</div>
				<div class="top_menu" id="menu2" onclick="gotoCalendar()">
					<font style="font-size: 12pt; color: #fff;">일정</font> <span id="menu_label_schd"
						style="border-radius: 2px; display: inline-block; background: #fff; padding-top: 1px; padding-bottom: 1px; padding-left: 2px; padding-right: 2px; color: #696969; font-size: 8pt;"><span
						id="span_schd_cnt">0</span>개</span>
				</div>
				<div class="top_menu" id="menu3" onclick="gotoResv()">
					<font style="font-size: 12pt; color: #fff;">예약 <span id="menu_label_resv"
						style="border-radius: 2px; display: inline-block; background: #fff; padding-top: 1px; padding-bottom: 1px; padding-left: 2px; padding-right: 2px; color: #696969; font-size: 8pt;">0만원</span>
				</div>
				<div style="float: left; width: 25%; text-align: center; padding-top: 8px;">

					<div id="btnStart"
						style="display: inline-block; border-radius: 5px; border: 0px solid #fff; background: gray; width: 70%; text-align: center; padding-top: 6px; padding-bottom: 6px; cursor: pointer; text-decoration: none; color: #FFF; font-size: 10pt; font-weight: bold"
						" onclick="toggleTRMenu();">
						GUEST로 작업중 <i id="guest_btn_icon" class="fa fa-angle-down"></i>
					</div>

				</div>
				<script>
					var is_TRMenu_displayed = 0;
					function toggleTRMenu() {

						if (is_TRMenu_displayed) {
							$("#div_top_right_menu").hide();
							is_TRMenu_displayed = 0;
							$("#guest_btn_icon").removeClass("fa-angle-up");
							$("#guest_btn_icon").addClass("fa-angle-down");

						} else {
							$("#div_top_right_menu").show();
							is_TRMenu_displayed = 1;
							$("#guest_btn_icon").removeClass("fa-angle-down");
							$("#guest_btn_icon").addClass("fa-angle-up");

						}
					}
					function login() {
						if (!trip_id)
							saveCookie(1);

						window.location = "/common/login.asp?h_url=%2Fplanner%2Fplanner%5Frt%2Easp%3Ftrip%5Fid%3D" + trip_id;
					}
					function register() {
						if (!trip_id)
							saveCookie(1);

						window.location = "/common/register.asp?h_url=%2Fplanner%2Fplanner%5Frt%2Easp%3Ftrip%5Fid%3D" + trip_id;
					}
					function complete() {
						if (!trip_id)
							saveCookie(1);

						if (!trip_id) {
							alert("도시를 하나 이상 추가한 뒤에 완료를 눌러주세요.");
							return;
						}

						thtml = "";
						thtml += '<div style="margin-bottom:7px;">';
						thtml += '<div style="width:30%;float:left;font-size:10pt;color:#fff">여행명</div>';
						thtml += '<div style="width:70%;float:left;"><input class="form-control" type="text" id="planname" name="planname" value=""></div>';
						thtml += '<div style="clear:both"></div>';
						thtml += '</div>';

						thtml += '<div style="margin-bottom:7px;">';
						thtml += '<div style="width:30%;float:left;font-size:10pt;color:#fff">인원</div>';
						thtml += '<div style="width:70%;float:left;"><select name="member_cnt" id="member_cnt" class="form-control">';

						thtml += '<option value="0" >0명</option>';

						thtml += '<option value="1" selected>1명</option>';

						thtml += '<option value="2" >2명</option>';

						thtml += '<option value="3" >3명</option>';

						thtml += '<option value="4" >4명</option>';

						thtml += '<option value="5" >5명</option>';

						thtml += '<option value="6" >6명</option>';

						thtml += '<option value="7" >7명</option>';

						thtml += '<option value="8" >8명</option>';

						thtml += '<option value="9" >9명</option>';

						thtml += '<option value="10" >10명</option>';

						thtml += '<option value="11" >11명</option>';

						thtml += '<option value="12" >12명</option>';

						thtml += '<option value="13" >13명</option>';

						thtml += '<option value="14" >14명</option>';

						thtml += '<option value="15" >15명</option>';

						thtml += '<option value="16" >16명</option>';

						thtml += '<option value="17" >17명</option>';

						thtml += '<option value="18" >18명</option>';

						thtml += '<option value="19" >19명</option>';

						thtml += '<option value="20" >20명</option>';

						thtml += '</select></div><div style="clear:both"></div>';
						thtml += '</div>';

						thtml += '<div style="margin-bottom:7px;">';
						thtml += '<div style="width:30%;float:left;font-size:10pt;color:#fff">이메일주소</div>';
						thtml += '<div style="width:70%;float:left;"><input class="form-control" type="text" id="email" name="email" value=""></div>';
						thtml += '<div style="clear:both"></div>';
						thtml += '</div>';

						thtml += '<div style="padding-top:10px"><a href="javascript:saveandmove()" style="text-align:center" class="btn-lg btn-success btn-block">저장하기</a></div>';
						thtml += '<div style="clear:both"></div>';
						thtml += '<p style="font-size:8pt;color:#fff;padding-top:5px;">비회원 플래너는 누구나 접근 가능하며 임의로 수정 될 수 있습니다.</p>';

						xtitle = "비회원 플래너 저장";
						$("#my_modal_title").html(xtitle);
						$("#my_modal_desc").html(thtml);
						openMyModal();

					}
				</script>

				<div id="div_top_right_menu"
					style="border: 1px solid #696969; padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px; border-radius: 0px; z-index: 999; display: none; position: absolute; top: 43px; width: 270px; right: 35px; background: #fff; color: #696969">
					<div>
						<i class="fa fa-unlock" aria-hidden="true"></i> 이 주소로 접근하는 모든 사람이 보고 수정할 수 있습니다.
					</div>
					<div style="padding-top: 10px;">
						<a href="javascript:login()" class="btn btn-block" style="background: #696969; border: 1px solid #fff; color: #fff; text-align: center">로그인
							하기</a> <a href="javascript:register()" class="btn btn-block" style="background: #696969; border: 1px solid #fff; color: #fff; text-align: center">회원가입하기</a>
						<a href="javascript:complete()" class="btn btn-block" style="background: #c0c0c0; border: 1px solid #fff; color: #fff; text-align: center">비회원으로
							작업완료</a> <a href="https://goo.gl/sgqow5" target="_blank" class="btn btn-block"
							style="background: #000; border: 1px solid #fff; color: #fff; text-align: center">아이폰 앱으로 작업</a>
					</div>
				</div>

				<div style="clear: both"></div>
			</div>
			<div style="clear: both"></div>
		</div>

		<div id="map_canvas" style="border-left: 1px solid #F2F3F4; width: 100%; height: 580px"></div>
	</div>
	<div style="clear: both"></div>
	<script>
		$('#thedate').datepicker();
		$('#thedate').datepicker("option", "dateFormat", "yy-mm-dd");
		$('#thedate').val('2019-05-22')
		function validateEmail(email) {
			var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			return re.test(String(email).toLowerCase());
		}
		function saveandmove() {

			planname = $("#planname").val();
			member_cnt = $("#member_cnt").val();
			email = $("#email").val();
			startdate = $("#thedate").val();
			if (planname.length < 3) {
				alert("제목은 3글자 이상이어야 합니다.");
				return;
			}
			if (!validateEmail(email)) {
				alert("정상적인 이메일이 아닙니다.");
				return;
			}

			$.ajax({
				url : "/api/planning/saveTripgeneInfo.asp",

				data : {
					trip_id : trip_id,
					title : planname,
					startdate : startdate,
					email : email,
					membercnt : member_cnt
				},

				success : function(data) {

					window.location = "/planner/detail.asp?tid=" + trip_id;
				}
			});

		}

		function getLink() {
			var turl = "//www.stubbyplanner.com/plan/planner_step1.asp?cityserials=";
			for (i = 0; i < citylist.length; i++) {
				se = citylist[i];
				if (i == citylist.length - 1) {
					turl = turl + se;
					if (cities[se].spots) {
						for (j = 0; j < cities[se].spots.length; j++) {
							st = cities[se].spots[j].serial;
							st = st.substring(9, 14);
							if (j == 0)
								turl = turl + "|";
							if (j == cities[se].spots.length - 1)
								turl = turl + st;
							else
								turl = turl + st + "|";
						}
					}
				} else {
					turl = turl + se;
					if (cities[se].spots) {
						for (j = 0; j < cities[se].spots.length; j++) {
							st = cities[se].spots[j].serial;
							st = st.substring(9, 14);

							if (j == 0)
								turl = turl + "|";

							if (j == cities[se].spots.length - 1)
								turl = turl + st;
							else
								turl = turl + st + "|";
						}
					}
					turl = turl + ",";

				}

			}
			window.location = turl;
		}
		Spot = function(spotname, spotserial, lat, lng, imgurl) {
			this.name = spotname;
			this.serial = spotserial;
			this.lat = lat;
			this.lng = lng;
			this.imgurl = imgurl;
		}
		City = function(cityname, cityserial, lat, lng, recommSlp, slpRates) {
			this.name = cityname;
			this.serial = cityserial;
			this.lat = lat;
			this.lng = lng;
			this.spots = [];
			this.recommSlp = recommSlp;
			this.slpRates = slpRates;
		}

		cities = [];
		citylist = [];
		lines = [];

		var lastcity = 0;
		function redrawMapMarkers() {
			clearLines();
			clearMyMarkers();
			clearNextMarkers();
			for (i = 0; i < citylist.length; i++) {

				se = citylist[i];
				tcity = cities[se];
				cities[se] = tcity;

				var marker = createMyMarker(tcity.name, tcity.serial, tcity.lat, tcity.lng, i, routelist[i].nights);

				if (routelist[i].is_night_move == "1")
					XstrokeColor = "#ee685a";
				else
					XstrokeColor = "#696969";

				if (i > 0) {
					s = citylist[i - 1];
					lastcity = cities[s];
					var lineCoordinates = [ new google.maps.LatLng(lastcity.lat, lastcity.lng), new google.maps.LatLng(tcity.lat, tcity.lng) ];

					var lineSymbol = {
						path : google.maps.SymbolPath.FORWARD_CLOSED_ARROW
					};

					var linePath = new google.maps.Polyline({
						path : lineCoordinates,
						icons : [ {
							icon : lineSymbol,
							offset : '100%'
						} ],
						strokeColor : XstrokeColor,
						strokeOpacity : 0.9,
						strokeWeight : 2
					});

					linePath.setMap(map);
					lines[lines.length] = linePath;

				}

			}
			lastcity = cities[citylist[citylist.length - 1]];
		}
		function clearLines() {
			for (i = 0; i < lines.length; i++) {
				lines[i].setMap(null);
			}
			lines = [];
		}
		function updateDateInOut() {
			var arr_nextday = 0;
			if ($("#arr_nextday").is(":checked"))
				arr_nextday = 1;
			term = arr_nextday;
			startdate = new Date($("#thedate").val().replace("-", "/").replace("-", "/"));
			for (i = 0; i < routelist.length; i++) {

				if (routelist[i].is_night_move == "1")
					routelist[i].date_in = new Date(startdate.getFullYear(), startdate.getMonth(), startdate.getDate() + eval(term) + 1);
				else
					routelist[i].date_in = new Date(startdate.getFullYear(), startdate.getMonth(), startdate.getDate() + eval(term));

				routelist[i].date_out = new Date(routelist[i].date_in.getFullYear(), routelist[i].date_in.getMonth(), routelist[i].date_in.getDate()
						+ eval(routelist[i].nights));

				date_in = routelist[i].date_in;
				date_out = routelist[i].date_out;
				xxhtml = "";
				xxhtml = xxhtml + (date_in.getMonth() + 1) + '월' + date_in.getDate() + '일(' + weekdays[date_in.getDay()] + ')';
				if (date_out.getMonth() != date_in.getMonth() || date_out.getDate() != date_in.getDate()) {
					xxhtml = xxhtml + '~';
					if (date_out.getMonth() != date_in.getMonth())
						xxhtml = xxhtml + (date_out.getMonth() + 1) + '월';
					xxhtml = xxhtml + date_out.getDate() + '일(' + weekdays[date_out.getDay()] + ')';
				}

				$("#cityblock" + i + " .date_in_out").html(xxhtml);

				term = term + eval(routelist[i].nights) + eval(routelist[i].is_night_move);
			}

		}
		function reOrder() {

			$(".cityblock").each(
					function(idx) {

						$(this).attr("id", "cityblock" + idx);

						$("#cityblock" + idx + " .a_mngSlp").attr("href",
								"javascript:mngSlp('" + routelist[idx].name + "','" + routelist[idx].cityserial + "',0," + idx + ")");
						$("#cityblock" + idx + " .div_mngSlp").attr("onclick",
								"mngSlp('" + routelist[idx].name + "','" + routelist[idx].cityserial + "',0," + idx + ")");

						if (idx > 0) {
							var thedate = getFormattedDate(routelist[idx].date_in);
							$("#cityblock" + idx + " .div_btnTrsTool").attr(
									"onclick",
									"showTrsTool('" + routelist[idx - 1].cityserial + "','" + routelist[idx].cityserial + "','" + thedate + "',"
											+ idx + ")");
						}
						$("#cityblock" + idx + " .btnDel").attr("href", "javascript:delCity(" + idx + ")");
						$("#cityblock" + idx + " .daySelector").attr("onchange", "chgNights('" + idx + "',this.value)");

					});

		}

		function XXXXXXXXXXaddCity(cityname, cityserial, lat, lng, recommSlp, slpRates) {
			thtml = "";
			if (routelist.length < 3) {
				XXaddCity(cityname, cityserial, lat, lng, recommSlp, slpRates);

				return;
			}
			thtml += '<div style="padding-top:10px;padding-bottom:40px;"><font style="font-size:12pt;color:#fff"> 제일 뒤에 <a href="javascript:XXaddCity(\''
					+ cityname
					+ '\',\''
					+ cityserial
					+ '\',\''
					+ lat
					+ '\',\''
					+ lng
					+ '\',\''
					+ recommSlp
					+ '\',\''
					+ slpRates
					+ '\');closeMyModal();" class="btn-u btn-u-lg btn-u-green"><i class="fa fa-plus-circle" aria-hidden="true"></i>추가하기</font></a></div>';
			thtml += '<div style="padding-top:20px;padding-bottom:20px;"><font style="font-size:12pt;color:#fff">OR</font></div>';

			thtml += '<div style="padding-top:10px;padding-bottom:40px;"><font style="font-size:12pt;color:#fff"> 좌우로 스크롤 하며 선택 도시[' + cityname
					+ ']를 넣을 위치를 찾아 <i class="fa fa-plus-circle" aria-hidden="true"></i>를 선택하세요.</font></div>';
			thtml += '<div style="overflow-x:auto;overflow-y:hidden;height:90px;margin-top:10px;padding-top:10px;border-top:1px solid #fff;border-bottom:1px solid #fff">';
			thtml += '<div style="width:' + eval(routelist.length * 110 + 100) + 'px">';
			for (i = 0; i < routelist.length; i++) {

				{
					thtml += '<div style="width:43px;float:left;line-height:100%;height:70px;overflow-y:hidden;margin-bottom:20px;">';
					thtml += '<a href="javascript:addAndMoveCityAndReload(\'' + cityname + '\',\'' + cityserial + '\',\'' + lat + '\',\'' + lng
							+ '\',\'' + recommSlp + '\',\'' + slpRates + '\',' + i
							+ ')"><font style="font-size:30pt;color:#fff"><i class="fa fa-plus-circle" aria-hidden="true"></i></font></a>';

					thtml += '</div>';
				}
				x_color = "#fff";

				thtml += '<div style="width:67px;float:left;line-height:100%;height:70px;overflow-y:hidden;margin-bottom:20px;">';
				thtml += '<div style="border-bottom:3px solid #efefef;height:20px;text-align:center;overflow:hidden;">';
				thtml += '</div>';
				thtml += '<div style="height:50px">';
				thtml += '<div style="text-align:center;padding-top:13px;"><font style="font-size:8pt;font-weight:bold;color:'+x_color+'">'
						+ routelist[i].name + '</font></div>';
				thtml += '<div style="text-align:center;padding-top:3px">';
				if (routelist[i].nights > 0) {
					thtml += '<font style="font-size:8pt;font-family:돋움;color:'+x_color+'">' + routelist[i].nights + '박</font>';
				}

				thtml += '</div>';
				thtml += '</div>';

				thtml += '<div style="position:relative;top:-60px;text-align:center">';
				thtml += '<img src="/images/is/flag/' + routelist[i].cityserial.substring(0, 5) + '.gif" height="16px" style="border-radius:8px">';

				thtml += '</div>';
				thtml += '</div>'
			}

			thtml += '</div>';
			thtml += '</div>';

			xtitle = cityname + " 추가될 위치 선택";
			$("#my_modal_title").html(xtitle);
			$("#my_modal_desc").html(thtml);
			openMyModal();

		}

		function showMoveCityTool(idx) {
			thtml = '<div style="padding-top:10px;padding-bottom:40px;"><font style="font-size:12pt;color:#fff">좌우로 스크롤 하며 선택 도시['
					+ routelist[idx].name + ']를 넣을 위치를 찾아 <i class="fa fa-plus-circle" aria-hidden="true"></i>를 선택하세요.</font></div>';
			thtml += '<div style="overflow-x:auto;overflow-y:hidden;height:90px;margin-top:10px;padding-top:10px;border-top:1px solid #fff;border-bottom:1px solid #fff">';
			thtml += '<div style="width:' + eval(routelist.length * 110 + 330) + 'px">';
			for (i = 0; i < routelist.length; i++) {

				n_i = i;
				if (idx < i)
					n_i = i - 1;

				{
					thtml += '<div style="width:43px;float:left;line-height:100%;height:70px;overflow-y:hidden;margin-bottom:20px;">';
					if (i == eval(idx) || i == eval(idx + 1))
						thtml += '<font style="font-size:30pt;color:#696969"><i class="fa fa-plus-circle" aria-hidden="true"></i></font>';
					else
						thtml += '<a href="javascript:moveCityAndReload(' + idx + ',' + n_i
								+ ')"><font style="font-size:30pt;color:#fff"><i class="fa fa-plus-circle" aria-hidden="true"></i></font></a>';

					thtml += '</div>';
				}
				if (i == eval(idx))
					x_color = "#696969";
				else
					x_color = "#fff";

				thtml += '<div style="width:67px;float:left;line-height:100%;height:70px;overflow-y:hidden;margin-bottom:20px;">';
				thtml += '<div style="border-bottom:3px solid #efefef;height:20px;text-align:center;overflow:hidden;">';
				thtml += '</div>';
				thtml += '<div style="height:50px">';
				thtml += '<div style="text-align:center;padding-top:13px;"><font style="font-size:8pt;font-weight:bold;color:'+x_color+'">'
						+ routelist[i].name + '</font></div>';
				thtml += '<div style="text-align:center;padding-top:3px">';
				if (routelist[i].nights > 0) {
					thtml += '<font style="font-size:8pt;font-family:돋움;color:'+x_color+'">' + routelist[i].nights + '박</font>';
				}

				thtml += '</div>';
				thtml += '</div>';
				if (i == eval(idx)) {
					thtml += '<div style="position:relative;top:-65px;text-align:center">';
					thtml += '<font style="font-size:20pt;color:#696969"><i class="fa fa-circle" aria-hidden="true"></i></font>';
				} else {
					thtml += '<div style="position:relative;top:-60px;text-align:center">';
					thtml += '<img src="/images/is/flag/' + routelist[i].cityserial.substring(0, 5)
							+ '.gif" height="16px" style="border-radius:8px">';
				}
				thtml += '</div>';
				thtml += '</div>'
			}

			if (routelist.length > 0) {
				thtml += '<div style="width:43px;float:left;line-height:100%;height:70px;overflow-y:hidden;margin-bottom:20px;">';
				if (eval(idx) == routelist.length - 1)
					thtml += '<font style="font-size:30pt;color:#696969"><i class="fa fa-plus-circle" aria-hidden="true"></i></font>';
				else
					thtml += '<a href="javascript:moveCityAndReload(' + idx + ',' + eval(routelist.length - 1)
							+ ')"><font style="font-size:30pt;color:#fff"><i class="fa fa-plus-circle" aria-hidden="true"></i></font></a>';
				thtml += '</div>';
			}

			thtml += '</div>';
			thtml += '</div>';

			xtitle = routelist[idx].name + " 순서변경";
			$("#my_modal_title").html(xtitle);
			$("#my_modal_desc").html(thtml);
			openMyModal();

		}
		function addAndMoveCityAndReload(cityname, cityserial, lat, lng, recommSlp, slpRates, eidx) {
			XXaddCity(cityname, cityserial, lat, lng, recommSlp, slpRates);
			sidx = routelist.length - 1;
			moveCityAndReload(sidx, eidx);
		}
		function moveCityAndReload(sidx, eidx) {

			moveCity(sidx, eidx);

			clearLines();
			redrawMapMarkers();
			reOrder();

			//	showRoute(0);
			closeMyModal();
			//	closeInfowindow();
		}

		function moveCity(sidx, eidx) {

			if (sidx != eidx) {
				if (sidx > eidx) {
					tserial = citylist[sidx];
					troute = routelist[sidx];

					for (i = sidx; i > eidx; i--) {
						citylist[i] = citylist[i - 1];
						routelist[i] = routelist[i - 1];
					}
					citylist[eidx] = tserial;
					routelist[eidx] = troute;
				} else {

					tserial = citylist[sidx];
					troute = routelist[sidx];

					for (i = sidx; i <= eidx; i++) {
						citylist[i] = citylist[i + 1];
						routelist[i] = routelist[i + 1];
					}
					citylist[eidx] = tserial;
					routelist[eidx] = troute;
				}

				if (eidx > 0) {
					dep = citylist[eidx - 1];
					des = citylist[eidx];
					loadTrsInfo(eidx, dep, des);
				}

				if (eidx + 1 < citylist.length) {
					dep = citylist[eidx];
					des = citylist[eidx + 1];
					loadTrsInfo(eidx + 1, dep, des);
				}
				if (sidx > 0 && sidx + 1 < citylist.length) {
					dep = citylist[sidx - 1];
					des = citylist[sidx];

					loadTrsInfo(sidx, dep, des);
				}

				$(".cityblock .trsinfo").eq(0).html('');
				clearLines();
				redrawMapMarkers();
				reOrder();

				theidx = eidx;
				if (sidx < eidx)
					theidx = sidx;

				updateDateInOut();
				updateDateSilent(theidx);

				//	drawDayList();
				saveCookie();

			}

			//	reloadCostNPeriod();
			//	getAirPrice();

		}
		function reloadCostNPeriod() {
			return;

			var lastcity = "";
			txt_citylist = "";
			for (i = 0; i < citylist.length; i++) {
				txt_citylist = txt_citylist + "," + citylist[i];
				lastcity = citylist[i];
			}
			if (txt_citylist != "")
				txt_citylist = txt_citylist.substring(1);

			if (lastcity.substring(0, 2) == "11" || lastcity.substring(0, 2) == "12" || lastcity.substring(0, 2) == "13"
					|| lastcity.substring(0, 2) == "14") {
				$.ajax({
					url : "ajax/GetCostNStory.asp",
					data : {
						lang : "ko",
						cities : txt_citylist
					},
					success : function(data) {
						$("#anal").html(data);
						$("#anal").show();
						$("#airprice").hide();
					}
				});
			} else {
				$("#anal").hide();
				$("#airprice").show();
			}

		}

		function loadTrsInfo(idx, depserial, desserial) {
			var A = cities[depserial];
			var B = cities[desserial];
			var thedate = getFormattedDate(routelist[idx].date_in);

			var trstype = "";
			if (routelist[idx].trstype == "X")
				trstype = "";
			else
				trstype = routelist[idx].trstype;

			var is_night_move = routelist[idx].is_night_move;

			$
					.ajax({
						url : "/api/planning/GetTrsRecommS.asp",

						data : {
							trstype : trstype,
							dep : depserial,
							des : desserial,
							thedate : thedate
						},
						dataType : 'json',
						success : function(data) {
							//			$(".cityblock .trsinfo").eq(idx).html(data);

							trstype = data.trstype;

							trstype_txt = "기타";
							if (trstype == "1")
								trstype_txt = "기차";
							if (trstype == "3" || trstype == "5")
								trstype_txt = "항공";
							if (trstype == "2")
								trstype_txt = "버스";
							if (trstype == "4")
								trstype_txt = "페리";
							if (trstype == "X")
								trstype_txt = "선택";

							traveltime = data.traveltime;
							if (!traveltime)
								traveltime = "";

							thtml = '<div style="padding-top:0px;padding-bottom:0px">';

							thtml += '<div style="float:left;width:29px;height:40px;border-right:3px solid #3ad195;">&nbsp;</div>';

							thtml += '<div style="float:left;width:150px;height:40px;padding-top:10px;margin-left:-25px;"><div style="border-radius:3px;display:inline-block;text-align:center;padding-top:2px;padding-bottom:2px;margin-right:3px;width:50px;background:#3ad195;cursor:pointer;" class="div_btnTrsTool" onclick="showTrsTool(\''
									+ depserial
									+ '\',\''
									+ desserial
									+ '\',\''
									+ thedate
									+ '\','
									+ idx
									+ ')"><font style="font-size:9pt;color:#fff" id="trstype_txt_'+idx+'">'
									+ trstype_txt
									+ ' <i class="fa fa-chevron-circle-down"></i></font></div>&nbsp;<font style="font-size:8pt;color:#c0c0c0">'
									+ traveltime + '</font></div>';
							if (is_night_move == "1")
								thtml += '<div style="float:left;width:95px;height:40px;padding-top:10px;text-align:right;font-size:8pt;font-weight:600;color:#ee685a">야간이동</div>';

							thtml += '<div style="clear:both"></div>';
							thtml += '</div>';
							$(".cityblock .trsinfo").eq(idx).html(thtml);

							//			$("#cityblock"+idx+" .trsinfo").html(data);

							//			var txt_cur="만원";
							//			var thedate=$("#thedate").val();

							//	                	$.ajax({
							//	               		     url: '//www.tripgene.com/api/getbestprice.php?thedate='+thedate+'&lang=ko&trstype=rail&dep='+A.serial+'&des='+B.serial,
							//	               		     dataType: 'jsonp',
							//	               		     success: function(data){
							//				if(data!="")
							//					if(data>0)
							//					{
							//						$(".cityblock .trsinfo").eq(idx).find(".check_train").html(data+txt_cur+"~");
							//						$(".cityblock .trsinfo").eq(idx).find(".check_train").attr("href","javascript:trslink('1','"+depserial+"','"+desserial+"','"+thedate+"')");
							//						$(".cityblock .trsinfo").eq(idx).find(".check_train_div").css("background","#e45d44");
							//					}
							//			      }
							//			 });

							//	                	$.ajax({
							//	               		     url: '//www.tripgene.com/api/getbestprice.php?thedate='+thedate+'&lang=ko&trstype=air&dep='+A.serial+'&des='+B.serial,
							//	               		     dataType: 'jsonp',
							//	               		     success: function(data){
							//				if(data!="")
							//					if(data>0)
							//					{
							//						$(".cityblock .trsinfo").eq(idx).find(".check_air").html(data+txt_cur+"~");
							//						$(".cityblock .trsinfo").eq(idx).find(".check_air").attr("href","javascript:trslink('2','"+depserial+"','"+desserial+"','"+thedate+"')");
							//						$(".cityblock .trsinfo").eq(idx).find(".check_air_div").css("background","#e45d44");
							//					}
							//			      }
							//			 });

						}
					});

		}
		function delCity(idx) {
			if (confirm("정말 삭제하시겠습니까?")) {
				$("#cityblock" + idx).remove();
				citylist.splice(idx, 1);

				clearLines();
				routelist.splice(idx, 1);
				redrawMapMarkers();
				reOrder();
				if (idx > 0 && idx < citylist.length) {
					dep = citylist[idx - 1];
					des = citylist[idx];
					loadTrsInfo(idx, dep, des);
				}
				$(".cityblock .trsinfo").eq(0).html('');

				if (citylist.length > 0) {
					lastcity = cities[citylist[citylist.length - 1]];
				} else {
					lastcity = 0;
				}
			}

			updateTerm();
			updateDateInOut();
			//	drawDayList();
			//	reloadCostNPeriod();
			//	getHighlights('');
			//	getAirPrice();
			saveCookie();

		}
		function chgNights(i, nights) {

			$("#cityblock" + i + " .nights").html(nights + '박  <i class="fa fa-angle-down"></i>');

			routelist[i].nights = nights;

			updateDateInOut();
			//	drawDayList();
			redrawMapMarkers();
			updateTerm();

			saveCookie();
			updateDateSilent(i);
		}
		var plannercitylist = ",121011002,121011003,121041001,121021001,121031001,131011001,131041001,131021001,131061001,141051001,141031001,141021001,141041002,111011004,111031001,111021002,111041004,111041006,111041003,111071001,111081001,111061006,111061005,111061008,111011001";
		function createMyMarker(cityname, cityserial, lat, lng, i, night) {
			var zidx = 1000 + i;

			if (i == 0) {
				if (night == 0) {
					icoimg = {
						url : '//www.stubbyplanner.com/img_v13/marker/mycity_night' + night + '_IN.png',
						size : new google.maps.Size(23, 35),
						origin : new google.maps.Point(0, 0),
						anchor : new google.maps.Point(5, 14),
						scaledSize : new google.maps.Size(10, 14)
					};

				} else if (night == 1) {
					icoimg = {
						url : '//www.stubbyplanner.com/img_v13/marker/mycity_night' + night + '_IN.png',
						size : new google.maps.Size(33, 45),
						origin : new google.maps.Point(0, 0),
						anchor : new google.maps.Point(8, 22),
						scaledSize : new google.maps.Size(16, 22)
					};

				} else if (night == 2) {
					icoimg = {
						url : '//www.stubbyplanner.com/img_v13/marker/mycity_night' + night + '_IN.png',
						size : new google.maps.Size(43, 55),
						origin : new google.maps.Point(0, 0),
						anchor : new google.maps.Point(10, 26),
						scaledSize : new google.maps.Size(20, 26)
					};

				} else if (night > 2) {
					icoimg = {
						url : '//www.stubbyplanner.com/img_v13/marker/mycity_night' + night + '_IN.png',
						size : new google.maps.Size(53, 70),
						origin : new google.maps.Point(0, 0),
						anchor : new google.maps.Point(12, 33),
						scaledSize : new google.maps.Size(25, 33)
					};

				}
			}

			else {

				if (night == 0) {
					icoimg = {
						url : '//www.stubbyplanner.com/img_v13/marker/mycity_night' + night + '.png',
						size : new google.maps.Size(23, 23),
						origin : new google.maps.Point(0, 0),
						anchor : new google.maps.Point(5, 10),
						scaledSize : new google.maps.Size(10, 10)
					};

				} else if (night == 1) {
					icoimg = {
						url : '//www.stubbyplanner.com/img_v13/marker/mycity_night' + night + '.png',
						size : new google.maps.Size(33, 33),
						origin : new google.maps.Point(0, 0),
						anchor : new google.maps.Point(8, 16),
						scaledSize : new google.maps.Size(16, 16)
					};

				} else if (night == 2) {
					icoimg = {
						url : '//www.stubbyplanner.com/img_v13/marker/mycity_night' + night + '.png',
						size : new google.maps.Size(43, 43),
						origin : new google.maps.Point(0, 0),
						anchor : new google.maps.Point(10, 20),
						scaledSize : new google.maps.Size(20, 20)
					};

				} else if (night > 2) {
					icoimg = {
						url : '//www.stubbyplanner.com/img_v13/marker/mycity_night' + night + '.png',
						size : new google.maps.Size(53, 53),
						origin : new google.maps.Point(0, 0),
						anchor : new google.maps.Point(12, 25),
						scaledSize : new google.maps.Size(25, 25)
					};

				}

				//icoimg="//www.stubbyplanner.com/img_v13/marker/mycity_night"+night+".png";
			}

			var myLatlng = new google.maps.LatLng(tcity.lat, tcity.lng);
			var marker = new google.maps.Marker({
				icon : icoimg,
				position : myLatlng,
				anchorPoint : new google.maps.Point(0, -13),
				map : map,
				title : tcity.name + '(' + night + '박)',
				zindex : zidx
			});

			myMarkers.push(marker);

			btnGroup = '&nbsp;<select class="daySelector" onchange="chgNights(' + i + ',this.value)"><option>숙박일</option>';

			if (!tcity.slpRates)
				tcity.slpRates = "||||";

			arrSlpRates = tcity.slpRates.split('|');
			if (tcity.recommSlp == '0')
				btnGroup = btnGroup + '<option value="0" selected>무박 ' + arrSlpRates[0] + '%</option>';
			else
				btnGroup = btnGroup + '<option value="0">무박 ' + arrSlpRates[0] + '%</option>';

			for (ii = 1; ii < 8; ii++) {
				if (ii < 5) {
					if (tcity.recommSlp == ii.toString())
						btnGroup = btnGroup + '<option value="'+ii+'" selected>' + ii + '박 ' + arrSlpRates[ii] + '%</option>';
					else
						btnGroup = btnGroup + '<option value="'+ii+'">' + ii + '박 ' + arrSlpRates[ii] + '%</option>';
				} else {
					if (tcity.recommSlp == ii.toString())
						btnGroup = btnGroup + '<option value="'+ii+'" selected>' + ii + '박</option>';
					else
						btnGroup = btnGroup + '<option value="'+ii+'">' + ii + '박</option>';

				}

			}
			btnGroup = btnGroup + '</select>';
			btnGroup2 = '<a class="a_mngSlp" href="javascript:mngSlp(\'' + cityname + '\',\'' + cityserial + '\',' + tcity.recommSlp + ',' + i
					+ ')"><font style="color:#696969;font-size:10pt;font-weight:bold" class="nights">' + tcity.recommSlp
					+ '박  <i class="fa fa-angle-down"></i></font></a>';

			zzhtml = "<div id=\"cityblock"+citylist.length+"\" class=\"cityblock\" style=\"position:relative\">";
			zzhtml += "<p class=\"trsinfo\"></p>";
			zzhtml += "<div class=\"cityinfo\">";

			//			if(i==0)
			//				zzhtml+='<div style="margin-top:10px;margin-left:3px;width:46px;text-align:center;background:gray;height:13px;font-size:8pt;font-family:tahoma;color:#fff">IN</div>';
			//			else
			zzhtml += '<div style="width:29px;border-right:3px solid #3ad195;height:7px;"> </div>';

			zzhtml += "<input type=\"hidden\" class=\"cityserial\" value=\""+tcity.serial+"\">";
			zzhtml += "<div width=\"100%;overflow-x:hidden\">";

			zzhtml += "<div style=\"float:left;width:53px;height:53px;padding-left:7px;background:#fff;padding-top:13px;border-radius:100px;border:3px solid #3ad195;cursor:pointer\"  class=\"div_mngSlp\" onclick=\"mngSlp(\'"
					+ cityname + "\',\'" + cityserial + "\'," + tcity.recommSlp + "," + i + ")\">" + btnGroup2 + "</div>";
			zzhtml += "<div style=\"float:left;width:215px;padding-left:10px;padding-top:7px;\"> ";
			zzhtml += "<div style=\"float:left;width:148px\"><div><font class=\"stubby_s_black\"> "
					+ tcity.name
					+ "</font>&nbsp;<a class=\"btnDel\" href=\"javascript:delCity("
					+ citylist.length
					+ ")\"><font style=\"font-size:9pt;color:#c0c0c0\"><i class=\"fa fa-times-circle\"></i></font></a></div><div class=\"date_in_out\"></div></div>";

			hascityplanner = 0;
			if (plannercitylist.indexOf(cityserial) > -1)
				hascityplanner = 1;

			zzhtml += "<div style=\"float:left;padding-right:5px;width:57px;\">";
			zzhtml += '<div id="cp_'
					+ i
					+ '" style="height:52px;margin-top:-8px;text-align:center;padding-top:3px;padding-bottom:3px;border:1px solid #efefef;background:#fff;border-radius:8px;" onclick="showBucketList(\''
					+ i + '\',\'' + tcity.name + '\',\'' + cityserial + '\',' + hascityplanner
					+ ')"><div><font style="font-size:19pt;color:#3ad195" id="cp_heart_'+i+'">';

			//							zzhtml+='<img src="/img_v14/heart_icon.png" width="45px" style="margin-top:-5px;">';
			if (hascityplanner == 1)
				zzhtml += '<i class="fa fa-calendar-check-o" aria-hidden="true"></i>';
			else
				zzhtml += '<i class="fa fa-info-circle" aria-hidden="true"></i>';

			zzhtml += '</font></div><div style="margin-top:-8px;"><span id="span_schd_cnt_' + i + '" style="font-size:8pt;';
			if (hascityplanner == 0)
				zzhtml += 'display:none;';
			zzhtml += '">0</span></div></div>';
			//	zzhtml+="<div style=\"text-align:right;padding-right:2px;padding-top:2px;\"></div>";

			zzhtml += "</div>";

			zzhtml += "</div>";
			zzhtml += "<div style=\"clear:both\"></div>";

			zzhtml += "</div>";

			zzhtml += '<div style="width:29px;border-right:3px solid #3ad195;height:7px;"> </div>';

			zzhtml += "</div>";
			//		zzhtml+="<div class=\"spotbox\" style=\"padding-left:20px;padding-top:2px;padding-right:20px;text-align:left\"></div>";
			zzhtml += "</div>";

			var idx = i;
			google.maps.event.addListener(marker, 'click', function() {
				if (prv_infowindow)
					prv_infowindow.close();

				infowindow = new google.maps.InfoWindow();

				thtml = '<iframe scrolling="no" width="330px" height="110px"  frameborder="0" src="planner_step1_myinfowindow2.asp?idx=' + idx
						+ '&lang=ko&s=' + cityserial + '"></iframe>';
				infowindow.setContent(thtml);

				google.maps.event.addListener(infowindow, 'closeclick', function() {

				});

				infowindow.open(map, marker);
				prv_infowindow = infowindow;
				getHighlights(cityserial);
			});
			return zzhtml;
		}

		var region_names = [];
		var region_ids = [];
		var region_img_codes = [];
		var recomm_cities_displaying = 0;
		region_ids[0] = "";
		region_names[0] = "TOP50";
		region_img_codes[0] = "top";

		region_ids[1] = "11101";
		region_names[1] = "프랑스";
		region_img_codes[1] = "11101";

		region_ids[2] = "11103";
		region_names[2] = "영국";
		region_img_codes[2] = "11103";

		region_ids[3] = "11104";
		region_names[3] = "이탈리아";
		region_img_codes[3] = "11104";

		region_ids[4] = "11102";
		region_names[4] = "스위스";
		region_img_codes[4] = "11102";

		region_ids[5] = "11106";
		region_names[5] = "독일";
		region_img_codes[5] = "11106";

		region_ids[6] = "11107";
		region_names[6] = "네덜란드";
		region_img_codes[6] = "11107";

		region_ids[7] = "11108";
		region_names[7] = "벨기에";
		region_img_codes[7] = "11108";

		region_ids[8] = "13";
		region_names[8] = "동유럽";
		region_img_codes[8] = "13";

		region_ids[9] = "13106";
		region_names[9] = "크로아티아";
		region_img_codes[9] = "13106";

		region_ids[10] = "12101";
		region_names[10] = "스페인";
		region_img_codes[10] = "12101";

		region_ids[11] = "12102";
		region_names[11] = "포르투갈";
		region_img_codes[11] = "12102";

		region_ids[12] = "12103";
		region_names[12] = "그리스";
		region_img_codes[12] = "12103";

		region_ids[13] = "12104";
		region_names[13] = "터키";
		region_img_codes[13] = "12104";

		region_ids[14] = "14107";
		region_names[14] = "아이슬란드";
		region_img_codes[14] = "14107";

		region_ids[15] = "14104";
		region_names[15] = "노르웨이";
		region_img_codes[15] = "14104";

		region_ids[16] = "14102";
		region_names[16] = "핀란드";
		region_img_codes[16] = "14102";

		region_ids[17] = "14105";
		region_names[17] = "스웨덴";
		region_img_codes[17] = "14105";

		region_ids[18] = "14103";
		region_names[18] = "덴마크";
		region_img_codes[18] = "14103";

		region_ids[19] = "14106";
		region_names[19] = "에스토니아";
		region_img_codes[19] = "14106";

		function showRecommCities(rid) {
			newMapWidth = eval($(window).width());
			newMapHeight = eval($(window).height() - 3);
			$("#div_recomm_cities").css("width", newMapWidth - 283);
			$("#div_recomm_cities").css("height", newMapHeight);
			bucketlist_inside_h = eval(newMapHeight - 100);

			$("#div_recomm_cities").html('<div style="padding-top:50px;text-align:center;">추천도시 로딩중...</div>');
			$("#div_recomm_cities").show();

			if (!trip_id)
				saveCookie(1);

			$
					.ajax({
						url : '/api/planning/bucket_list.asp?trip_id=' + trip_id + '&region_id=' + rid,
						dataType : 'json',
						success : function(data) {
							if (data != "") {
								thtml = '<div style="background:#696969"><div style="float:left;width:85%;font-size:11pt;color:#fff;padding-top:5px;">유럽 추천도시</div><div style="float:left;width:15%;cursor:pointer;text-align:right;padding-right:4px;" onclick="closeRecommCities()"><font style="font-size:23pt;color:#fff"><i class="fa fa-times-circle"></i></font></div><div style="clear:both"></div></div>';

								xxx = '<div style="overflow-x:auto"><div id="submenu" style="margin-top:0px;height:70px;background:#fff;border-bottom:1px solid #efefef;padding-left:3px;padding-right:3px;padding-top:3px;padding-bottom:3px;">';

								for (i = 0; i < 20; i++) {

									xxx += '<div class="region_menu" ';
									if (rid == region_ids[i])
										xxx += ' style="border-bottom:3px solid #2ecc71;background:#f2f2f2"';
									xxx += '><div><a href="javascript:showRecommCities(\'' + region_ids[i] + '\')">';
									xxx += '<img src="/img_v14/ico_' + region_img_codes[i];
									if (rid == region_ids[i])
										xxx += '_2';

									xxx += '.png"></a></div><div class="region_title">' + region_names[i] + '</div></div>';

								}
								xxx = xxx + '</div></div>';

								thtml += xxx;
								thtml += '<div style="height:'+bucketlist_inside_h+'px;padding-left:15px;padding-top:10px;padding-right:15px;overflow-y:auto;">';
								for (i = 0; i < data.bucket_group.length; i++) {
									thtml += '<div style="clear:both"></div><div style="margin-top:20px;padding-bottom:7px;font-size:12pt;color:#696969">'
											+ data.bucket_group[i].title + '</div>';
									for (j = 0; j < data.bucket_group[i].bucket_list.length; j++) {

										t_linkurl = "index_exp.asp?expserial=" + data.bucket_group[i].bucket_list[j].bucket_id;
										t_select = 'city_select(\'' + data.bucket_group[i].bucket_list[j].bucket_id + '\')';

										thtml += '<div style="float:left;margin-bottom:17px;margin-top:0px;width:155px;cursor:pointer;" class="carousel-cell">';
										thtml += '<div style="margin-left:5px;margin-right:5px;">';
										thtml += '<div style="">';

										thtml += '<div style="position:relative;">';
										thtml += '<a href="javascript:'+t_select+'"><img src="'
												+ data.bucket_group[i].bucket_list[j].img_url.replace("_m", "")
												+ '"  style="border-radius:3px;width:145px;" onerror="this.src=\'/img_v12/img_er.gif\'"></a>';

										if (data.bucket_group[i].bucket_list[j].is_selected) {
											thtml += '<div id="bucket_bg_'+data.bucket_group[i].bucket_list[j].bucket_id+'"  class="rc_bg_selected" style="border-radius:5px;position:absolute;bottom:0px;right:0px;">&nbsp;</div>';
											thtml += '<div  id="bucket_check_'+data.bucket_group[i].bucket_list[j].bucket_id+'" class="rc_selected selected_flag" onclick="'+t_select+'"><font style="color:#fff"><i class="fa fa-star"></i></font></a></div>';
										} else {
											thtml += '<div id="bucket_bg_'+data.bucket_group[i].bucket_list[j].bucket_id+'"  class="rc_bg" style="border-radius:5px;position:absolute;bottom:0px;right:0px;;">&nbsp;</div>';
											thtml += '<div  id="bucket_check_'+data.bucket_group[i].bucket_list[j].bucket_id+'" class="rc" onclick="'+t_select+'"><i class="fa fa-plus-circle"></i></a></div>';
										}
										thtml += '<div style="position:absolute;bottom:3px;right:10px;"><font style="color:#fff;font-size:8pt;"><i class="fa fa-star" aria-hidden="true"></i> '
												+ data.bucket_group[i].bucket_list[j].planner_cnt + '</font></div>';

										thtml += '</div>';

										thtml += '<div style="padding-top:5px;padding-bottom:5px;">';
										thtml += '<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:left;color:#fff;font-size:9pt;" ><a href="javascript:openCityDetail(\''
												+ data.bucket_group[i].bucket_list[j].bucket_id
												+ '\',\''
												+ data.bucket_group[i].bucket_list[j].title
												+ '\')" style="color:#696969">' + data.bucket_group[i].bucket_list[j].title + '</a>';
										thtml += ' <a href="javascript:openCityDetail(\'' + data.bucket_group[i].bucket_list[j].bucket_id + '\',\''
												+ data.bucket_group[i].bucket_list[j].title
												+ '\')"><font style="font-size:10pt;color:#696969"><i class="fa fa-info-circle"></i></font></a>';
										thtml += '</h5>';
										thtml += '<p style="padding-left:3px;margin-top:2px;font-size:8pt;text-align:left"><a href="javascript:openCityDetail(\''
												+ data.bucket_group[i].bucket_list[j].bucket_id
												+ '\',\''
												+ data.bucket_group[i].bucket_list[j].title
												+ '\')" style="color:#a9a9a9">' + data.bucket_group[i].bucket_list[j].description + '</a></p>';
										thtml += '</div>';

										thtml += '</div></div></div>';

										if ((j + 1) % 6 == 0)
											thtml += '<div style="clear:both"></div>';

									}
								}
								thtml += '</div>';
								$("#div_recomm_cities").html(thtml);
								$("#div_recomm_cities").show();
							}
						}
					});
			recomm_cities_displaying = 1;

		}
		function closeRecommCities() {
			$("#div_recomm_cities").hide();
			recomm_cities_displaying = 0;
		}
		function showBucketList(idx, cityname, city_id, hascityplanner) {

			if (!trip_id)
				saveCookie(1);

			if (recomm_cities_displaying == 1)
				closeRecommCities();

			if (cur_r_id != "") {
				$("#cp_" + cur_r_id).css("background", "#fff");
				$("#cp_" + cur_r_id).css("color", "#696969");
				$("#cp_heart_" + cur_r_id).css("color", "#3ad195");
			}
			cur_r_id = idx;
			$("#cp_" + idx).css("background", "#ee685a");
			$("#cp_" + idx).css("color", "#fff");
			$("#cp_heart_" + cur_r_id).css("color", "#fff");

			newMapWidth = eval($(window).width());
			newMapHeight = eval($(window).height() - 3);
			$("#div_bucketlist").css("width", newMapWidth - 273);
			$("#div_bucketlist").css("height", newMapHeight);
			bucketlist_inside_h = eval(newMapHeight - 100);

			if (hascityplanner == 0) {
				thtml = '<div style="background:#ee685a"><div style="float:left;width:85%;font-size:11pt;color:#fff;padding-top:5px;"><b>'
						+ cityname
						+ '</b> 여행정보</div><div style="float:left;width:15%;cursor:pointer;text-align:right;padding-right:4px;" onclick="closeBucketlist()"><font style="font-size:23pt;color:#fff"><i class="fa fa-times-circle"></i></font></div><div style="clear:both"></div></div>';
				thtml += '<iframe frameborder="0" width="100%" height="' + (newMapHeight - 50)
						+ 'px" src="/bucket_detail.asp?fromplanner=1&cityserial=' + city_id + '"></iframe>';
				$("#div_bucketlist").html(thtml);
				$("#div_bucketlist").show();
			} else {

				$("#div_bucketlist").html('<div style="padding-top:50px;text-align:center;">' + cityname + ' 경험 로딩중...</div>');
				$("#div_bucketlist").show();

				$
						.ajax({
							url : '/api/planning/bucket_list.asp?trip_id=' + trip_id + '&region_id=' + city_id,
							dataType : 'json',
							success : function(data) {
								if (data != "") {
									thtml = '<div style="background:#ee685a"><div style="float:left;width:85%;font-size:11pt;color:#fff;padding-top:5px;"><b>'
											+ cityname
											+ '</b>에서 경험하고 싶은 것들을 선택해 보세요.</div><div style="float:left;width:15%;cursor:pointer;text-align:right;padding-right:4px;" onclick="closeBucketlist()"><font style="font-size:23pt;color:#fff"><i class="fa fa-times-circle"></i></font></div><div style="clear:both"></div></div>';
									thtml += '<div style="height:'+bucketlist_inside_h+'px;padding-left:15px;padding-top:10px;padding-right:15px;overflow-y:auto;">';
									for (i = 0; i < data.bucket_group.length; i++) {
										thtml += '<div style="clear:both"></div><div style="margin-top:20px;padding-bottom:7px;font-size:12pt;color:#696969">'
												+ data.bucket_group[i].title + '</div>';
										for (j = 0; j < data.bucket_group[i].bucket_list.length; j++) {

											t_linkurl = "index_exp.asp?expserial=" + data.bucket_group[i].bucket_list[j].bucket_id;
											t_select = 'bucket_select(\'' + data.bucket_group[i].bucket_list[j].bucket_id + '\')';

											thtml += '<div style="float:left;margin-bottom:17px;margin-top:0px;width:175px;cursor:pointer;" class="carousel-cell">';
											thtml += '<div style="margin-left:5px;margin-right:5px;">';
											thtml += '<div style="height:210px;overflow:hidden">';

											thtml += '<div style="position:relative;">';
											thtml += '<a href="javascript:'+t_select+'"><img src="'+data.bucket_group[i].bucket_list[j].img_url+'"  style="border-radius:5px;width:165px;height:165px" onerror="this.src=\'/img_v12/img_er.gif\'"></a>';

											if (data.bucket_group[i].bucket_list[j].is_selected) {
												thtml += '<div id="bucket_bg_'+data.bucket_group[i].bucket_list[j].bucket_id+'"  class="bk_bg_selected" style="border-radius:5px;position:absolute;bottom:0px;right:0px;">&nbsp;</div>';
												thtml += '<div  id="bucket_check_'+data.bucket_group[i].bucket_list[j].bucket_id+'" class="bk_selected selected_flag" onclick="'+t_select+'"><font style="color:#ee685a"><i class="fa fa-check-circle"></i></font></a></div>';
											} else {
												thtml += '<div id="bucket_bg_'+data.bucket_group[i].bucket_list[j].bucket_id+'"  class="bk_bg" style="border-radius:5px;position:absolute;bottom:0px;right:0px;;">&nbsp;</div>';
												thtml += '<div  id="bucket_check_'+data.bucket_group[i].bucket_list[j].bucket_id+'" class="bk" onclick="'+t_select+'"><i class="fa fa-check-circle"></i></a></div>';
											}
											thtml += '<div style="position:absolute;bottom:3px;right:10px;"><font style="color:#fff;font-size:8pt;"><i class="fa fa-star" aria-hidden="true"></i> '
													+ data.bucket_group[i].bucket_list[j].planner_cnt + '</font></div>';

											thtml += '</div>';

											schd_flag = "";
											if (data.bucket_group[i].bucket_list[j].schd_flag)
												schd_flag = '<font style="color:#ee685a"><i class="fa fa-calendar"></i> </font>';

											thtml += '<div style="position:relative;">';
											thtml += '<div style="width:80%;float:left;padding-top:5px;padding-bottom:5px;">';
											thtml += '<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:left;color:#fff;font-size:9pt;" >'
													+ schd_flag
													+ '<a href="javascript:openBucketDetail(\''
													+ data.bucket_group[i].bucket_list[j].bucket_id
													+ '\',\''
													+ data.bucket_group[i].bucket_list[j].title
													+ '\')" style="color:#696969">'
													+ data.bucket_group[i].bucket_list[j].title + '</a></h5>';
											thtml += '<p style="padding-left:3px;margin-top:2px;font-size:8pt;text-align:left"><a href="javascript:openBucketDetail(\''
													+ data.bucket_group[i].bucket_list[j].bucket_id
													+ '\',\''
													+ data.bucket_group[i].bucket_list[j].title
													+ '\')" style="color:#a9a9a9">'
													+ data.bucket_group[i].bucket_list[j].description + '</a></p>';
											thtml += '</div>';
											thtml += '<div style="width:20%;float:left;padding-left:0px;margin-top:0px;padding-top:5px;">';
											thtml += '<div onclick="openBucketDetail(\'' + data.bucket_group[i].bucket_list[j].bucket_id + '\',\''
													+ data.bucket_group[i].bucket_list[j].title
													+ '\')" style="text-align:center;margin-top:0px;padding-top:10px;line-height:100%">';
											thtml += '<font style="font-size:17pt;color:#696969"><i class="fa fa-info-circle"></i></font>';
											thtml += '</div>';

											thtml += '</div>';
											thtml += '<div style="clear:both"></div>';
											thtml += '</div>';

											thtml += '</div></div></div>';

										}
									}
									thtml += '</div>';
									$("#div_bucketlist").html(thtml);
									$("#div_bucketlist").show();
								}
							}
						});
			}
		}
		var cur_r_id = "";
		function city_select(id) {
			if ($("#bucket_check_" + id).hasClass("selected_flag")) {

				alert("삭제는 왼쪽의 루트 리스트에서 가능합니다.");

				return;
				$("#bucket_bg_" + id).removeClass("rc_bg");
				$("#bucket_bg_" + id).addClass("rc_bg_selected");

				$("#bucket_check_" + id).removeClass("rc");
				$("#bucket_check_" + id).addClass("rc_selected");
				$("#bucket_check_" + id).removeClass("selected_flag")

				$("#bucket_check_" + id).html('<i class="fa fa-check-circle"></i>');

				setTimeout(function() {

					$("#bucket_bg_" + id).removeClass("rc_bg_selected");
					$("#bucket_bg_" + id).addClass("rc_bg");

					$("#bucket_check_" + id).addClass("rc");
					$("#bucket_check_" + id).removeClass("rc_selected");
				}, 1000);

			} else {
				$("#bucket_bg_" + id).removeClass("rc_bg");
				$("#bucket_bg_" + id).addClass("rc_bg_selected");

				$("#bucket_check_" + id).removeClass("rc");
				$("#bucket_check_" + id).addClass("rc_selected");
				$("#bucket_check_" + id).addClass("selected_flag")

				$("#bucket_check_" + id).html('<font style="color:#fff"><i class="fa fa-star"></i></font>');

				addCitySimple(id);

			}

		}
		function bucket_select(id) {
			if ($("#bucket_check_" + id).hasClass("selected_flag")) {
				$("#bucket_bg_" + id).removeClass("bk_bg");
				$("#bucket_bg_" + id).addClass("bk_bg_selected");

				$("#bucket_check_" + id).removeClass("bk");
				$("#bucket_check_" + id).addClass("bk_selected");
				$("#bucket_check_" + id).removeClass("selected_flag")

				$("#bucket_check_" + id).html('<i class="fa fa-check-circle"></i>');

				//		setTimeout(function(){

				$("#bucket_bg_" + id).removeClass("bk_bg_selected");
				$("#bucket_bg_" + id).addClass("bk_bg");

				$("#bucket_check_" + id).addClass("bk");
				$("#bucket_check_" + id).removeClass("bk_selected");
				//		}, 1000);

				if (cur_r_id != "")
					delSchd(cur_r_id, "B" + id);
			} else {
				$("#bucket_bg_" + id).removeClass("bk_bg");
				$("#bucket_bg_" + id).addClass("bk_bg_selected");

				$("#bucket_check_" + id).removeClass("bk");
				$("#bucket_check_" + id).addClass("bk_selected");
				$("#bucket_check_" + id).addClass("selected_flag")

				$("#bucket_check_" + id).html('<font style="color:#ee685a"><i class="fa fa-check-circle"></i></font>');

				//		setTimeout(function(){
				//
				//			$("#bucket_bg_"+id).removeClass("bk_bg_selected");
				//			$("#bucket_bg_"+id).addClass("bk_bg");
				//
				//			$("#bucket_check_"+id).addClass("bk");
				//			$("#bucket_check_"+id).removeClass("bk_selected");
				//		}, 1000);

				//		$("#bucket_check_"+id).removeClass("bk");
				//		$("#bucket_check_"+id).addClass("bk_selected");
				//		$("#bucket_check_"+id).html('<font class="#ee685a"><i class="fa fa-check-circle"></i></font>');
				//		$("#bucket_bg_"+id).removeClass("bk_bg");
				//		$("#bucket_bg_"+id).addClass("bk_bg_selected");

				if (cur_r_id != "")
					addSchd(cur_r_id, "B" + id);

			}

		}

		function closeBucketlist() {

			$("#div_bucketlist").hide();
			$("#cp_" + cur_r_id).css("background", "#fff");
			$("#cp_" + cur_r_id).css("color", "#696969");
			$("#cp_heart_" + cur_r_id).css("color", "#3ad195");
			cur_r_id = "";
		}

		function showLinkInModal(tlink) {

			document.getElementById("if_info").src = tlink;

			$('#modal-info').modal({
				keyboard : true,
				backdrop : 'static',
				show : true
			});
		}
		function closeModal() {
			$("#modal-info").hide();
		}

		var curtrstype = 1;
		var curdep;
		var curdes;
		var curthedate;
		function setTrsToolTab(i, trstype) {
			$("#div_trstype_" + curtrstype).removeClass("trs_selector_selected");
			$("#div_trstype_" + curtrstype).addClass("trs_selector");
			curtrstype = trstype;
			$("#div_trstype_" + curtrstype).removeClass("trs_selector");
			$("#div_trstype_" + curtrstype).addClass("trs_selector_selected");

			chgTrsType(i, trstype);

		}
		function openTrsLink() {
			thedateTxt = curthedate.replace("-", "");
			thedateTxt = thedateTxt.replace("-", "");
			thedateTxt = thedateTxt.replace("-", "");
			if (curtrstype == 5)
				curtrstype = 3;
			window.open("/plan/trs_deeplink.asp?lang=ko&date_all=" + thedateTxt + "&TRSType=" + curtrstype + "&depserial=" + curdep + "&desserial="
					+ curdes);
		}
		function showTrsTool(depid, desid, xthedate, rt_i) {
			depname = routelist[rt_i - 1].name;
			desname = routelist[rt_i].name;

			trstype = routelist[rt_i].trstype;
			is_night_move = routelist[rt_i].is_night_move;
			if (trstype == "3")
				trstype = "5";

			curdep = depid;
			curdes = desid;
			curthedate = xthedate;
			var xurl = "/api/planning/GetTrsRecommV3.asp?dep=" + depid + "&des=" + desid + "&thedate=" + xthedate;

			$
					.ajax({
						url : xurl,
						dataType : 'json',
						data : {},
						success : function(data) {
							if (data != "") {

								thtml = '';
								thtml += '<div>';
								thtml += '<div class="trs_selector_container"><div id="div_trstype_'
										+ data.trslist[0].trstype
										+ '" onclick="setTrsToolTab('
										+ rt_i
										+ ','
										+ data.trslist[0].trstype
										+ ')" class="trs_selector"><font style="font-size:17pt"><i class="fa fa-train"></i></font><br><b>기차</b><div style="font-size:8pt;">'
										+ data.trslist[0].rate
										+ '%</div><div style="font-size:8pt;padding-top:4px;">'
										+ data.trslist[0].duration
										+ '</div></div><div style="margin-left:15px;margin-right:15px;margin-top:5px;border-radius:2px;background:#3ad195;color:#fff;font-size:9pt;padding-top:3px;padding-bottom:3px;cursor:pointer" onclick="javascript:trslink(\'1\',\''
										+ depid + '\',\'' + desid + '\',\'' + xthedate + '\')">예약/시간표</div></div>';
								thtml += '<div class="trs_selector_container"><div id="div_trstype_'
										+ data.trslist[1].trstype
										+ '" onclick="setTrsToolTab('
										+ rt_i
										+ ','
										+ data.trslist[1].trstype
										+ ')" class="trs_selector"><font style="font-size:17pt"><i class="fa fa-plane"></i></font><br><b>항공</b><div style="font-size:8pt;">'
										+ data.trslist[1].rate
										+ '%</div><div style="font-size:8pt;padding-top:4px;">'
										+ data.trslist[1].duration
										+ '</div></div><div style="margin-left:15px;margin-right:15px;margin-top:5px;border-radius:2px;background:#3ad195;color:#fff;font-size:9pt;padding-top:3px;padding-bottom:3px;cursor:pointer" onclick="javascript:trslink(\'3\',\''
										+ depid + '\',\'' + desid + '\',\'' + xthedate + '\')">예약/시간표</div></div>';
								thtml += '<div class="trs_selector_container"><div id="div_trstype_'
										+ data.trslist[2].trstype
										+ '" onclick="setTrsToolTab('
										+ rt_i
										+ ','
										+ data.trslist[2].trstype
										+ ')" class="trs_selector"><font style="font-size:17pt"><i class="fa fa-bus"></i></font><br><b>버스</b><div style="font-size:8pt;">'
										+ data.trslist[2].rate
										+ '%</div><div style="font-size:8pt;padding-top:4px;">'
										+ data.trslist[2].duration
										+ '</div></div><div style="margin-left:15px;margin-right:15px;margin-top:5px;border-radius:2px;background:#3ad195;color:#fff;font-size:9pt;padding-top:3px;padding-bottom:3px;cursor:pointer" onclick="javascript:trslink(\'2\',\''
										+ depid + '\',\'' + desid + '\',\'' + xthedate + '\')">예약/시간표</div></div>';
								thtml += '<div class="trs_selector_container"><div id="div_trstype_'
										+ data.trslist[3].trstype
										+ '" onclick="setTrsToolTab('
										+ rt_i
										+ ','
										+ data.trslist[3].trstype
										+ ')" class="trs_selector"><font style="font-size:17pt"><i class="fa fa-ship"></i></font><br><b>페리</b><div style="font-size:8pt;">'
										+ data.trslist[3].rate + '%</div><div style="font-size:8pt;padding-top:4px;">' + data.trslist[3].duration
										+ '</div></div></div>';
								thtml += '<div class="trs_selector_container"><div id="div_trstype_'
										+ data.trslist[4].trstype
										+ '" onclick="setTrsToolTab('
										+ rt_i
										+ ','
										+ data.trslist[4].trstype
										+ ')" class="trs_selector"><font style="font-size:17pt"><i class="fa fa-question"></i></font><br><b>기타</b><div style="font-size:8pt;">'
										+ data.trslist[4].rate + '%</div><div style="font-size:8pt;padding-top:4px;">' + data.trslist[4].duration
										+ '</div></div></div>';
								thtml += '<div style="clear:both"></div></div>';

								thtml += '<div style="margin-bottom:10px;margin-top:10px;padding-top:5px;padding-bottom:5px;padding-left:20%;padding-right:20%">';

								thtml += '<div>';
								if (is_night_move == "1") {
									x1_class = "nightMoveTab";
									x2_class = "nightMoveTabSelected";
								} else {
									x1_class = "nightMoveTabSelected";
									x2_class = "nightMoveTab";
								}

								thtml += '<div id="nightMoveTab0" class="' + x1_class
										+ '" style="border-radius:20px 0px 0px 20px;" onclick="selNightMoveTab(\'0\',' + rt_i
										+ ')" ><i class="fa fa-check-square-o" aria-hidden="true"></i> 주간이동</div>';
								thtml += '<div id="nightMoveTab1" class="' + x2_class
										+ '"  style="border-radius:0px 20px 20px 0px;" onclick="selNightMoveTab(\'1\',' + rt_i
										+ ')" >야간이동</div></div>';

								thtml += '<div style="clear:both"></div></div>';

								thtml += '<div   id="menu_trsHistory" onclick="showTrsHistory()" class="tabMenuSelected" style="margin-left:5%;">최근 예약기록</div>';
								thtml += '<div id="menu_trsInfo"  onclick="showTrsInfo()" class="tabMenu" style="margin-right:5%;">관련지식</div><div style="clear:both"></div>';
								thtml += '<div  id="trsInfo" style="display:none;line-height:190%;border-radius:5px;font-size:9pt;color:#000;text-align:left;background:#fff;height:350px;overflow-y:auto;border:3px solid #A5A5Af;padding-bottom:5px;padding-top:15px;padding-left:15px;padding-right:15px;">'
										+ data.trsdesc + '</div>';
								thtml += '<div id="trsHistory" style="line-height:190%;border-radius:5px;font-size:9pt;color:#000;text-align:left;background:#fff;height:350px;overflow-y:auto;border:3px solid #A5A5Af;padding-bottom:5px;padding-top:15px;padding-left:15px;padding-right:15px;">';

								for (i = 0; i < data.history.length; i++) {
									thtml += '<div style="float:left;width;50%;">';
									thtml += '<div style="float:left;width:45px;"><img style="border-radius:50px;" src="'+data.history[i].user_img+'" width="40px" onerror="this.src=\'//www.stubbyplanner.com/img_v6/img_pfnull.gif\'"></div>';
									thtml += '<div style="float:left;width:220px;">';
									thtml += '<div><b>' + data.history[i].title + '</b> ' + data.history[i].cost_txt + '</div>';
									thtml += '<div>출발: ' + data.history[i].dep + '</div>';
									thtml += '<div>도착 : ' + data.history[i].des + '</div>';
									thtml += '<div>' + data.history[i].time_txt + '</div>';
									thtml += '</div>';
									thtml += '<div style="clear:both"></div></div>';
									if (i % 2 == 1)
										thtml += '<div style="clear:both"></div><hr>';
								}
								thtml += '</div>';
								xtitle = depname + "~" + desname + "  교통편선택";
								$("#my_modal_title").html(xtitle);

								$("#my_modal_desc").html(thtml);
								if (trstype != 0) {
									setTrsToolTab(rt_i, trstype);
								} else {
									setTrsToolTab(rt_i, 1);
								}
								openMyModal();
							}
						}
					});

		}
		function selNightMoveTab(id_idx, rt_i) {
			if (id_idx == 1) {
				$("#nightMoveTab0").removeClass("nightMoveTabSelected");
				$("#nightMoveTab0").addClass("nightMoveTab");

				$("#nightMoveTab1").removeClass("nightMoveTab");
				$("#nightMoveTab1").addClass("nightMoveTabSelected");

			} else {
				$("#nightMoveTab1").removeClass("nightMoveTabSelected");
				$("#nightMoveTab1").addClass("nightMoveTab");

				$("#nightMoveTab0").removeClass("nightMoveTab");
				$("#nightMoveTab0").addClass("nightMoveTabSelected");

			}
			routelist[rt_i].is_night_move = id_idx;
			updateDateInOut();

			redrawMapMarkers();
			dep = routelist[rt_i - 1].serial;
			des = routelist[rt_i].serial;
			loadTrsInfo(rt_i, dep, des);
			updateTerm();

			saveCookie();
		}
		function showTrsHistory() {
			$("#trsInfo").hide();
			$("#trsHistory").show();

			$("#menu_trsInfo").removeClass("tabMenuSelected");
			$("#menu_trsInfo").addClass("tabMenu");

			$("#menu_trsHistory").addClass("tabMenuSelected");
			$("#menu_trsHistory").removeClass("tabMenu");
		}
		function showTrsInfo() {
			$("#trsHistory").hide();
			$("#trsInfo").show();

			$("#menu_trsInfo").addClass("tabMenuSelected");
			$("#menu_trsInfo").removeClass("tabMenu");
			$("#menu_trsHistory").removeClass("tabMenuSelected");
			$("#menu_trsHistory").addClass("tabMenu");
		}

		function chgTrsType(i, trstype) {
			routelist[i].trstype = trstype;
			saveCookie();
			redrawMapMarkers();
			depserial = routelist[i - 1].cityserial;
			desserial = routelist[i].cityserial;
			loadTrsInfo(i, depserial, desserial);

			//showRoute(0);

		}
		function addCitySimple(serial) {

			$.ajax({
				url : '/api/planning/getcityinfo.asp?cityserial=' + serial,
				dataType : 'json',
				async : false,
				success : function(data) {
					if (data != "") {
						addCity(data.city.cityname, serial, data.city.lat, data.city.lng, data.city.nights, data.city.slpRates);
					}
				}
			});

		}
		function tAddCityBase(cityname, cityserial, lat, lng, recommSlp, is_night_move, slpRates) {

			tcity = new City(cityname, cityserial, lat, lng, recommSlp, is_night_move, slpRates);

			cities[cityserial] = tcity;

			var thtml = createMyMarker(cityname, cityserial, lat, lng, citylist.length, recommSlp);
			//	if(citylist.length>=0)
			//		thtml=thtml+'<div>'+eval(routelist[citylist.length].date_in.getMonth()+1)+'월 '+routelist[citylist.length].date_in.getDate()+'일~'+eval(routelist[citylist.length].date_out.getMonth()+1)+'월 '+routelist[citylist.length].date_out.getDate()+'일</div>';

			if (myMarkers.length == 1) {
				$("#cityroute").html(thtml);
				$("#btnStart").css("background", "#ee685a");
			} else {
				$("#cityroute").append(thtml);
			}

			night = recommSlp;
			if (myMarkers.length > 1) {
				var icoimg;
				if (night == 0) {
					icoimg = {
						url : '//www.stubbyplanner.com/img_v13/marker/mycity_night' + night + '.png',
						size : new google.maps.Size(23, 23),
						origin : new google.maps.Point(0, 0),
						anchor : new google.maps.Point(5, 10),
						scaledSize : new google.maps.Size(10, 10)
					};

				} else if (night == 1) {
					icoimg = {
						url : '//www.stubbyplanner.com/img_v13/marker/mycity_night' + night + '.png',
						size : new google.maps.Size(33, 33),
						origin : new google.maps.Point(0, 0),
						anchor : new google.maps.Point(8, 16),
						scaledSize : new google.maps.Size(16, 16)
					};

				} else if (night == 2) {
					icoimg = {
						url : '//www.stubbyplanner.com/img_v13/marker/mycity_night' + night + '.png',
						size : new google.maps.Size(43, 43),
						origin : new google.maps.Point(0, 0),
						anchor : new google.maps.Point(10, 20),
						scaledSize : new google.maps.Size(20, 20)
					};

				} else if (night > 2) {
					icoimg = {
						url : '//www.stubbyplanner.com/img_v13/marker/mycity_night' + night + '.png',
						size : new google.maps.Size(53, 53),
						origin : new google.maps.Point(0, 0),
						anchor : new google.maps.Point(12, 25),
						scaledSize : new google.maps.Size(25, 25)
					};

				}
				myMarkers[myMarkers.length - 1].setIcon(icoimg);
			}
			//myMarkers[myMarkers.length-2].setIcon('//www.stubbyplanner.com/img_v8/marker.png');

			if (myMarkers.length == 1) {
				var icoimg;
				if (night == 0) {
					icoimg = {
						url : '//www.stubbyplanner.com/img_v13/marker/mycity_night' + night + '_IN.png',
						size : new google.maps.Size(23, 35),
						origin : new google.maps.Point(0, 0),
						anchor : new google.maps.Point(5, 14),
						scaledSize : new google.maps.Size(10, 14)
					};

				} else if (night == 1) {
					icoimg = {
						url : '//www.stubbyplanner.com/img_v13/marker/mycity_night' + night + '_IN.png',
						size : new google.maps.Size(33, 45),
						origin : new google.maps.Point(0, 0),
						anchor : new google.maps.Point(8, 22),
						scaledSize : new google.maps.Size(16, 22)
					};

				} else if (night == 2) {
					icoimg = {
						url : '//www.stubbyplanner.com/img_v13/marker/mycity_night' + night + '_IN.png',
						size : new google.maps.Size(43, 55),
						origin : new google.maps.Point(0, 0),
						anchor : new google.maps.Point(10, 26),
						scaledSize : new google.maps.Size(20, 26)
					};

				} else if (night > 2) {
					icoimg = {
						url : '//www.stubbyplanner.com/img_v13/marker/mycity_night' + night + '_IN.png',
						size : new google.maps.Size(53, 70),
						origin : new google.maps.Point(0, 0),
						anchor : new google.maps.Point(12, 33),
						scaledSize : new google.maps.Size(25, 33)
					};

				}
				myMarkers[myMarkers.length - 1].setIcon(icoimg);
				//	myMarkers[myMarkers.length-2].setIcon('//www.stubbyplanner.com/img_v8/marker_in.png');	
			}
			//redrawMapMarkers();

			XstrokeColor = "#696969";
			if (is_night_move == 1)
				XstrokeColor = "#ee685a";

			if (lastcity != 0) {
				var lineCoordinates = [ new google.maps.LatLng(lastcity.lat, lastcity.lng), new google.maps.LatLng(tcity.lat, tcity.lng) ];
				var lineSymbol = {
					path : google.maps.SymbolPath.FORWARD_CLOSED_ARROW
				};

				var linePath = new google.maps.Polyline({
					path : lineCoordinates,
					icons : [ {
						icon : lineSymbol,
						offset : '100%'
					} ],
					strokeColor : XstrokeColor,
					strokeOpacity : 0.9,
					strokeWeight : 2
				});
				linePath.setMap(map);
				lines[lines.length] = linePath;

				var idx = citylist.length;

				//		var avglat=(eval(lastcity.lat)+eval(tcity.lat))/2;
				//		var avglng=(eval(lastcity.lng)+eval(tcity.lng))/2;

				//		var ximgurl="//www.stubbyplanner.com/img_v8/ico_train.png";
				//		var xtitle = lastcity.name+'~'+tcity.name+' 구간';
				//		var xzIdx= 1;
				//		var xposn = new google.maps.LatLng(avglat,avglng);
				//		var xmarker = createMarker(xposn,lastcity.serial+'_'+tcity.serial, xtitle, ximgurl,xzIdx);
				//		xmarker.setMap(map);

				loadTrsInfo(idx, lastcity.serial, tcity.serial);
			}
			citylist[citylist.length] = cityserial;
			lastcity = tcity;

			var tidx = citylist.length - 1;

		}
		function addCityBase(cityname, cityserial, lat, lng, recommSlp, is_night_move, slpRates) {
			tAddCityBase(cityname, cityserial, lat, lng, recommSlp, is_night_move, slpRates);
			getNextCities(lastcity.serial);
			if (prv_infowindow) {
				prv_infowindow.close();
				prv_infowindow = null;
			}

			$(".cityblock .cityinfo").bind(
					"click",
					function() {
						var se = $(this).children(".cityserial").val();
						var idx = $(this).parent().attr("id").replace(/cityblock/g, '');
						;

						if (prv_infowindow)
							prv_infowindow.close();

						infowindow = new google.maps.InfoWindow();

						thtml = '<iframe scrolling="no" width="330px" height="110px"  frameborder="0" src="planner_step1_myinfowindow2.asp?idx='
								+ idx + '&lang=ko&s=' + se + '"></iframe>';
						infowindow.setContent(thtml);

						getHighlights(se);
						infowindow.open(map, myMarkers[idx]);

						prv_infowindow = infowindow;

					});

			$(".cityblock .cityinfo").bind("mouseover", function() {

				//		$(this).children("div").children("div").children("#img_move").show();

			});

			$(".cityblock .cityinfo").bind("mouseout", function() {
				//		$(this).children("div").children("div").children("#img_move").hide();
				//		$(this).animate({
				//			  opacity: "1"
				//		}, "fast");
			});

			var scrollBottom = eval($("#cityroute")[0].scrollHeight);
			$("#cityroute").scrollTop(scrollBottom);
			$("#autoc").val('');

			getAirPrice();
			reloadCostNPeriod();

			var se = cityserial;
			if (se.substring(0, 2) == "11" || se.substring(0, 2) == "12" || se.substring(0, 2) == "13" || se.substring(0, 2) == "14")
				getHighlights('1[1-4]');
			else if (se.substring(0, 5) == "16102")
				getHighlights(se.substring(0, 5));
			else
				getHighlights(se.substring(0, 2));

			if (isfirst) {
				var i, xlat, xlng;
				var bounds = new google.maps.LatLngBounds();
				for (i = 0; i < citylist.length; i++) {
					var tcity = cities[citylist[i]];
					tLatlng = new google.maps.LatLng(tcity.lat, tcity.lng);
					bounds.extend(tLatlng);
					xlat = tcity.lat;
					xlng = tcity.lng;
				}
				if (i > 1)
					map.fitBounds(bounds);
				if (i == 1) {
					moveTo(xlat, xlng);
					map.setZoom(7);
				}

				isfirst = false;
			} else {
				moveTo(lat, lng);
			}
		}
		function addSpotBase(cityserial, cityname, spotname, spotserial, lat, lng, imgurl) {

			xxx = cityserial;
			tcity = cities[xxx];
			if (!tcity)
				addCity(cityname, cityserial, lat, lng, '', '');
			tcity = cities[xxx];
			cities[xxx].spots[tcity.spots.length] = new Spot(spotname, spotserial, lat, lng, imgurl);

			$(".cityblock").each(function(idx) {
				if ($(this).find(".cityserial").val() == xxx) {
					//			$(this).find(".spotbox").append("<div style='height:30px;overflow:hidden;margin-right:1px;float:left;position:relative;'><a href='javascript:moveToCityMap(\""+idx+"\")' title='"+spotname+"'><img   src='"+imgurl+"' width='34px'/></a></div>");

					//			$(this).find(".spotbox").show();
				}
			});
		}
		function addCity(cityname, cityserial, lat, lng, recommSlp, slpRates) {

			if (routelist.length == 0) {
				date_in = new Date($("#thedate").val());
				date_out = new Date(date_in.getFullYear(), date_in.getMonth(), date_in.getDate() + eval(recommSlp));
			} else {
				startdate = new Date($("#thedate").val());

				var arr_nextday = 0;
				if ($("#arr_nextday").is(":checked"))
					arr_nextday = 1;

				term = arr_nextday;
				for (i = 0; i < routelist.length; i++) {
					term = term + eval(routelist[i].nights);
				}

				date_in = new Date(startdate.getFullYear(), startdate.getMonth(), startdate.getDate() + eval(term));
				date_out = new Date(date_in.getFullYear(), date_in.getMonth(), date_in.getDate() + eval(recommSlp));

			}

			routelist[routelist.length] = new Route(cityserial, cityname, recommSlp, 'X', 0, lat, lng, date_in, date_out);
			addCityBase(cityname, cityserial, lat, lng, recommSlp, 0, slpRates);
			//	drawDayList();
			updateTerm();

			saveCookie();

		}
		function tAddCity(cityname, cityserial, lat, lng) {
			tAddCityBase(cityname, cityserial, lat, lng);
		}
		function drawCities() {
		}
		function showWthr(cityname, srcserial, thedate) {
			document.getElementById("if_Wthr").src = "if_ShowWthr.asp?srcserial=" + srcserial + "&thedate=" + thedate;
			$('#title-Wthr').html(cityname + " 예상기온");
			$('#modal-Wthr').modal();
		}
		function showTripFriends(cityname, srcserial, thedate) {
			document.getElementById("if_tripfriend").src = "if_tripfriend.asp?srcserial=" + srcserial + "&thedate=" + thedate;
			$('#title-tripfriend').html(cityname + " 동행추천");
			$('#modal-tripfriend').modal();
		}
		function showEvent(cityname, srcserial, thedate, se) {
			document.getElementById("if_event").src = "if_eventdetail.asp?serial=" + se + "&srcserial=" + srcserial + "&thedate=" + thedate;
			$('#title-event').html(cityname + " 축제");
			$('#modal-event').modal();
		}

		//function showBucket(se)
		//{
		//	document.getElementById("if_bucket").src="/chn/if_detail_planner.asp?fromroute=1&serial="+se;
		//	$('#modal-bucket').modal();
		//}

		function formatDate(date) {
			var d = new Date(date), month = '' + (d.getMonth() + 1), day = '' + d.getDate(), year = d.getFullYear();

			if (month.length < 2)
				month = '0' + month;
			if (day.length < 2)
				day = '0' + day;

			return [ year, month, day ].join('-');
		}
		function showBucket(se) {
			var nights = 1;

			var date_in = new Date($('#thedate').val());
			date_in.setDate(date_in.getDate());

			var date_out = new Date(date_in);
			date_out.setDate(date_out.getDate() + nights);

			date_in_txt = formatDate(date_in)
			date_out_txt = formatDate(date_out)

			if (se.substring(0, 1) == "P") {

				se = se.substring(1);
				var pswpElement = document.querySelectorAll('.pswp')[0];

				// build items array
				$
						.ajax({
							url : '/api/v2/content/getList.asp?content_id=' + se,
							dataType : 'json',
							success : function(data) {
								if (data != "") {
									var xitems = [];

									$
											.each(
													data.data.items,
													function(i, item) {

														if (item.imgurl != "" && item.imgurl != null) {
															xitems[i] = [];
															xitems[i]["src"] = item.imgurl;

															xitems[i]["w"] = "500";
															xitems[i]["h"] = "500";
															thtml = "";

															if (item.spotname != "" && item.spotname != null)
																if (item.spotserial.substring(0, 1) == "T") {
																	tourserial = item.spotserial.substring(1);
																	thtml = thtml
																			+ "<a target=\"_blank\" style=\"margin-right:3px;margin-bottom:2px;\" class=\"btn btn-success\" href=\"//www.stubbyplanner.com/guide/index.asp?l=sq_story&serial="
																			+ tourserial + "\">" + item.spotname + " 자세히보기</a>";
																} else {
																	thtml = thtml
																			+ "<a style=\"margin-right:3px;margin-bottom:2px;\" class=\"btn btn-default\" href=\"javascript:addSpot('"
																			+ item.cityserial + "','" + item.cityname + "','" + item.spotname + "','"
																			+ item.spotserial + "','" + item.latitude + "','" + item.longitude
																			+ "','" + item.spotimg + "')\">" + item.spotname + " 일정담기</a>";
																}
															if (item.links.length > 0) {

																for (xxx = 0; xxx < item.links.length; xxx++) {
																	if (item.links[xxx].link_image != "")
																		thtml = thtml
																				+ "<a style=\"margin-right:3px;margin-bottom:2px;\" class=\"btn btn-default\" target=\"_blank\" href=\""+item.links[xxx].link+"&checkin="+date_in_txt+"&checkout="+date_out_txt+"\"><img  height=\"20px\" src=\""+item.links[xxx].link_image+"\"> "
																				+ item.links[xxx].title + "</a>";
																	else
																		thtml = thtml
																				+ "<a style=\"margin-right:3px;margin-bottom:2px;\" class=\"btn btn-default\" target=\"_blank\" href=\""+item.links[xxx].link+"&checkin="+date_in_txt+"&checkout="+date_out_txt+"\">"
																				+ item.links[xxx].title + "</a>";
																}
															}
															xitems[i]["title"] = thtml;
														}

													});

									// define options (if needed)
									var options = {
										// optionName: 'option value'
										// for example:
										index : 0
									// start at first slide
									};
									var gallery = new PhotoSwipe(pswpElement, PhotoSwipeUI_Default, xitems, options);
									gallery.init();

								}
							}
						});
			} else {
				document.getElementById("if_bucket").src = "/chn/if_detail_planner.asp?fromroute=1&serial=" + se;
				$('#modal-bucket').modal();
			}
		}
	</script>





	<div id="modal-bucket" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" style="width: 90%">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="title-event">버킷리스트</h4>
				</div>
				<div class="modal-body" style="">
					<iframe id="if_bucket" frameborder="0" width="100%" height="500px" src="about:blank"></iframe>

				</div>
			</div>
		</div>
	</div>

	<!---
<div id="dialog-addcity" class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button class="close" type="button" data-dismiss="modal">×</button>
			<h3>직접 도시 추가</h3>
		</div>
		<div class="modal-body">
			<div style="width:500px;height:430px;padding-left:20px;">
				<iframe id="if_addcity" frameborder="0"  scrolling="no" src="about:blank" width="450px" height="420px"></iframe>
			</div>
		</div>
	</div>
  </div>
</div>
--->
	<div id="modal-Guide" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" style="">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="title-Guide">GuideBook</h4>
				</div>
				<div class="modal-body" style="">
					<iframe id="if_guidebook" frameborder="0" width="100%" height="500px" src="about:blank"></iframe>

				</div>
			</div>
		</div>
	</div>


	<div id="modal-share" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" style="">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">공유하기</h4>
				</div>
				<div class="modal-body" style="text-align: center">
					<iframe id="if_share" frameborder="0" width="100%" height="500px" src="about:blank"></iframe>
				</div>
			</div>
		</div>
	</div>
	<script>
		function share() {
			startdate = $("#thedate").val();

			document.getElementById("if_share").src = "if_share.asp?trip_id=" + trip_id + "&startdate=" + startdate + "&tripgene=" + getTripgene();
			$('#modal-share').modal();
		}
	</script>

	<div id="modal-loading" style="display: none;">
		<div id="modal-loading-bg"
			style="position: absolute; top: 0px; left: 0px; width: 100%; height: 680px; background: #696969; z-index: 99999; opacity: 0.8; filter: alpha(opacity = 80);">
		</div>
		<div id="modal-loading-content" style="position: absolute; top: 30px; left: 80px; z-index: 999999; width: 850px; text-align: center">

			<div style="width: 300px; height: 262px; float: left">
				<img src="/img_v9/logo_big.png">
			</div>
			<div style="width: 519px; height: 262px; float: left; background: url('/img_v9/balloon_big.png') no-repeat;">
				<div style="padding-left: 60px; padding-right: 15px; padding-top: 10px;">
					<p style="padding-bottom: 15px; font-size: 18pt; font-family: 'NanumGothic'; font-weight: bold; color: #696969; line-height: 180%">
						이 여행에 필요한 최저가/특가정보를 <br> 실시간으로 수집하고 있습니다
					</p>
					<div class="progress progress-striped" style="width: 400px; margin-left: 20px;">
						<div id="progress_val" class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
							style="width: 5%;">5%</div>
					</div>


					<div
						style="text-align: center; background: #d3d3d3; padding-top: 15px; padding-bottom: 15px; font-size: 13pt; font-family: 'NanumGothic'; color: #696969; line-height: 150%">
						철도/항공 최저가, 호텔 특가정보<br /> <font style="font-size: 11pt"><span id="txt_thedate"><b>5월 22일 기준(1개월뒤)</b></span></font>
					</div>
				</div>
			</div>
			<div style="clear: both;"></div>
		</div>
	</div>


	<div id="modal-Intro" style="display: none">
		<div id="modal-Intro-bg"
			style="position: absolute; top: 0px; left: 0px; width: 100%; height: 680px; background: #696969; z-index: 99999; opacity: 0.8; filter: alpha(opacity = 80);">
		</div>
		<div id="modal-Intro-content" style="position: absolute; top: 30px; left: 30px; z-index: 999999; width: 1000px">
			<img id="img_guide" src="/img_v8/guide_ko1.png" width="1000px" />
			<map name="001">

				<area shape="rect" coords="227,337,325,373" href="javascript:onselectchanged('48.86110101269274,2.3421478271484375')">
				<area shape="rect" coords="352,337,450,373" href="javascript:onselectchanged('32.04504182822618,112.137451171875')">
				<area shape="rect" coords="475,337,573,373" href="javascript:onselectchanged('35.672149273279075,139.74918365478516')">
				<area shape="rect" coords="596,337,694,373" href="javascript:onselectchanged('14.859850400601036,101.337890625')">
				<area shape="rect" coords="719,337,817,373" href="javascript:onselectchanged('22.268764039073964,77.62890625')">
				<area shape="rect" coords="228,403,326,439" href="javascript:onselectchanged('49.26780455063753,-96.50390625')">
				<area shape="rect" coords="351,403,449,439" href="javascript:onselectchanged('-17.54376055418527,-70.60546875')">
				<area shape="rect" coords="475,403,573,439" href="javascript:onselectchanged('-27.293689224852393,144.4921875')">
				<area shape="rect" coords="595,403,693,439" href="javascript:onselectchanged('5.7908968128719565,21.97265625')">
				<area shape="rect" coords="720,403,818,439" href="javascript:onselectchanged('31.80289258670676,57.12890625')">

			</map>
			<map name="002">
				<area shape="rect" coords="0,0,1000,580" href="javascript:introNext();">
			</map>

			<div style="position: relative; top: -570px; height: 45px; padding-right: 30px; text-align: right">
				<a href="javascript:closeIntro();"><img src="/img_v8/planner_guide_close.png"></a>
			</div>
			<div style="position: relative; top: -350px; height: 45px;">
				<span style="float: right; padding-right: 10px;" id="span_btn_next"><a href="javascript:introNext();"><img
						src="/img_v8/planner_guide_next.png"></a></span> <span style="padding-left: 10px;" id="span_btn_previous"><a href="javascript:introPrev();"><img
						src="/img_v8/planner_guide_previous.png"></a></span>
				<div style="clear: both"></div>
			</div>
			<div style="position: relative; top: -150px; height: 45px;">
				<p style="text-align: center">
					<a href="javascript:setPage(1);"><img id="ico_paging_1" src="/img_v8/planner_ico_paging_selected.png"></a> <a href="javascript:setPage(2);"><img
						id="ico_paging_2" src="/img_v8/planner_ico_paging_unselected.png"></a> <a href="javascript:setPage(3);"><img id="ico_paging_3"
						src="/img_v8/planner_ico_paging_unselected.png"></a> <a href="javascript:setPage(4);"><img id="ico_paging_4"
						src="/img_v8/planner_ico_paging_unselected.png"></a> <a href="javascript:setPage(5);"><img id="ico_paging_5"
						src="/img_v8/planner_ico_paging_unselected.png"></a>

				</p>
				<div style="clear: both"></div>
			</div>


		</div>
	</div>
	<script>
		function setPage(idx) {
			$("#ico_paging_1").attr("src", "/img_v8/planner_ico_paging_unselected.png");
			$("#ico_paging_2").attr("src", "/img_v8/planner_ico_paging_unselected.png");
			$("#ico_paging_3").attr("src", "/img_v8/planner_ico_paging_unselected.png");
			$("#ico_paging_4").attr("src", "/img_v8/planner_ico_paging_unselected.png");
			$("#ico_paging_5").attr("src", "/img_v8/planner_ico_paging_unselected.png");

			$("#ico_paging_" + idx).attr("src", "/img_v8/planner_ico_paging_selected.png");

			introCurPage = idx;
			$("#img_guide").attr("src", "/img_v8/guide_ko" + idx + ".png");

			$("#span_btn_previous").show();
			$("#span_btn_next").show();

			if (introCurPage == 5)
				$("#span_btn_next").hide();
			if (introCurPage == 1)
				$("#span_btn_previous").hide();

			if (introCurPage == 5)
				$("#img_guide").attr("usemap", "#001");
			else
				$("#img_guide").attr("usemap", "");

		}
		function closeIntro() {
			$("#modal-Intro").hide();
		}
		function showIntro() {
			var newH = $(window).height() - 3;
			var newTop = (eval($(window).height()) - 580) / 2;
			var newLeft = (eval($(window).width()) - 1000) / 2;

			$("#modal-Intro-bg").css("height", newH);
			$("#modal-Intro-content").css("left", newLeft);
			$("#modal-Intro-content").css("top", newTop);

			$("#modal-Intro").show();
		}
		function closeLoading() {
			$("#modal-loading").hide();
		}
		function showLoading(thedate) {
			var newH = $(window).height();
			var newTop = (eval($(window).height()) - 300) / 2;
			var newLeft = (eval($(window).width()) - 820) / 2;

			$("#modal-loading-bg").css("height", newH);
			$("#modal-loading-content").css("left", newLeft);
			$("#modal-loading-content").css("top", newTop);
			if (thedate)
				$("#txt_thedate").html("<b>" + thedate.substring(5, 7) + "월 " + thedate.substring(8, 10) + "일 기준</b>");

			$("#modal-loading").show();
			curProgress = 5;
			interv = window.setInterval(xloading, 400);
		}

		var curProgress = 5;
		var interv;
		function xloading() {
			curProgress = curProgress + 5;
			$("#progress_val").css("width", curProgress + "%");
			$("#progress_val").html(curProgress + "%");
			if (curProgress > 99) {
				curProgress = 0;
				window.clearInterval(interv);
				closeLoading();
			}
		}

		var introCurPage = 1;
		function introPrev() {

			if (introCurPage == 1) {
				introCurPage = 5;
			} else {
				introCurPage--;
				setPage(introCurPage);

			}

		}
		function introNext() {

			if (introCurPage == 5) {
				closeIntro();
			} else {
				introCurPage++;
				setPage(introCurPage);

			}
		}
		setPage(1);
		function openSearchRoute() {

			$("#title-Guide").html("유럽 인기루트 검색");
			document.getElementById("if_guidebook").src = "if_planner_searchroute.asp";
			$('#modal-Guide').modal();

		}

		function openGuideBook(s, t) {

			$("#title-Guide").html(t + " 가이드북");
			if (s.length == 14)
				document.getElementById("if_guidebook").src = "if_planner_guidebook_detail.asp?srcserial=" + s;
			else
				document.getElementById("if_guidebook").src = "if_planner_guidebook.asp?cityserial=" + s;

			$('#modal-Guide').modal();

		}
		function openGuideBookExt(s, t, tbl) {

			$("#title-Guide").html(t + " 가이드북");
			document.getElementById("if_guidebook").src = "if_planner_guidebook.asp?tbl=" + tbl + "&cityserial=" + s;

			$('#modal-Guide').modal();

		}
		function openBucketDetail(s, t) {
			$("#title-Guide").html(t);
			document.getElementById("if_guidebook").src = "/bucket_detail.asp?fromplanner=1&expserial=" + s;
			$('#modal-Guide').modal();

		}
		function openCityDetail(s, t) {
			$("#title-Guide").html(t);
			document.getElementById("if_guidebook").src = "/bucket_detail.asp?fromplanner=1&cityserial=" + s;

			$('#modal-Guide').modal();

		}
	</script>

	</center>

	<!-- The Bootstrap Image Gallery lightbox, should be a child element of the document body -->
	<div id="blueimp-gallery" class="blueimp-gallery">
		<!-- The container for the modal slides -->
		<div class="slides"></div>
		<!-- Controls for the borderless lightbox -->
		<h3 class="title"></h3>
		<a class="prev">‹</a> <a class="next">›</a> <a class="close">×</a> <a class="play-pause"></a>
		<ol class="indicator"></ol>
		<!-- The modal dialog, which will be used to wrap the lightbox content -->
		<div class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" aria-hidden="true">&times;</button>
						<h4 class="modal-title"></h4>
					</div>
					<div class="modal-body next"></div>
					<div class="modal-footer" style="display: yes">
						<button type="button" class="btn btn-default pull-left prev">
							<i class="glyphicon glyphicon-chevron-left"></i> Previous
						</button>
						<button type="button" class="btn btn-primary next">
							Next <i class="glyphicon glyphicon-chevron-right"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-----팝업 시작 ---->
	<div id="modal-trsinfo" class="modal fade bs-example-modal-lg">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">도시 이동정보&nbsp;&nbsp;</h4>
				</div>
				<div class="modal-body">
					<iframe id="if_trs_info" frameborder="0" src="about:blank" width="100%" height="470px"></iframe>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->



	<div id="mymodal" style="display: none;">
		<div
			style="position: fixed; top: 0px; left: 0px; z-index: 9999; background: #000; opacity: 0.9; filter: alpha(opacity = 90); width: 100%; height: 100%"></div>
		<div
			style="text-align: center; position: fixed; top: 0px; left: 0px; z-index: 19999; width: 100%; padding-top: 20px; padding-left: 120px; padding-right: 120px">

			<div style="display: inline-block; width: 600px">
				<div>
					<a href="javascript:closeMyModal()" class="pull-right" style="color: #fff; font-size: 27pt"><i class="fa fa-times-circle" aria-hidden="true"></i></a>
				</div>
				<div>
					<font style="font-size: 16pt; color: #fff" id="my_modal_title">제목</font>
				</div>
				<div style="clear: both"></div>
				<div style="margin-top: 10px" id="my_modal_desc"></div>
			</div>
		</div>
	</div>




	<div id="mapControllerCenterTop" style="position: absolute; top; height: 50px; margin-left: 35px; padding-top: 10px; margin-top: 10px; width: 460px;">
		<div
			style="width: 416px; border-radius: 2px; border: 1px solid #efefef; background: #fff; padding-left: 4px; padding-right: 4px; padding-top: 4px; padding-bottom: 4px;">
			<div style="float: left; width: 328px;">
				<input type="text" id="autoc" placeholder="도시이름을 입력하세요."
					style="border: 1px solid #fff; padding-left: 8px; width: 300px; height: 35px; font-size: 14px; color: gray"><font
					style="color: #c0c0c0; font-size: 10pt">&nbsp;<i class="fa fa-search"></i></font>
			</div>
			<div style="float: left; width: 70px; border-left: 1px solid #efefef;">
				<div
					style="margin-left: 10px; border-radius: 2px; display: inline-block; width: 60px; background: #696969; color: #fff; text-align: center; padding-top: 9px; padding-bottom: 9px; font-size: 10pt; font-weight: bold; cursor: pointer"
					onclick="showRecommCities('')">
					<i class="fa fa-star"></i> 추천
				</div>
			</div>
			<div style="clear: both"></div>
		</div>

	</div>
	<div id="mapControllerRightTop"
		style="margin-top: 10px; margin-right: 10px; font-size: 18pt; font-weight: 500; color: #696969; background: #fff; border: 1px solid #efefef; border-radius: 30px; width: 60px; height: 60px; padding-top: 13px; text-align: center">
		<span id="plan_term">-</span><font style="font-size: 9pt">일</font>
	</div>

	<script>
		function openTrsinfo(dep, des, thedate) {

			var thedate = $("#thedate").val();
			var surl = "if_trsinfo.asp?depserial=" + dep + "&desserial=" + des + "&thedate=" + thedate;

			document.getElementById("if_trs_info").src = surl;

			$('#modal-trsinfo').modal({
				keyboard : true,
				backdrop : 'static',
				show : true
			});

		}

		function moveToCityMap(ridx) {
			startdate = $("#thedate").val();
			window.location = "/plan/planner_city_rt.asp?startdate=" + startdate + "&ridx=" + ridx + "&tripgene=" + getTripgene();
		}

		var weekdays = [ '일', '월', '화', '수', '목', '금', '토' ];

		function drawDayList() {
			updateDateInOut();
			term = 1;
			xxhtml = '<div style="width:' + (routelist.length + 2) * 152 + 'px">';
			xxhtml = xxhtml
					+ '<div class="tabblock_selected"><div><a href="#">전체루트</a></div><div id="travel_length" class="tabblock_bottom"></div></div>';

			startdate = new Date($("#thedate").val());
			for (i = 0; i < routelist.length; i++) {
				xxhtml = xxhtml + '<div class="tabblock"><div><a href="javascript:moveToCityMap(' + i + ')"><img src="/images/is/flag/'
						+ routelist[i].cityserial.substring(0, 5) + '_s.gif"> ' + routelist[i].name + ' ' + routelist[i].nights + '박</a></div>';

				//			date_in=new Date(startdate.getFullYear(),startdate.getMonth(),startdate.getDate()+term-1);
				//			date_out=new Date(date_in.getFullYear(),date_in.getMonth(),date_in.getDate()+eval(routelist[i].nights));

				date_in = routelist[i].date_in;
				date_out = routelist[i].date_out;

				xxhtml = xxhtml + '<div class="tabblock_bottom">' + (date_in.getMonth() + 1) + '월' + date_in.getDate() + '일('
						+ weekdays[date_in.getDay()] + ')';
				if (date_out.getMonth() != date_in.getMonth() || date_out.getDate() != date_in.getDate()) {
					xxhtml = xxhtml + '~';
					if (date_out.getMonth() != date_in.getMonth())
						xxhtml = xxhtml + (date_out.getMonth() + 1) + '월';
					xxhtml = xxhtml + date_out.getDate() + '일(' + weekdays[date_out.getDay()] + ')';
				}
				xxhtml = xxhtml + '</div></div>';

				term = term + eval(routelist[i].nights);
			}

			xxhtml = xxhtml
					+ '<div class="tabblock"><a href="javascript:moveToCalendar();"><span class="glyphicon glyphicon-calendar"></span> 일정표</a><div id="travel_term" class="tabblock_bottom"></div></div>';
			xxhtml = xxhtml + '</div>';
			if (routelist.length < 7)
				$("#daylist").css("height", "46px");
			else
				$("#daylist").css("height", "61px");

			$("#daylist").html(xxhtml);

			//		$("#travel_length").html((term-1)+'박 '+term+'일');

			xxhtml = "";
			all_date_in = new Date(startdate.getFullYear(), startdate.getMonth(), startdate.getDate());
			all_date_out = new Date(startdate.getFullYear(), startdate.getMonth(), startdate.getDate() + term - 1);
			xxhtml = xxhtml + (all_date_in.getMonth() + 1) + '월' + all_date_in.getDate() + '일(' + weekdays[all_date_in.getDay()] + ')';
			if (all_date_out.getMonth() != all_date_in.getMonth() || all_date_out.getDate() != all_date_in.getDate()) {
				xxhtml = xxhtml + '~';
				if (all_date_out.getMonth() != all_date_in.getMonth())
					xxhtml = xxhtml + (all_date_out.getMonth() + 1) + '월';
				xxhtml = xxhtml + all_date_out.getDate() + '일(' + weekdays[all_date_out.getDay()] + ')';
			}
			$("#travel_term").html(xxhtml);

			$("#term").val((term - 1) + '박 ' + term + '일');
		}

		function req_save() {

			cst_type = $("#cst_type").val();
			cst_phone = $("#cst_phone").val();
			cst_term = $("#cst_term").val();
			cst_memcnt = $("#cst_memcnt").val();
			special_req = $("#special_req").val();

			if (trip_id == "") {
				tg = getTripgene();
				sd = $("#thedate").val();
				$.ajax({
					type : "POST",
					url : "/api/planning/saveCookieX.asp",
					data : {
						tripgene : tg,
						startdate : sd,
						tid : trip_id
					},
					success : function(data) {
						trip_id = data;

						$.post("/api/planning/saveConsultingReq.asp", {
							cst_type : cst_type,
							cst_phone : cst_phone,
							cst_term : cst_term,
							cst_memcnt : cst_memcnt,
							special_req : special_req,
							tid : trip_id
						}, function(data) {
							alert('맞춤여행 요청이 완료되었습니다. 영업일기준 24시간이내에 상담원이 연락을 드릴 예정입니다.');
							closeMyModal();

						});

					}
				});
			} else {

				$.post("/api/planning/saveConsultingReq.asp", {
					cst_type : cst_type,
					cst_phone : cst_phone,
					cst_term : cst_term,
					cst_memcnt : cst_memcnt,
					special_req : special_req,
					tid : trip_id
				}, function(data) {
					alert('요청이 완료되었습니다. 상담원이 24시간내에 연락드릴 예정입니다.');
					closeMyModal();

				});
			}
		}
		function select_consult_type(type_idx) {
			$("#div_ctype_1").removeClass("selected");
			$("#div_ctype_2").removeClass("selected");
			$("#div_ctype_9").removeClass("selected");
			$("#div_ctype_1").html(" ");
			$("#div_ctype_2").html(" ");
			$("#div_ctype_9").html(" ");

			$("#cst_type").val(type_idx);
			$("#div_ctype_" + type_idx).html("V");
			$("#div_ctype_" + type_idx).addClass("selected");
		}
		function req_tailored() {
			thtml = '';
			thtml += '<div style="clear:both"></div>';

			thtml += '<div style="margin-bottom:2px;"><input type="hidden" id="cst_type" name="cst_type" value="1">';
			thtml += '<div style="width:33%;float:left;color:#fff;text-align:center"><div id="div_ctype_1" onclick="javascript:select_consult_type(1)" class="btn_ctype selected" style="">V</div><br><br><b>맞춤여행 견적</b><br><br><div style="height:110px;overflow-y:auto;margin-top:10px;margin-bottom:10px;">일정 상담통화 2회<br>+ 일정 확정후 맞춤형 견적서 제공 <br>+ 현지교통/숙소/투어 예약링크 제공<br>+  셀프 예약에 필요한 메뉴얼 제공<br>+ <a href="//www.stubbyplanner.com/selfguide/" target="_blank">e셀프가이드북(100권)</a></div><font style="font-size:11pt"><b>39,900원 / ~30일</b><br><font style="font-size:9pt">49.900원 / 31~40일</font></font></div>';
			thtml += '<div style="width:33%;float:left;color:#fff;text-align:center"><div id="div_ctype_9" onclick="javascript:select_consult_type(9)" class="btn_ctype" style="">&nbsp;</div><br><br><b>예약 대행</b><br><br><div style="height:110px;overflow-y:auto;margin-top:10px;margin-bottom:10px;">현지교통/숙소/투어 예약대행<br>+ <a href="//www.stubbyplanner.com/selfguide/" target="_blank">e셀프가이드북(100권)</a></div><font style="font-size:11pt"><b>39,900원 / ~20일</b><br><font style="font-size:9pt">49.900원 / 21~30일</font></font></div>';
			thtml += '<div style="width:33%;float:left;color:#fff;text-align:center"><div id="div_ctype_2" onclick="javascript:select_consult_type(2)" class="btn_ctype" style="">&nbsp;</div><br><br><b>맞춤여행 견적+예약대행</b><br><br><div style="height:110px;overflow-y:auto;margin-top:10px;margin-bottom:10px;">일정 상담통화  2회<br>+ 일정 확정후 맞춤형 견적서 제공 <br>+ 현지교통/숙소/투어 예약대행<br>+ <a href="//www.stubbyplanner.com/selfguide/" target="_blank">e셀프가이드북(100권)</a></div><font style="font-size:11pt"><b>74,900원 / ~20일</b><br><font style="font-size:9pt">94.900원 / 21~30일</font></font></div>';

			thtml += '<div style="clear:both"></div>';
			thtml += '<hr style="margin-top:10px;margin-bottom:10px;"></div>';

			thtml += '<div style="margin-bottom:7px;">';
			thtml += '<div style="width:30%;float:left;font-size:10pt;color:#fff">핸드폰번호</div>';
			thtml += '<div style="width:70%;float:left;"><input class="form-control" type="text" id="cst_phone" name="cst_phone" value=""></div>';
			thtml += '<div style="clear:both"></div>';
			thtml += '</div>';

			thtml += '<div style="margin-bottom:7px;">';
			thtml += '<div style="width:30%;float:left;font-size:10pt;color:#fff">여행기간</div>';
			thtml += '<div style="width:70%;float:left;"><select name="cst_term" id="cst_term" class="form-control"><option value="7">4~7일</option><option value="10">8~10일</option><option value="14">11~14일</option><option value="20">15~20일</option><option value="29">21~29일</option><option value="30">30일이상</option></select></div>';
			thtml += '<div style="clear:both"></div>';
			thtml += '</div>';
			thtml += '<div style="margin-bottom:7px;">';
			thtml += '<div style="width:30%;float:left;font-size:10pt;color:#fff">인원</div>';
			thtml += '<div style="width:70%;float:left;"><select name="cst_memcnt" id="cst_memcnt" class="form-control"><option value="1">1명</option><option value="2">2명</option><option value="3">3명</option><option value="4">4명</option><option value="5">5명</option><option value="6">6명</option><option value="7">7명</option><option value="8">8명</option><option value="9">9명</option><option value="10">10명이상</option></select></div>';
			thtml += '<div style="clear:both"></div>';
			thtml += '</div>';

			thtml += '<div style="margin-bottom:7px;">';
			thtml += '<div style="width:30%;float:left;font-size:10pt;color:#fff">특이사항</div>';
			thtml += '<div style="width:70%;float:left;"><input class="form-control" type="text" id="special_req" name="special_req" value=""></div>';
			thtml += '<div style="clear:both"></div>';
			thtml += '</div>';

			thtml += '<div style="padding-top:10px"><a href="javascript:req_save()" style="text-align:center" class="btn-lg btn-success btn-block">요청하기</a></div>';
			thtml += '<div style="clear:both"></div>';
			thtml += '<p style="font-size:8pt;color:#fff;padding-top:5px;">* 문의 : 02-886-0982, (주)스투비플래너, 오전10시~오후6시<br> ';
			thtml += '요청완료 후 24시간(영업일기준)이내에 상담원이 연락을 드리게 됩니다.<br> ';
			thtml += '출국까지 최소 1개월 이상 남은 분들만 신청가능합니다.<br>';
			thtml += '상담후 최종 서비스여부<br>';

			xtitle = "맞춤견적 / 예약대행 서비스";
			$("#my_modal_title").html(xtitle);
			$("#my_modal_desc").html(thtml);
			openMyModal();

		}

		function closeMyModal() {
			$("#mymodal").hide();
			$("body").removeClass("modal-open")

		}
		function openMyModal() {
			$("#mymodal").show();
			$("body").addClass("modal-open");

		}

		function mngSlp(tt, cityserial, xxxxxxx, rt_idx) {
			cur_nights = routelist[rt_idx].nights;
			xurl = "/api/planning/getCitySchd.asp?cityserial=" + cityserial;
			$
					.ajax({
						url : xurl,
						dataType : 'json',
						data : {},
						success : function(data) {
							if (data != "") {

								if (data.schd.length < 1) {

									thtml = '<div style="margin-bottom:20px;text-align:center;padding-left:45px;padding-right:25px;text-align:center">';
									for (i = 0; i < 10; i++) {

										val_schd_slp_rate = 0;
										if (i < 5) {
											val_schd_slp_rate = data.slprate[i];
											if (val_schd_slp_rate == "")
												val_schd_slp_rate = 0;
										}

										i_txt = i;
										if (i_txt == 0)
											i_txt = "무";
										if (i == cur_nights)
											thtml += '<div  id="circle_night_selector_'
													+ i
													+ '" style="padding-top:16px" class="circle_night_selector_selected" onmouseover="showSchdDetail('
													+ i + ')" onclick="nightSelect(' + rt_idx + ',\'' + i + '\');"><font style="font-size:15pt;"><b>'
													+ i_txt + '박</b></font><br>';
										else
											thtml += '<div id="circle_night_selector_' + i
													+ '" style="padding-top:16px" class="circle_night_selector"  onmouseover="showSchdDetail(' + i
													+ ')" onclick="nightSelect(' + rt_idx + ',\'' + i + '\');"><font style="font-size:15pt;"><b>'
													+ i_txt + '박</b></font><br>';
										if (val_schd_slp_rate > 0)
											thtml += '<font style="font-size:10pt;">' + val_schd_slp_rate + '%</font>';

										thtml += '</div>';
										if (i == 4)
											thtml += '<div style="clear:both"></div>';
									}
									thtml += '<div style="clear:both"></div>';
									thtml += '</div>';

								} else {

									x_memo = data.memo;
									x_night_tip = data.night_tip;

									val_schd_desc_1 = data.schd[0].desc;
									if (!val_schd_desc_1)
										val_schd_desc_1 = "";
									val_schd_desc_1_Arr = val_schd_desc_1.split("@");

									val_schd_full_1 = '<div class="p_schd">';
									if (data.schd[0].night > 0)
										val_schd_full_1 += '<div style="font-size:13pt;font-weight:bold;">' + data.schd[0].night + '박 '
												+ eval(data.schd[0].night + 1)
												+ '일 추천코스 <font style="font-size:11pt"><'+data.schd[0].subtitle+'></font></div>';
									else
										val_schd_full_1 += '<div style="font-size:13pt;font-weight:bold;">당일치기 추천코스 <font style="font-size:11pt"><'+data.schd[0].subtitle+'></font></div>';

									val_schd_full_1 += '<div style="float:left;width:75%;padding-left:10px;padding-top:0px">';
									for (i = 0; i < val_schd_desc_1_Arr.length; i++) {
										theday = i + 1;
										val_schd_full_1 += '<div class="day_small">DAY ' + theday + '</div>';

										val_schd_desc_1_Arr_DayArr = val_schd_desc_1_Arr[i].split("|");
										for (j = 0; j < val_schd_desc_1_Arr_DayArr.length; j++) {
											if (j == 0)
												val_schd_full_1 += val_schd_desc_1_Arr_DayArr[j];
											else
												val_schd_full_1 += '<br>' + val_schd_desc_1_Arr_DayArr[j];
										}
									}
									val_schd_full_1 += '</div>';
									val_schd_full_1 += '<div style="float:left;width:25%;padding-top:5px;padding-right:15px;"><img style="border-radius:5px" src="'
											+ data.schd[0].imgurl.replace('.jpg', '_m.jpg') + '" width="90%"></div>';

									val_schd_full_1 += '<div style="clear:both"></div>';
									val_schd_full_1 += '</div>';

									if (data.schd[1]) {
										val_schd_desc_2 = data.schd[1].desc;
										if (!val_schd_desc_2)
											val_schd_desc_2 = "";
										val_schd_desc_2_Arr = val_schd_desc_2.split("@");

										val_schd_full_2 = '<div class="p_schd"><div style="font-size:11pt;font-weight:bold;">' + data.schd[1].night
												+ '박 ' + eval(data.schd[1].night + 1)
												+ '일 추천코스 <font style="font-size:11pt"><'+data.schd[1].subtitle+'></font></div>';
										val_schd_full_2 += '<div style="float:left;width:75%;padding-left:10px;padding-top:10px">';

										for (i = 0; i < val_schd_desc_2_Arr.length; i++) {
											theday = i + 1;
											val_schd_full_2 += '<div class="day_small">DAY ' + theday + '</div>';

											val_schd_desc_2_Arr_DayArr = val_schd_desc_2_Arr[i].split("|");
											for (j = 0; j < val_schd_desc_2_Arr_DayArr.length; j++) {
												if (j == 0)
													val_schd_full_2 += val_schd_desc_2_Arr_DayArr[j];
												else
													val_schd_full_2 += '<br>' + val_schd_desc_2_Arr_DayArr[j];
											}
										}
										val_schd_full_2 += '</div>';
										val_schd_full_2 += '<div style="float:left;width:25%;padding-top:5px;padding-right:15px;"><img style="border-radius:5px" src="'
												+ data.schd[1].imgurl.replace('.jpg', '_m.jpg') + '" width="90%"></div>';

										val_schd_full_2 += '</div>';

									} else {
										val_schd_full_2 = "";
									}

									if (data.schd[2]) {
										val_schd_desc_3 = data.schd[2].desc;
										if (!val_schd_desc_3)
											val_schd_desc_3 = "";
										val_schd_desc_3_Arr = val_schd_desc_3.split("@");

										val_schd_full_3 = '<div class="p_schd"><div style="font-size:11pt;font-weight:bold;">' + data.schd[2].night
												+ '박 ' + eval(data.schd[2].night + 1)
												+ '일 추천코스 <font style="font-size:11pt"><'+data.schd[2].subtitle+'></font></div>';
										val_schd_full_3 += '<div style="float:left;width:75%;padding-left:10px;padding-top:10px">';

										for (i = 0; i < val_schd_desc_3_Arr.length; i++) {
											theday = i + 1;
											val_schd_full_3 += '<div class="day_small">DAY ' + theday + '</div>';

											val_schd_desc_3_Arr_DayArr = val_schd_desc_3_Arr[i].split("|");
											for (j = 0; j < val_schd_desc_3_Arr_DayArr.length; j++) {
												if (j == 0)
													val_schd_full_3 += val_schd_desc_3_Arr_DayArr[j];
												else
													val_schd_full_3 += '<br>' + val_schd_desc_3_Arr_DayArr[j];
											}
										}
										val_schd_full_3 += '</div>';
										val_schd_full_3 += '<div style="float:left;width:25%;padding-top:5px;padding-right:15px;"><img style="border-radius:5px" src="'
												+ data.schd[2].imgurl.replace('.jpg', '_m.jpg') + '" width="90%"></div>';

										val_schd_full_3 += '</div>';
									} else {
										val_schd_full_3 = "";
									}

									if (data.schd[3]) {
										val_schd_desc_4 = data.schd[3].desc;
										if (!val_schd_desc_4)
											val_schd_desc_4 = "";
										val_schd_desc_4_Arr = val_schd_desc_4.split("@");

										val_schd_full_4 = '<div class="p_schd"><div style="font-size:11pt;font-weight:bold;">' + data.schd[3].night
												+ '박 ' + eval(data.schd[3].night + 1)
												+ '일 추천코스 <font style="font-size:11pt"><'+data.schd[3].subtitle+'></font></div>';
										val_schd_full_4 += '<div style="float:left;width:75%;padding-left:10px;padding-top:10px">';

										for (i = 0; i < val_schd_desc_4_Arr.length; i++) {
											theday = i + 1;
											val_schd_full_4 += '<div class="day_small">DAY ' + theday + '</div>';

											val_schd_desc_4_Arr_DayArr = val_schd_desc_4_Arr[i].split("|");
											for (j = 0; j < val_schd_desc_4_Arr_DayArr.length; j++) {
												if (j == 0)
													val_schd_full_4 += val_schd_desc_4_Arr_DayArr[j];
												else
													val_schd_full_4 += '<br>' + val_schd_desc_4_Arr_DayArr[j];
											}
										}
										val_schd_full_4 += '</div>';
										val_schd_full_4 += '<div style="float:left;width:25%;padding-top:5px;padding-right:15px;"><img style="border-radius:5px" src="'
												+ data.schd[3].imgurl.replace('.jpg', '_m.jpg') + '" width="90%"></div>';

										val_schd_full_4 += '</div>';
									} else {
										val_schd_full_4 = "";
									}

									if (data.schd[4]) {
										val_schd_desc_5 = data.schd[4].desc;
										if (!val_schd_desc_5)
											val_schd_desc_5 = "";
										val_schd_desc_5_Arr = val_schd_desc_5.split("@");

										val_schd_full_5 = '<div class="p_schd"><div style="font-size:11pt;font-weight:bold;">' + data.schd[4].night
												+ '박 ' + eval(data.schd[4].night + 1)
												+ '일 추천코스 <font style="font-size:11pt"><'+data.schd[4].subtitle+'></font></div>';
										val_schd_full_5 += '<div style="float:left;width:75%;padding-left:10px;padding-top:10px">';

										for (i = 0; i < val_schd_desc_5_Arr.length; i++) {
											theday = i + 1;
											val_schd_full_5 += '<div class="day_small">DAY ' + theday + '</div>';

											val_schd_desc_5_Arr_DayArr = val_schd_desc_5_Arr[i].split("|");
											for (j = 0; j < val_schd_desc_5_Arr_DayArr.length; j++) {
												if (j == 0)
													val_schd_full_5 += val_schd_desc_5_Arr_DayArr[j];
												else
													val_schd_full_5 += '<br>' + val_schd_desc_5_Arr_DayArr[j];
											}
										}
										val_schd_full_5 += '</div>';
										val_schd_full_5 += '<div style="float:left;width:25%;padding-top:5px;padding-right:15px;"><img style="border-radius:5px" src="'
												+ data.schd[2].imgurl.replace('.jpg', '_m.jpg') + '" width="90%"></div>';

										val_schd_full_5 += '</div>';
									} else {
										val_schd_full_5 = "";
									}
									thtml = '<div style="text-align:center;font-size:9pt;"><div style="padding-bottom:10px;display:inline-block;width:100%;">';

									lastSchdData = data.schd;

									thtml += '<div style="margin-bottom:20px;text-align:center;padding-left:45px;">';
									for (i = 0; i < 10; i++) {

										val_schd_slp_rate = 0;
										val_schd_img = "";
										val_schd_subtitle = "";
										val_schd_title = "";
										for (j = 0; j < data.schd.length; j++) {
											if (data.schd[j].night == i) {
												val_schd_slp_rate = data.schd[j].slp_rate;
												val_schd_subtitle = data.schd[j].subtitle;
												val_schd_title = data.schd[j].title;
												val_schd_title = val_schd_title.replace('<'+i+'박>', '');
												val_schd_img = data.schd[j].imgurl;
											}

										}
										i_txt = i;
										if (i_txt == 0)
											i_txt = "무";
										if (i == cur_nights)
											thtml += '<div  id="circle_night_selector_' + i
													+ '" class="circle_night_selector_selected" onmouseover="showSchdDetail(' + i
													+ ')" onmouseout="hideSchdDetail()" onclick="nightSelect(' + rt_idx + ',\'' + i
													+ '\');"><font style="font-size:8pt;">' + val_schd_title
													+ '</font><br><font style="font-size:14pt;"><b>' + i_txt + '박</b></font><br>';
										else
											thtml += '<div id="circle_night_selector_' + i
													+ '" class="circle_night_selector" onmouseover="showSchdDetail(' + i
													+ ')" onmouseout="hideSchdDetail()" onclick="nightSelect(' + rt_idx + ',\'' + i
													+ '\');"><font style="font-size:8pt;">' + val_schd_title
													+ '</font><br><font style="font-size:14pt;"><b>' + i_txt + '박</b></font><br>';
										if (val_schd_slp_rate > 0)
											thtml += '<font style="font-size:9pt;">' + val_schd_slp_rate + '%</font>';
										thtml += '</div>';
										if (i == 4)
											thtml += '<div style="clear:both"></div>';
									}
									thtml += '<div style="clear:both"></div>';
									//					thtml+='<div style="margin-top:20px;border:2px solid #fff;color:#fff;padding-top:5px;padding-bottom:5px;text-align:center;font-size:12pt;border-radius:5px;">직접입력</div>';
									thtml += '</div>';

									thtml += '<div>';
									thtml += '<div class="banner" style="border-radius:5px;background:#fff;color:#696969;border:5px solid #3ad195">';
									thtml += '<div class="item" style="height:270px;overflow:auto;text-align:left;padding-left:10px;padding-right:10px;padding-top:10px;margin-top:0px;margin-bottom:0px;border-top:1px solid #fff;border-bottom:1px solid #fff;font-size:11pt;color:#696969">';
									thtml = thtml + '<div style="font-size:13pt"><b>체류기간 선택 TIP</b></div>';
									thtml = thtml + '<div><ul><li>' + x_night_tip.replace(/\r/g, "</li><li>") + '</il></ul></div>';
									thtml += '<div style="margin-top:10px;font-size:13pt"><b>Why ' + tt + '?</b></div>';
									thtml += '<div><ul>' + x_memo.replace(/\r/g, "</li><li>") + '</il></ul></div>';
									thtml += '</div>';
									thtml += '<div class="item" style="height:270px;overflow:auto;text-align:left;padding-left:10px;padding-right:10px;padding-top:10px;margin-top:0px;margin-bottom:0px;border-top:1px solid #fff;border-bottom:1px solid #fff;font-size:11pt;">'
											+ val_schd_full_1 + '</div>';
									thtml += '<div class="item" style="height:270px;overflow:auto;text-align:left;padding-left:10px;padding-right:10px;padding-top:10px;margin-top:0px;margin-bottom:0px;border-top:1px solid #fff;border-bottom:1px solid #fff;font-size:11pt;">'
											+ val_schd_full_2 + '</div>';
									thtml += '<div class="item" style="height:270px;overflow:auto;text-align:left;padding-left:10px;padding-right:10px;padding-top:10px;margin-top:0px;margin-bottom:0px;border-top:1px solid #fff;border-bottom:1px solid #fff;font-size:11pt;">'
											+ val_schd_full_3 + '</div>';
									if (val_schd_full_4 != "")
										thtml += '<div class="item" style="height:270px;overflow:auto;text-align:left;padding-left:10px;padding-right:10px;padding-top:10px;margin-top:0px;margin-bottom:0px;border-top:1px solid #fff;border-bottom:1px solid #fff;font-size:11pt;">'
												+ val_schd_full_4 + '</div>';
									if (val_schd_full_5 != "")
										thtml += '<div class="item" style="height:270px;overflow:auto;text-align:left;padding-left:10px;padding-right:10px;padding-top:10px;margin-top:0px;margin-bottom:0px;border-top:1px solid #fff;border-bottom:1px solid #fff;font-size:11pt;">'
												+ val_schd_full_5 + '</div>';

									thtml += '</div>';
									thtml += '</div>';

									thtml = thtml + '</div>';

									thtml = thtml + '</div></div>';

								}

								xtitle = tt + " 체류기간 선택 ";
								$("#my_modal_title").html(xtitle);
								$("#my_modal_desc").html(thtml);
								openMyModal();

								$('.banner').owlCarousel({
									loop : false,
									items : 1,
									margin : 3,
									nav : true,
									navText : [ "<i class='fa fa-chevron-left'></i>", "<i class='fa fa-chevron-right'></i>" ],
									dots : true
								});

							}
						}
					});

		}
		var lastSchdData;
		function showSchdDetail(nights) {
			if (lastSchdData) {
				for (i = 0; i < 5; i++) {
					if (lastSchdData[i]) {
						if (lastSchdData[i].night == nights)
							$('.banner').trigger('to.owl.carousel', i + 1);
					}
				}
			}
		}

		function hideSchdDetail() {
			if (lastSchdData) {
				$('.banner').trigger('to.owl.carousel', 0);
			}
		}
		function nightSelect(i, nights) {

			for (j = 0; j < 10; j++) {
				$("#circle_night_selector_" + j).removeClass("circle_night_selector_selected");
				$("#circle_night_selector_" + j).addClass("circle_night_selector");
			}

			if ($("#circle_night_selector_" + nights).hasClass("circle_night_selector_selected") == false) {
				$("#circle_night_selector_" + nights).addClass("circle_night_selector_selected");
				$("#circle_night_selector_" + nights).removeClass("circle_night_selector");
			}
			chgNights(i, nights);

		}

		$("#autoc").autocomplete(
				{
					source : "/plan/ajax/searchcity.asp",
					minLength : 1,
					select : function(event, ui) {
						//addCity(ui.item.label,ui.item.id,ui.item.lat,ui.item.lng);
						var myLatlng = new google.maps.LatLng(ui.item.lat, ui.item.lng);

						if (prv_infowindow)
							prv_infowindow.close();

						infowindow = new google.maps.InfoWindow();
						thtml = '<iframe scrolling="no" width="330px" height="110px"  frameborder="0" src="planner_step1_infowindow2.asp?lang=ko&s='
								+ ui.item.id + '"></iframe>';
						infowindow.setContent(thtml);
						infowindow.setPosition(myLatlng);
						google.maps.event.addListener(infowindow, 'closeclick', function() {
							var se = ui.item.id;
							if (se.substring(0, 2) == "11" || se.substring(0, 2) == "12" || se.substring(0, 2) == "13" || se.substring(0, 2) == "14")
								getHighlights('1[1-4]');
							else if (se.substring(0, 5) == "16102")
								getHighlights(se.substring(0, 5));
							else
								getHighlights(se.substring(0, 2));

						});

						infowindow.open(map);
						prv_infowindow = infowindow;
						//getCityPhotos(ui.item.id);

						//	getHighlights(ui.item.id);

					}
				});
	</script>
	<!-----팝업 끝---->
	<script src="/js/jquery.blueimp-gallery.min.js"></script>

	<div id="div_bucketlist"
		style="display: none; position: absolute; top: 0px; left; 0 px; width: 100%; height: 590px; margin-left: 273px; background: #fff; border: 7px solid #ee685a;"></div>
	<div id="div_recomm_cities"
		style="display: none; position: absolute; top: 0px; left; 0 px; width: 100%; height: 590px; margin-left: 283px; background: #fff; border: 7px solid #696969;"></div>

	<!-----팝업 시작 ---->
	<div id="modal-info" class="modal fade bs-example-modal-lg">
		<div class="modal-dialog modal-lg">
			<iframe id="if_info" frameborder="0" src="about:blank" width="100%" height="590px"></iframe>
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

</body>
</html>

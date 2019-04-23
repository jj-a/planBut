<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- footer -->

<footer class="container-fluid text-center">
	<a href="#" title="To Top"> 
		<span class="glyphicon glyphicon-chevron-up"></span>
	</a>
	<p>
		Copyright © <a href="${pageContext.request.contextPath}">PlanBut</a> 2019. All rights reserved.
	</p>
	<p>
		<a href="${pageContext.request.contextPath}/admin/">관리자</a>
	</p>
</footer>

<script>
	$(document).ready(function() {
		// Add smooth scrolling to all links in navbar + footer link
		$(".navbar a, footer a[href='#myPage']").on('click', function(event) {
			// Make sure this.hash has a value before overriding default behavior
			if (this.hash !== "") {
				// Prevent default anchsor click behavior
				event.preventDefault();

				// Store hash
				var hash = this.hash;

				// Using jQuery's animate() method to add smooth page scroll
				// The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
				$('html, body').animate({
					scrollTop : $(hash).offset().top
				}, 900, function() {

					// Add hash (#) to URL when done scrolling (default click behavior)
					window.location.hash = hash;
				});
			} // End if
		});

		$(window).scroll(function() {
			$(".slideanim").each(function() {
				var pos = $(this).offset().top;

				var winTop = $(window).scrollTop();
				if (pos < winTop + 600) {
					$(this).addClass("slide");
				}
			});
		});
	})
</script>


<!-- footer end -->

</body>
</html>

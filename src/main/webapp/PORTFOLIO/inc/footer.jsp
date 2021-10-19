<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
 <div class="site-footer__copyrights">
	                        <div class="site-footer__copyrights-logo">
	                            
	                             <p><img src="${pageContext.request.contextPath}/PORTFOLIO/img/genesis2.png"/></p>
	                            
	                        </div>
	                        <div class="site-footer__copyrights-text">
	                            <p>© Copyright 2021 Hyundai Motor Company. <br>All Rights Reserved.</p>
	<!--                             &copy; Copyright 2020 Hyundai Motor Company. <br class="br-mo">All Rights Reserved. -->
	                        </div>
	                    </div>
</footer>

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>

</body>
</html>
<%@ taglib prefix="c" 			uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" 		uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" 			uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" 			uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" 			uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring"      uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%          response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server

            response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance

            response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
            response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility 
 %>
<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Teacher Renewal</title>
    <c:if test="${companyName eq '1'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery-anyslider.css">
</head>

<body>
	<div class="wrapper">
	  <%@include file="header.jsp" %>
	  
	  <!--<section class="slider-inner">
			<img src="images/browse-donation-header.jpg" alt="Slider" />
		</section>-->

		<section class="makeDonateSct ">
			<div class="container">
			
        
         <div class="pracProgress_hdr">
            <h2>Teacher Renewal</h2>
            <div class="green_line_btm"></div>

            </div>
				<h3 class="teachr_dsh bdr-btm-none">Continue the experience</h3>
                <p class="renewal-content">Our mission is to spread peace to the world through mindful awareness. To that end we offer many ways for you to continue the practice in your classroom</p>
				<div class="clr"></div>
				
				
				
				
                
                
                
                
                
										
				
			</div>
		</section>
        <section class="sct-cntxt padding-set" id="getEngaged">
<div class="container">
  
  <div class="maw_wrapper" >
    <div class="maw_col_1 orange_bg" > 
      <!--<div class="grey_baricon">
                <div class="orange_shape"> <img src="images/question-icon.png"  alt=""/> </div>
            </div>-->
      <div class="orange_info" > <img src="<%=request.getContextPath()%>/NewStyles/images/renewal-1.png">
        <h4 class="renewal_info">Brand Ambassador</h4>
        <h3 class="renewal_info_next">Extend Experience
        <br>
         for your Class</h3>
        <p>Get access to additional practice sessions beyond 15 Days for your classroom, by spreading the word to your fellow teachers</p>
        <div class="info_btn"> <a>
          <input type="button" value="REFER A FRIEND" class="home_act_btn" onClick="location.href='<%=request.getContextPath()%>/teacher/referral';"/>
          </a> </div>
      </div>
    </div>
    <div class="cell_space"></div>
    <div class="maw_col_2 green_bg" > 
      <!--<div class="grey_baricon">
                <div class="orange_shape"> <img src="images/green-location-icon.png"  alt=""/> </div>
            </div>-->
      <div class="green_info" > <img src="<%=request.getContextPath()%>/NewStyles/images/renewal-2.png">
        <h4 class="renewal_info">Initiative Organizer</h4>
        <h3 class="renewal_info_next">Extend the Experience to
        <br>
         Add Classes</h3>
        <p>Get complete access to Inner Explorer programs for 2 additional classrooms in your school by taking the initiative to bring Mindful Awareness to your school</p>
        <div class="info_btn"> <!-- <a> -->
        <c:if test="${petitionId eq 0}">
          <input type="button" value="START PETITION" class="home_act_btn_2" onClick="location.href='<%=request.getContextPath()%>/teacher/petition?schoolId=${schoolId}';"/>
          </c:if>
          <c:if test="${petitionId ne 0}">
          <input type="button" value="JOIN PETITION" class="home_act_btn_2" onClick="location.href='<%=request.getContextPath()%>/teacher/joinPetition?petitionId=${petitionId}';"/>
          </c:if>
         <!--  </a> --> </div>
      </div>
    </div>
    <div class="cell_space"></div>
    <div class="maw_col_3 blue_bg"> 
      <!--<div class="grey_baricon">
                <div class="blue_shape"> <img src="images/blue-user.png"  alt=""/> </div>
            </div>-->
      <div class="blue_info"> <img src="<%=request.getContextPath()%>/NewStyles/images/renewal-3.png">
        <h4 class="renewal_info">Pioneer Educator</h4>
        <h3 class="renewal_info_next">Extend Experience
        <br>
          to the Entire School</h3>
        <p>Get complete access to Inner Explorer programs for all the classrooms in your school by making an investment of $100</p>
        <div class="info_btn"> <a>
          <input type="button" value="SPREAD THE WORD" class="home_act_btn_3" onClick="location.href='<%=request.getContextPath()%>/act-now';"/>
          </a> </div>
      </div>
    </div>
  </div>
  
  
  <div class="maw_wrapper" >
    <div class="maw_col_1 orange_bg background-none" > 
      <!--<div class="grey_baricon">
                <div class="orange_shape"> <img src="images/question-icon.png"  alt=""/> </div>
            </div>-->
      <div class="orange_info background-none height-auto" > 
        <h4 class="renewal_info text-left">Brand Ambassador Details</h4>
        <div class="renewal-listing">
        	<ul>
            	<li>Refer 2 other teachers in your school</li>
                <li>Once they start you will receive access to the program until the end of this school year</li>
            </ul>
        </div>
      </div>
    </div>
    <div class="cell_space"></div>
    <div class="maw_col_2 green_bg background-none height-auto" > 
      <!--<div class="grey_baricon">
                <div class="orange_shape"> <img src="images/green-location-icon.png"  alt=""/> </div>
            </div>-->
      <div class="green_info background-none" > 
        <h4 class="renewal_info text-left">Community Organizer Details</h4>
        <div class="renewal-listing">
        	<ul>
            	<li>Start petition for the parents of your students to sign</li>
                <li>Submit a testimonial and collect testimonials from 5 students.</li>
                <li>Send petition and testimonials to your school's principal</li>
                <li>Once you submit you and one additional classroom of your choice at your school will receive access to the program until the end of this school year</li>
            </ul>
        </div>        
      </div>
    </div>
    <div class="cell_space"></div>
    <div class="maw_col_3 blue_bg background-none height-auto"> 
      <!--<div class="grey_baricon">
                <div class="blue_shape"> <img src="images/blue-user.png"  alt=""/> </div>
            </div>-->
      <div class="blue_info background-none"> 
        <h4 class="renewal_info text-left">Brand Ambassador Details</h4>
        <div class="renewal-listing">
        	<ul>
            	<li>Pay $100 now and unlock access to Inner Explorer for all the classrooms at your school</li>
                <li>Community awareness and funding campaign to raise the full cost of $3420 will start.</li>
                <li>You and a colleague will receive an invitation to the annual mindful educator conference</li>
            </ul>
        </div>
      </div>
    </div>
  </div>
  </section>
  
	</div>
<%--     <section class="testi_wrapp background-none">
    <section id="testimonialsct">
      <article class="container">
        <div class="testimonialsct">
          <h2>Testimonials</h2>
          <div class="green_line_btm"></div>
          <div class="slider-wrapper">
            <div class="slider slider2">
              <div>
                <div class="testimonial-slider">
                  <div class="testimonial-photo">
                    
                  </div>
                  <div class="txt-testimonials">
                    <p class="margin-top-ren">â€œMy Kids have stopped beating me up"</p>
                    <div class="test-Name">
                      <div>SALLY M.</div>
                      <span>- 3RD Grade Teacher, Florida -</span> </div>
                  </div>
                </div>
              </div>
              <div>
                <div class="testimonial-slider">
                  <div class="testimonial-photo">
                    
                  </div>
                  <div class="txt-testimonials">
                    <p class="margin-top-ren">â€œMy Kids have stopped beating me up"</p>
                    <div class="test-Name">
                      <div>SALLY M.</div>
                      <span>- 3RD Grade Teacher, Florida -</span> </div>
                  </div>
                </div>
              </div>
              <div>
                <div class="testimonial-slider">
                  <div class="testimonial-photo">
                    
                  </div>
                  <div class="txt-testimonials">
                    <p class="margin-top-ren">â€œMy Kids have stopped beating me up"</p>
                    <div class="test-Name">
                      <div>SALLY M.</div>
                      <span>- 3RD Grade Teacher, Florida -</span> </div>
                  </div>
                </div>
              </div>
              <div>
                <div class="testimonial-slider">
                  <div class="testimonial-photo">
                   
                  </div>
                  <div class="txt-testimonials">
                    <p class="margin-top-ren">â€œMy Kids have stopped beating me up"</p>
                    <div class="test-Name">
                      <div>SALLY M.</div>
                      <span>- 3RD Grade Teacher, Florida -</span> </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </article>
    </section>
    
    
  </section> --%>
	<footer>
		<div class="container">
			<div class="footerLeft">
				<p>Copyright Â© 2015 Inner Explorer</p>
			</div>
			<div class="footerRight">
				<ul>
					<li><a href="javascript:;">Privacy Policy</a></li>
					<li><a href="javascript:;">Terms & Conditions</a></li>
				</ul>
			</div>
		</div>
	</footer>
   <%-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> --%> 
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.counterup.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/waypoints.min.js"></script> 
<script>
    jQuery(document).ready(function( $ ) {
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });
    });
</script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.easing.1.3.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.anyslider.js"></script> 
<script>
  
  $(document).ready(function() {
    $("#login").click(function(e) {
        $(".login_panel").toggle();
        e.stopPropagation();
    });

    $(document).click(function(e) {
        if (!$(e.target).is('.login_panel, .login_panel *')) {
            $(".login_panel").hide();
        }
    });
});
  
  </script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
    
	});
	</script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script> 
<!--<script defer src="js/jquery.flexslider.js"></script> --> 

<script type="text/javascript">
    $(function(){
    //  SyntaxHighlighter.all();
    });
	
	$("#flexiselDemo3").flexisel({
        visibleItems: 5,
        animationSpeed: 1000,
        autoPlay: true,
        autoPlaySpeed: 3000,            
        pauseOnHover: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:480,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 3
            }
        }
    });
    $(window).load(function(){
		
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
});
	
</script> 
<script>
    $(function () {


        $('.slider2').anyslider({
	animation: 'fadeSlide',
			easing: 'easeInOutExpo',
			keyboardNav: false,
			speed: 750
        });
    });
    </script> 
<script type="text/javascript" src="js/jquery.sticky.js"></script> 
<script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
    });
  </script>
  <script>
  $(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});
  </script>

</body>
</html>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%          response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server

            response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance

            response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
            response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility 
 %>

<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Teacher SignUp</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"
	id="style_components" rel="stylesheet" type="text/css" />
<%-- <link href="<%=request.getContextPath()%>/NewStyles/css/autocomplete/main.css" rel="stylesheet"> --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css"> --%>
</head>

<body>
	<div class="wrapper">
		<%-- <%@include file="header.jsp" %> --%>

	  <header id="header">
    <div class="container ">
        <div class="logo"> <a href="<%=request.getContextPath()%>/teacher/teachersignupStep2" title=""></a> </div>
        <div class="hdRight">
           
               <div class="startRight">
                	<p>Welcome, ${loginName}</p>
                	<c:if test="${companyName eq '1'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teacher&userIdForLogout=${userIdForLogout}&classTeacherId=${classTeacherRelationId}';" class="startBtn hdr-btn-clr"/>
						</c:if>
						<c:if test="${companyName eq '2'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teachercrim';" class="startBtn hdr-btn-clr"/>
						</c:if>
					</div>
        </div>
    </div>
</header>

		<section class="makeDonateSct mtop-5">
			<div class="containerSmall">
				
					

					<div class="getstartForm">
					<div class="get-start-new-form">
                      <div class="getstartForm_started">
                	<label class="start-new-label">Launch Options</label>
					<ul>
						<%-- <li id="first" onclick="selectPaymentType(0);" class="width48p">
                        	<div class="launch-img">
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/teacher1.jpg">
                            	<h4 class="uper-hd-lft">$${teacherSubMnthlyAmt}/<span>month</span></h4>                            	
                            	 <div id="zeroSelectDiv" ></div>
                            </div>
                            <div class="launch-text subsc_bull">
                            	<h4>'Pay as you go' Plan</h4>
								<h4>No hidden charges</h4>
								<h4>Option to ‘pause’ your subscription during summer</h4>
								<h4>Unlimited access to IE content</h4>
								<h4>Automatic updates</h4>
                            </div>
                            <div class="launch-btn">
                            	<a href="javascript:;" onclick="selectPaymentType(0);">Select</a>
                            </div>
                            
                           
                            
						</li> --%>
                        <li id="second" onclick="selectPaymentType(1);" class="width48p" style="margin-left: 200px;">
                        	<div class="launch-img">
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/teacher2.jpg">
                            	<h4 class="uper-hd-rght">$${teacherSubYrlyAmt}/<span>year</span></h4>
                            	<div id="paymentSelectDiv"></div>
                            </div>
                            <div class="launch-text subsc_bull">
                            	<h4>'Pre-Pay for year and save' Plan</h4>
								<!-- <h4>Save 50% subscription fee, before August 12, 2016</h4> -->
								<h4>No hidden charges</h4>
								<h4>Unlimited access to IE content</h4>
								<h4>Automatic updates</h4>
                            </div>
                            <div class="launch-btn">
                            	<a href="javascript:;" onclick="selectPaymentType(1);">Select</a>
                            </div>
                            
						</li>
					</ul>
				</div>
                 </div>
					
					</div>
					<div class="btns-outer mtop10">
					<input type="button" value="Done" class="submit-btn"  onclick="submitPaymentForm();"/>
					</div>
			</div>
		</section>
	</div>
	
	<form method="post" id="teacherPayment" name="teacherPayment" action="teacherPayment">
	<input type="text" name="paymentType" id="paymentType" value="">	
	</form>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%-- <%@include file="../footer.jsp"%> --%>
	
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
	
	<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>

	<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$("#header").sticky({ topSpacing: 0 });
		
		$("#login").click(function(e) {
		        $(".login_panel").toggle();
		        e.stopPropagation();
		    });

		    $(document).click(function(e) {
		        if (!$(e.target).is('.login_panel, .login_panel *')) {
		            $(".login_panel").hide();
		        }
		    });

		
		$.daisyNav();
		
		
		
		
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
   
    function selectPaymentType(selectedPaymentType){
    	//alert("selectedPaymentType"+selectedPaymentType);
    	if(selectedPaymentType == 0){
    		$('#second').removeClass('active');
    		$('#first').addClass('active');
    		
    		var zeroSelectImg='<img alt="" src="<%=request.getContextPath()%>/NewStyles/images/tick-mark.png" id="zeroSelect">';
    		$("#zeroSelectDiv").html(zeroSelectImg);
    		$("#paymentSelectDiv").html('');
    		$("#paymentSelect").prop('src','');
    		$("#zeroSelectDiv").addClass('launch-tick-mark');
    		$("#paymentSelectDiv").removeClass('launch-tick-mark');
    	}
    	else{
    		$('#first').removeClass('active');
    		$('#second').addClass('active');
    		$("#zeroSelect").prop('src','');
    		$("#zeroSelectDiv").html('');
    		var paymentSelectImg='<img alt="" src="<%=request.getContextPath()%>/NewStyles/images/tick-mark.png" id="paymentSelect">';
    		$("#paymentSelectDiv").html(paymentSelectImg);
    		
    		$("#paymentSelectDiv").addClass('launch-tick-mark');
    		$("#zeroSelectDiv").removeClass('launch-tick-mark');
    		
    	}
    	$("#paymentType").val(selectedPaymentType);
    	
    }
   
    function submitPaymentForm(){
    	var paymentType=$("#paymentType").val();
    	if(paymentType!="") {   	
    	$("#teacherPayment").submit();
    	}
    	else
   		{
   		alert("Please select any payment option.")
   		}
    
    }
    
    	
</script>
<script>
window.location.hash="";
window.location.hash="";//again because google chrome don't insert first hash into history
window.onhashchange=function(){window.location.hash="";}
</script>

</body>
</html>

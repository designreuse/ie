<%-- 
  - Author(s): Platform Z
  - Date: 09/19/2016
  - Copyright Notice: Platform Z
  - @(#)
  - Description: This is for Login as role based (Teacher,Super Hero,Parent,Principal)
  --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
	response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
	response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
%>
<!doctype html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="description" content="For just $10, you can bring Inner Explorer’s mindfulness programs to a teacher or classroom in your community. ">

<meta name="keywords" content="Give Mindfulness to Your Teacher">
<title>Gift Mindfulness This Season</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">

<!-- new -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/gift-page-style.css">
<script src="<%=request.getContextPath()%>/NewStyles/js/jssor.slider-21.1.5.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/slider.css">
 
<style>
  .sliderlayer1  img{height:500px !important}
  .giftNo select{height:46px !important}
  </style>
  <style>.bgIm_circl{background-image:url(NewStyles/images/step-img.png);background-repeat: no-repeat;

     color: #5a5a5a;
   font-size: 22px;
   height: 170px;
   line-height: 26px;
   min-height: 170px;
   padding: 60px 40px;
   text-align: left;}
   .number_css{ color: #5a5a5a !important; font-size: 90px !important; font-weight:100 !important}
   </style>
</head>
<body>
<div class="wrapper">
<header id="header">
    <div class="container ">
        <div class="logo"> <a href="<%=request.getContextPath()%>/" title="">
        </a> </div>
        <div class="hdRight">
           
           <a href="<%=request.getContextPath()%>/" title="Home">
            <div class="searchBox">
			<input type="button" class="home_icon">
		  </div>
           </a>
           
            <!-- <div class="startRight b4-login-mrgn"> <a href="/ie/login">
                <input type="button" title="Login" class="startBtn" value="Login">
                </a> </div> -->
        </div>
    </div>
</header>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-73908394-1', 'auto');
  ga('require', 'displayfeatures');
  ga('send', 'pageview');

</script>

    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        


        <!--about_us starts-->
        <div class="about_us">
            <div class="content_inner">            
                <div class="pracProgress_hdr">
                    <h2>Gift Mindfulness This Season</h2>
                    <div class="green_line_btm"></div>
                </div>				
			</div>

            <div id="jssor_1" class="sliderlayer1 banner1">      
        <div data-u="slides" class="image-outer">            
            <div data-p="225.00" style="display: none;">
                <img data-u="image" src="<%=request.getContextPath()%>/NewStyles/images/giftcard-P1.jpg"  />
                    <div class="container">
                        <div class="row">
                           <!--  <div class="col-md-12">
                                <div class="carousel-caption captwo">
                                  <div class="col-md-12 col-sm-12">
                                     <div class="banner-data1">
                                    <h2 class="">EMPOWER ONE STUDENT. <span class=""> CHANGE THE WORLD.</span></h2>
                                   <p>The holidays are a perfect time to reflect and be grateful for all the hope and positivity in our lives. But what about the children who are surrounded by stress, violence and trauma?
									As parents and educators, you know that students are facing more distraction and destruction than ever before, causing them to struggle in school and setting them on a negative cycle in life.
									</p>

                                   <p>At Inner Explorer we're creating a world of possibilities for more than 131,000 children in 850 schools. Now you can gift 1 Month of Mindfulness subscription to fellow teachers to practice for them to practice with their students. As a gesture, we at Inner Explorer will ‘match’ your gift and award the teacher 1 Month more. </p>
                                     
                                   <p class="underLinetxt">How to redeem?</p>
                                  <p>New teachers can use the one-time valid promo code on Get Started page while signing up for Classroom Edition for 1 Month</p>
								   <p>Existing teachers can redeem the code in their ‘Profile’ section after login and the expiry date of their subscription will be credited by 2 months.</p>
									<p>A teacher can redeem multiple gift cards. If a teacher redeems 5 gifts, they would automatically be credited for 1 year of Classroom edition.</p>
                                  
                                  </div>
                                  </div>
                                </div>
                            </div> -->
                        </div>
                    </div>
            </div>
           
        </div>
            </div>
        


<section class="process_sec">

   <div class="container">

       <div class="text-center how_it_wok">

           <h2>How does it work?</h2>
	
       </div>
		
       <div class="process pT30">

           <div class="process-row  col-md-12">
				

<!--NEW  -->    

                <%--  <div class="process-step col-md-4 col-xs-12 col-sm-4">

                      <div class="col-md-3 col-xs-3">

                          <strong class="number_css">1</strong>

                      </div>

                      <div class="bgIm_circl col-md-9 col-xs-9">YOU GIFT</div>

                </div>

                <div class="process-step col-md-4 col-xs-12 col-sm-4">

                      <div class="col-md-3 col-xs-3">

                          <strong class="number_css">2</strong>

                      </div>

                      <div class="bgIm_circl col-md-9 col-xs-9">TEACHER REGISTERS</div>

                </div>

                <div class="process-step col-md-4 col-xs-12 col-sm-4">

                      <div class="col-md-3 col-xs-3">

                          <strong class="number_css">3</strong>

                      </div>

                      <div class="bgIm_circl col-md-9 col-xs-9">KIDS PRACTICE DAILY!</div>

                </div> --%>

                <!--End NEW  -->
               <div class="process-step col-md-4">

                  <div class="circle">Give a $10 Gift-Card to Teachers in your life</div>

                   

               </div>

               <div class="process-step col-md-4">

                     <div class="circle">Inner Explorer Doubles the value of Your Contribution</div>

               </div>

               <div class="process-step col-md-4">

                     <div class="circle pT22">Let’s bring Gift of Mindfulness in every Classroom…Together</div>

               </div>


           </div>

       </div>  

   </div>    

</section>
			
			<form:form role="form" id="giftPageForm" action="buyGiftCard" class="register-form" modelAttribute="DtoGift" method="post">
            	<div class="get_program_school no_gaptp gnewcolor" id="giftForm">                
			        <section class="donation-section">
						<div class="container">
								
			                    <div class="form-row">
				                    <div class="row">
                                        <div class="col-md-10 col-md-offset-1">
                        					<div class="col-md-12 donrinfo-outr">
                        						<div class="">
                        							<h2 class="donr-info ">Your Information</h2>
                        						</div>
                        					</div>	
                        					<div class="col-md-6 col-sm-6 ">
                                                <input id="senderName" placeholder="Name" required="" type="text" name="senderName">
                                                
                                            </div>
                                            <div class="col-md-6 col-sm-6 ">
                                                <input id="senderEmail" placeholder="Email" required="" type="email" name="senderEmail" >
                                            </div>
                                            <div class="col-md-6 col-sm-6 ">
                                                <input id="phone" placeholder="Phone" required="" type="text" name="phone">
                                            </div>
                                            <div class="col-md-6 col-sm-6 ">
                                                <input id="address" placeholder="Address" required="" type="text" name="address">
                                            </div>
                                            <div class="col-md-12 donrinfo-outr">
                                                <div class=" pull-left">
                                                    <h2 class="donr-info pull-left">Please specify gift recipient:</h2>
                                                </div>
                                            </div>  
                                            <div class="col-md-12 col-sm-12 p0gift">
                                                        <div class="control-group" id="fields">
                                                            <div class="controls"> 
                                                                <div role="form" autocomplete="off" id="recipient">
                                                                
                                                                         <div class="voca">
                                                                          
                                                                            <div class="col-md-3">
                                                                                <input class="form-control" id="recieverName" placeholder="Teacher Name" required="" name="recieverName" type="text">
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <input class="form-control" id="recieverEmail" placeholder="Teacher Email" required="" name="recieverEmail" type="text" >
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                            <textarea class="form-control" placeholder="Message" name="message" row="2"></textarea>
                                                                            </div>
                                                                            <div class="col-md-2 giftNo" id="giftNo">
                                                                          <select class="form-control" id='giftdiv' onFocus=(this.defaultvalue=this.value)  onChange="test(this.defaultvalue,this.value);" value="1" name="numberOfGifts">
																			<option value="1" selected>1</option>
																			<option value="2">2</option>
																			<option value="3">3</option>
																			<option value="4">4</option>
																			<option value="5">5</option>
																			<option value="6">6</option>
																			</select>
																
                                                                            </div>
                                                                        
                                                                         
                                                                           <!--  <div class="col-md-4">
                                                                            <input class="form-control" value="1" id="giftAmount" name="giftAmount" type="text" >
                                                                            </div> -->
                                                                            <div class="pull-left col-md-1">
                                                                                <button type="button" class="btn btn-success btn-add">
                                                                                   +
                                                                                </button>
                                                                            </div>    
                                                                        </div>   
                                                                        
                                                                </div>
                                                            </div>
                                                        </div> 
                                            </div>
                                        </div>    
				                    </div>
				                    <div class="row">
                                        <div class="col-md-8 col-md-offset-2">
                                            <div class="col-md-12 p0">
                                                <div class="paymentOuterDv">
                                                     <div class="col-md-2 col-sm-12"><p class="title pay450gift">We accept</p></div>
                                                     <div class="col-md-10 imgpayGift">
                                        
                                        <img src="<%=request.getContextPath()%>/NewStyles/images/visa-card.jpg" alt="visa card">
                                        <img src="<%=request.getContextPath()%>/NewStyles/images/master-card.jpg" alt="master card">
                                        <img src="<%=request.getContextPath()%>/NewStyles/images/discover-card.jpg" alt="discover card">
                                        <img src="<%=request.getContextPath()%>/NewStyles/images/express-card.jpg" alt="express card">
                                        <img src="<%=request.getContextPath()%>/NewStyles/images/eCheck.png" alt="echeck">
                                        <span class="paypal-via">VIA &nbsp;</span>
                                        <img src="<%=request.getContextPath()%>/NewStyles/images/paypal.png" alt="paypal" style="padding:0;">
                                  
                                                    </div>
                                                </div>
                                            </div>      
                                        </div>    
                    					<div class="clear30newgift"></div>
                    					<div class="col-md-4 col-md-offset-4">
                                            <div class="price_card_gift">
                                                <div class="header_gift orderSummary_gift">
                                                    <div class="text-center">
                                                        <strong class="font-2">Order Summary</strong>
                                                    </div>
                                                </div>

                                                <ul class="features_gift cursor">
                                                    <table class="table table-striped table_gift">
                                                       
                                                        <tbody>
                                                            <tr>
                                                                <th scope="row" width="70%" valign="middle">
                                                                    Gift Subscriptions
                                                                </th>

                                                                <td id="subAmount"><p >1</p><!-- <p class="totl_amt">X $10</p> --></td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row" width="70%" valign="middle">Amount Due </th>
                                                                <td id="dueAmount" align="center"><p class="amountBox">$10</p></td>
                                                                <input type="hidden" name="amount" id="amount" value="10">
                                                            </tr>

                                                        </tbody>
                                                    </table>
                                                </ul>
                                                <div class="col-md-12 p0gift text-center">
                                                    <button type="submit" class="green_btn_home_gift">Proceed
                                                        to pay</button>
                                                </div>
                                            </div>
                                        </div>
				                    </div>	
			                    </div>
							
                              <input id="counter"  value="2" type="hidden" > 

						</div>
					</section>                            
                </div>
                </form:form>
        </div>
        
    </div>
      <div>
    <p align="center">Note: This promotional offer applies to new teachers only and does not apply to teachers already practicing mindfulness with the IE Program.</p>
    </div>
    <!--inner_wrapper ends-->
<div id="above_footer" class="dntfrthIn" style="text-align:center; color:#fff; font-size:13px; border-radius:0px;width:100%">
          Funds collected will be considered part of Inner Explorer's unrestricted general fund, or may be used to support the general charitable mission and programs of Inner Explorer.</div>

 
    <style type="text/css">
    .entry:not(:first-of-type)
{
    margin-top: 10px;
}

.glyphicon
{
    font-size: 12px;
}
.danger {
	border-color: red;
}
    </style>
  
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen"/>

<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.fancybox.pack.js?v=2.1.5"></script>
<!-- <script type="text/javascript">
jQuery(document).ready
(function($){
$(".fancybox").fancybox();
});
</script> -->
<!-- <footer>
    <div class="container">
        <div class="footerLeft">
            <p>Copyright © 2016 Inner Explorer</p>
        </div>
        <div class="footerRight">
            <ul>
                <li><a href="#privacy" class="fancybox">Privacy Policy</a></li>
                <li><a href="#terms" class="fancybox">Terms & Conditions</a></li>
            </ul>
        </div>
    </div>
</footer> -->


<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="NewStyles/js/bootstrap.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/dateFormat.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.formatCurrency.all.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>


<script type="text/javascript">
    $(function()
        {
    	
    	  var giftNoDiv='<select class="form-control" id="giftdiv'+1+'" onFocus=(this.defaultvalue=this.value) placeholder="Quantity"  onChange="test(this.defaultvalue,this.value)" name="numberOfGifts">'+
  		'<option value="1" selected>1</option>'+
  		'<option value="2">2</option>'+
  		'<option value="3">3</option>'+
  		'<option value="4">4</option>'+
		'<option value="5">5</option>'+
		'<option value="6">6</option>'+
  		'</select>';
  		$('#giftNo').html(giftNoDiv);
  		
  		 
  		
  		   
  		
    	
    $(document).on('click', '.btn-add', function(e)
    {
        e.preventDefault();

        var controlForm = $('#recipient'),
            currentEntry = $(this).parents('.voca:first'),
            newEntry = $(currentEntry.clone()).appendTo(controlForm);
        var addSubAmount=parseInt($("#subAmount").find("p")[0].innerHTML)+1;
     /*    var addDueAmount=addSubAmount*10; */
     
     var addDueAmount=parseInt($("#dueAmount").find("p")[0].innerHTML.substring(1, $("#dueAmount").find("p")[0].innerHTML.size))+10;
        
        
    	$("#subAmount").find("p")[0].innerHTML=addSubAmount;
    /* 	$("#dueAmount").find("p")[0].innerHTML="$"+addDueAmount; */
    
    $("#dueAmount").find("p")[0].innerHTML="$"+addDueAmount; 
        newEntry.find('input').val('');
        controlForm.find('.btn-add:not(:last)')
            .removeClass('btn-default').addClass('btn-rmv')
            .removeClass('btn-add').addClass('btn-remove')
            
            .html('-');
        var counter=$("#counter").val();
        /* alert(counter); */
        
        var giftNoDiv='<select class="form-control" id="giftdiv'+counter+'" onFocus=(this.defaultvalue=this.value)  onChange="test(this.defaultvalue,this.value)" name="numberOfGifts">'+
		'<option value="1" selected>1</option>'+
		'<option value="2">2</option>'+
		'<option value="3">3</option>'+
		'<option value="4">4</option>'+
		'<option value="5">5</option>'+
		'<option value="6">6</option>'+
		'</select>'; 
		
		$('#counter').val(parseInt(counter)+1);
       /*  controlForm.find('.giftNo.:not(:last)') */

        
  /*  controlForm.find('.giftNo:last').html(giftNoDiv); */
    
        
    }).on('click', '.btn-remove', function(e)
    {  /* alert($(this).parents('.voca:first').children('.giftNo').children()[0].value ); */
        $(this).parents('.voca:first').remove();
      
        var removeSubAmount=parseInt($("#subAmount").find("p")[0].innerHTML)-1;
   
        var removeDueAmount=parseInt($("#dueAmount").find("p")[0].innerHTML.substring(1, $("#dueAmount").find("p")[0].innerHTML.size))-parseInt($(this).parents('.voca:first').children('.giftNo').children()[0].value)*10;
        
    	$("#subAmount").find("p")[0].innerHTML=removeSubAmount;
    	$("#dueAmount").find("p")[0].innerHTML="$"+removeDueAmount;
        e.preventDefault();
        return false;
    });
});
    
    

    </script>


<script>


function test(oldval ,newval){
	
	/* alert(oldval);
	alert(newval); */
var addDueAmount=parseInt($("#dueAmount").find("p")[0].innerHTML.substring(1, $("#dueAmount").find("p")[0].innerHTML.size))+(newval-oldval)*10;
$("#dueAmount").find("p")[0].innerHTML="$"+addDueAmount; 


	    var previous;

	   

}

</script>
<script>
jssor_1_slider_init = function() {
    
    var jssor_1_SlideoTransitions = [
      [{b:-1,d:1,o:-1},{b:0,d:1000,o:1}],
      [{b:1900,d:2000,x:-379,e:{x:7}}],
      [{b:1900,d:2000,x:-379,e:{x:7}}],
      [{b:-1,d:1,o:-1,r:288,sX:9,sY:9},{b:1000,d:900,x:-1400,y:-660,o:1,r:-288,sX:-9,sY:-9,e:{r:6}},{b:1900,d:1600,x:-200,o:-1,e:{x:16}}]
    ];
    
    var jssor_1_options = {
      $AutoPlay: true,
      $SlideDuration: 800,
      $SlideEasing: $Jease$.$OutQuint,
      $CaptionSliderOptions: {
        $Class: $JssorCaptionSlideo$,
        $Transitions: jssor_1_SlideoTransitions
      },
      $ArrowNavigatorOptions: {
        $Class: $JssorArrowNavigator$
      },
      $BulletNavigatorOptions: {
        $Class: $JssorBulletNavigator$
      }
    };
    
    var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
    
    //responsive code begin
    //you can remove responsive code if you don't want the slider scales while window resizing
    function ScaleSlider() {
        var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
        if (refSize) {
            refSize = Math.min(refSize, 1920);
            jssor_1_slider.$ScaleWidth(refSize);
        }
        else {
            window.setTimeout(ScaleSlider, 30);
        }
    }
    ScaleSlider();
    $Jssor$.$AddEvent(window, "load", ScaleSlider);
    $Jssor$.$AddEvent(window, "resize", ScaleSlider);
    $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
    //responsive code end
};
</script>

<%@include file="footer.jsp"%>

 <script>
$('#giftPageForm').validate({
        errorElement: 'p', //default input error message container
        errorClass: 'help-block val_message', // default input error message class
        focusInvalid: true, // do not focus the last invalid input
        ignore: "",
        rules: {
        	address:{
        		required: true,
             maxlength : 20
        	},
        	
     	senderEmail:{
        		required: true,
        		email:true
        	},
        	senderName:{
     		required: true,
             maxlength :100
        	},    	
        	phone:{
      	      required:true,
      	  minlength:10,
      	  maxlength:10,
      	  number: true
      	  },
      	 recieverEmail:{
       		required: true,
       		email:true
       	},
       	recieverName:{
     		required: true,
            maxlength :100
       	}
      },
      

        invalidHandler: function(event, validator) { //display error alert on form submit   
        },

        highlight: function(element) { // hightlight error inputs
            $(element)
                .closest('.outer-field').addClass('has-error'); // set error class to the control group
            $(element)
                .closest('.fullrow').addClass('has-error'); // set error class to the control group
        },

        success: function(label) {
            label.closest('.outer-field').removeClass('has-error');
            label.remove();
        },

        errorPlacement: function(error, element) {
            if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
                error.insertAfter($('#register_tnc_error'));
            } else if (element.closest('.input-icon').size() === 1) {
                error.insertAfter(element.closest('.input-icon'));
            } else {
                error.insertAfter(element);
            }
        },

        submitHandler: function(form) {
            		form.submit();
        }
    });
		
    
   </script> 
   <script type="text/javascript">
	jssor_1_slider_init();
</script>
</body>
</html>

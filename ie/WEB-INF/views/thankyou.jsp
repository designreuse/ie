<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


<title>Thank you</title>

<!-- Bootstrap core CSS -->
<link
	href="<%=request.getContextPath()%>/NewStyles/assets/css/bootstrap.min.css"
	rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link
	href="<%=request.getContextPath()%>/NewStyles/assets/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">
<script
	src="<%=request.getContextPath()%>/NewStyles/assets/js/ie-emulation-modes-warning.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- Custom styles for this template -->
<link
	href="<%=request.getContextPath()%>/NewStyles/assets/css/main-style.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">

<style type="text/css">
/*  .ui-state-active ~ .price-form, .ui-state-hover ~ .price-form{display: none !important}*/
</style>
</head>
<!-- NAVBAR
================================================== -->
<body>

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header col-md-12 col-sm-12">
				<div class="navbar-header col-sm-5 p00">
					<!-- <button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button> -->
					<a class="navbar-brand" href="#"><img src="<%=request.getContextPath()%>/NewStyles/img/logo.png"
								alt="face" class="img-responsive logo_hh" /></a>
					<p class="brand_nam">HELP HEAL PROJECT</p>
					<i class="fS12">Powered by – Inner Explorer & Small Strides Foundation</i>
				</div>			
				<div class="navbar-header col-sm-7 p00">
					<strong class="titl_top">Thank You</strong>
				</div>
			</div>

		</div>
	</div>

	<div class="main_wrapper_innerPage">
		<!-- <section class="inner_sec_banner">
			<div class="banner-inner hero">
				<div class="container">
					<div class="banner-text">
						<h1>Thank You</h1>
						<span class="bottom-border"></span>
					</div>
				</div>
			</div>
		</section> -->
		<!-- From -->
		<section class="form_inner_secP mT100-1">
			<div class="container">
				<div class="row">
					
					
					<div class="col-md-12 text-center">
						<i class="fa fa-smile-o" aria-hidden="true" style="font-size:400px; color:#006699; "></i>
						<br>
						<a href="<%=request.getContextPath()%>/helpHeal">
				<button type="button" class="btn btn-primary" style="font-size: 20px;">GO TO HOMESCREEN</button></a>
					</div>
					
				</div>
			</div>
		</section>
	</div>


	<!-- Bootstrap core JavaScript-->
	<script
		src="<%=request.getContextPath()%>/NewStyles/assets/js/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="<%=request.getContextPath()%>/NewStyles/assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="<%=request.getContextPath()%>/NewStyles/assets/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="<%=request.getContextPath()%>/NewStyles/assets/js/ie10-viewport-bug-workaround.js"></script>
	<link rel="stylesheet"
		href="https://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
	<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#slider").slider({
				range : "min",
				animate : true,
				value : 0,
				min : 0,
				max : 10,
				step : .5,
				slide : function(event, ui) {
					update(1, ui.value); //changed
				}
			});

			//Added, set initial value.
			$("#amount").val(0);
			$("#amount-label").text(0);

			update();
		});

		//changed. now with parameter
		function update(slider, val) {
			//changed. Now, directly take value from ui.value. if not set (initial, will use current value.)
			var $amount = slider == 1 ? val : $("#amount").val();

			/* commented
			 $amount = $( "#slider" ).slider( "value" );
			 $duration = $( "#slider2" ).slider( "value" );
			 */

			$("#amount").val($amount);
			$("#amount-label").text($amount);

			$('#slider a')
					.html(
							'<label id="point_slider">'
									+ $amount
									+ '</label><div class="ui-slider-label-inner"></div>');
		}
	</script>
	<script type="text/javascript">
		$('#point_slider').draggable();
	</script>
	<script type='text/javascript'>
		//<![CDATA[
		/*   $(window).load(function(){
		  $(".ui-state-active").focus(function(){
		        $('#amount-label').show();

		         },function(){
		        $('#amount-label').hide();
		    });
		  $('#amount-label').hide();
		});*/
		/*   $(window).load(function(){
		   $('.ui-state-active').focus(function() {
		       $('div.point_slider').show();
		       $(document).bind('focusin.ui-state-active click.ui-state-active',function(e) {
		           if ($(e.target).closest('.ui-state-active #amount-label').length) return;
		           $(document).unbind('#amount-label');
		           $('#amount-label').fadeOut('medium');
		       });
		   });
		   
		   });//]]> */
	</script>
</body>

</html>

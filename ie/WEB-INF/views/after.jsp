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
<link rel="icon" href="http://getbootstrap.com/favicon.ico">

<title>After Experience</title>

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
					<strong class="titl_top">AFTER PRACTICE</strong>
				</div>
			</div>

		</div>
	</div>

	<div class="main_wrapper_innerPage mT100-1">
		<!-- <section class="inner_sec_banner">
			<div class="banner-inner hero">
				<div class="container">
					<div class="banner-text">
						<h1>After</h1>
						<span class="bottom-border"></span>
					</div>
				</div>
			</div>
		</section> -->
		<!-- From -->
		<section class="form_inner_secP">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<img src="<%=request.getContextPath()%>/NewStyles/img/face.jpg"
							alt="face" class="img-responsive" />
					</div>
					<div class="col-md-12">
						<div class="price-box  pull-left">
							<form class="form-horizontal" role="form" action="updatePainLevel" method="post">
								<div class="price-slider">

									<div class="col-sm-11" style="margin-left: 4%;">
										<div id="slider"></div>
									</div>
								</div>
								<div class="price-form pull-left col-md-12">
									<div class="form-group">

										<div class="col-sm-12 text-center">
											<input type="hidden" id="amount" name="painAmountAfter" class="form-control">

											<p class="price lead" id="amount-label"></p>
											<span class="price"></span>
										</div>
									</div>
								</div>
								 <div class="col-sm-12 text-center">

									<button type="submit" class="btn btn-primary" style="font-size: 20px;">Check Out</button>
								</div> 
							</form>
						</div>
					</div>
					<div class="col-md-12 pull-left">
						<img src="<%=request.getContextPath()%>/NewStyles/img/text.jpg"
							alt="face" class="img-responsive" />
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
				step : .1,
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

			$("#amount").val($amount);
			if ($("#amount").val() == 1 || $("#amount").val() == 2
					|| $("#amount").val() == 3 || $("#amount").val() == 4
					|| $("#amount").val() == 5 || $("#amount").val() == 6
					|| $("#amount").val() == 7 || $("#amount").val() == 8
					|| $("#amount").val() == 9 || $("#amount").val() == 10) {
				//$("#amount").text($amount+".0");
				$("#amount-label").text($amount + ".0");
				$('#slider a')
						.html(
								'<label id="point_slider">'
										+ $amount
										+ '.0</label><div class="ui-slider-label-inner"></div>');
			} else {
				// $("#amount").text($amount);
				$("#amount-label").text($amount);
				$('#slider a')
						.html(
								'<label id="point_slider">'
										+ $amount
										+ '</label><div class="ui-slider-label-inner"></div>');
			}
		}
	</script>
	<script type="text/javascript">
		$('.ui-slider-handle').draggable();
	</script>
	
</body>

</html>

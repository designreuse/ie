<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="http://getbootstrap.com/favicon.ico">

<title>Check In</title>

<!-- Bootstrap core CSS -->
<link href="<%=request.getContextPath()%>/NewStyles/assets/css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="<%=request.getContextPath()%>/NewStyles/assets/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">
<script src="<%=request.getContextPath()%>/NewStyles/assets/js/ie-emulation-modes-warning.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/NewStyles/assets/css/main-style.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
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
					<strong class="titl_top">CHECK IN</strong>
				</div>
			</div>
			<!--  <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#about">About</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Username</a></li>
      </ul>
    </div> -->
		</div>
	</div>

	<div class="main_wrapper_innerPage mT100px">
		<!-- <section class="inner_sec_banner">
			<div class="banner-inner hero">
				<div class="container">
					<div class="banner-text">
						<h1>CHECK IN</h1>
						<span class="bottom-border"></span>
					</div>
				</div>
			</div>
		</section> -->
		<!-- From -->
		<section class="form_inner_secP">
			<div class="container">
				<div id="loginbox"
					class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-default">

						<div style="padding-top: 30px" class="panel-body">

							<form id="loginform" class="form-horizontal" role="form" action="updateHelpHealUsers" method="post">

								<div class="input-group form_custom">
									<select class="form-control" name="ageGroup">
										<option value="1">3-4 [Pre-k Kids]</option>
										<option value="2">5-9 [Elementary Kids]</option>
										<option value="3">9-14 [Middle School Kids]</option>
										<option value="4">14-18 [High School Kids]</option>
									</select>
								</div>
								<div class="input-group form_custom">
									<select class="form-control" name="symptoms" id="symptoms">
										<option value="My head hurts/Headache">My head hurts/Headache</option>
										<option value="My stomach hurts/Stomach ache">My stomach hurts/Stomach ache</option>
										<option value="My throat hurts">My throat hurts</option>
										<option value="Low grade fever/rest in clinic">Low grade fever/rest in clinic</option>
										<option value="I dont feel good">I don't feel good</option>
										<option value="Anxiety/panic attack">Anxiety/panic attack</option>
										<option value="I hurt myself/injury">I hurt myself/injury</option>
										<option value="I have cramps">I have cramps</option>
										<option value="Others">Others</option>
									</select>
								</div>

								<div class="input-group form_custom">
									<input type="text" name="other_symptm" class="form-control" id="other_symptm" />
								</div>
								
								<div class="form-group">
									<!-- Button -->

									<div class="col-sm-12 controls text-center">
										<button type="submit" id="btn-login" class="btn check_in_btn" style="font-size: 20px;">Check-In
										</button>
									</div>
								</div>


								
							</form>



						</div>
					</div>
				</div>

			</div>
		</section>
	</div>


	<!-- Bootstrap core JavaScript-->
	<script src="<%=request.getContextPath()%>/NewStyles/assets/js/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="<%=request.getContextPath()%>/NewStyles/assets/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="<%=request.getContextPath()%>/NewStyles/assets/js/ie10-viewport-bug-workaround.js"></script>

<script type='text/javascript'>
		$(window).load(function(){
		 	var $symptm = $('#symptoms'),
		    $other_symptm = $('#other_symptm');
			$symptm.change(function() {
				if ($symptm.val() == 'Others') {
		      		$other_symptm.show();
				} else {
		        	$other_symptm.hide();
		     	}
			}).trigger('change');
		});
	</script>	
</body>

</html>

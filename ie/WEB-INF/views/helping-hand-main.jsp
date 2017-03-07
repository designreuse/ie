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


<title>Login</title>

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

<style>
.p0{padding:0 !important}
</style>
</head>
<!-- NAVBAR
================================================== -->
<body>
	
	<div class="wide wide_banner">
		<%-- <div class="col-xs-5 line">
			<hr>
		</div>
		<div class="col-xs-2 logo">
			<img src="<%=request.getContextPath()%>/NewStyles/img/logo.png"
                            alt="face" class="img-responsive logo_hh"/></div>
		<div class="col-xs-5 line">
			<hr>
		</div> --%>
		<div class="container">
			<div class="carousel-caption">
				<div class="col-md-6 col-md-offset-3 pull-left col-xs-12">
					<div class="text-center">
					</div>
					<form class="main_page_form">
                        <div class="col-md-12">
                        	<img src="<%=request.getContextPath()%>/NewStyles/img/logo.png"
                            alt="face" class="img-responsive start_splsh" style="width:120px; padding-left: 20px;" />
                        	<h1 style="color:#006699; font-size:26px">HELP HEAL PROJECT</h1>
                           	<div class="col-md-6 col-sm-6 text-right">
                           		<p style="color:#5c5c5c; font-size: 17px; float:left; padding-left: 40px"><i>Powered by</i></p>
                           	</div>
                           	<div class="col-md-6 col-sm-6 p0">
                           		<img style="width:150px; float:left; padding-left: 5px;" src="/ie/NewStyles/images/ie-logo.png"/>
                           	</div>
                           	<div class="col-md-12 p0" style="float: left;width: 100%;">
                           		<p style="color:#5c5c5c; font-size: 17px; "><i>& Small Strides Foundation<br></i></p>
                           	</div>
                  		</div>
                  		<div class="clear20"></div>
                        <div class="col-sm-12" style="float: left; width: 100%;">
							<a href="<%=request.getContextPath()%>/helpingHandLogin">
							<button type="button" class="btn btn-primary" style="font-size: 20px;">START</button></a>
						</div>
					</form>
					
					
				</div>
			</div>
		</div>
	</div>

	


	<!-- Bootstrap core JavaScript-->
	<script src="<%=request.getContextPath()%>/NewStyles/assets/js/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="<%=request.getContextPath()%>/NewStyles/assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="<%=request.getContextPath()%>/NewStyles/assets/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="<%=request.getContextPath()%>/NewStyles/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
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


</head>
<!-- NAVBAR
================================================== -->
<body>
	
	<div class="wide">
		<div class="col-xs-5 line">
			<hr>
		</div>
		<div class="col-xs-2 logo">
			<img src="<%=request.getContextPath()%>/NewStyles/img/logo.png"
                            alt="face" class="img-responsive logo_hh"/></div>
		<div class="col-xs-5 line">
			<hr>
		</div>
		<div class="container">
			<div class="carousel-caption">
				<div class="col-md-6 col-md-offset-3 pull-left">
					<div class="text-center">
						<h1 class="login_txt">LOGIN</h1>
					</div>
					<form class="main_page_form" method="post" action="helpHealLoginCheck">
						<div class="form-group">
							<div class="icon-addon addon-md">
								<input type="text" placeholder="Email" class="form-control"
									id="email" name="email">
							</div>
						</div>
						<div class="form-group">
							<div class="input-group input-group-lg">
								<div class="icon-addon addon-lg">
									<input type="password" placeholder="Password"
										class="form-control" id="password" name="password">
								</div>
								<span class="input-group-btn">
									<button type="submit" class="btn btn-default go_btn">								
										<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>
									</button>
								</span>
							</div>
							<div class="has-error">
									<span id="error" ></span>
							</div>
						</div>
						<!-- <div class="form-group">
									<div class="col-md-12 control">
										<div>
											Don't have an account! <a href="#"> Sign Up Here </a>
										</div>
									</div>
								</div> -->
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
	<script type="text/javascript">
	var status= ${loginStatus};
	if(status == 0)
		{
			document.getElementById("error").innerHTML = "Invalid Email/Password. Please enter again.";		
		}
	</script>
</body>
</html>

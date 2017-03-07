
<!DOCTYPE html>
<html class=''>
<head>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<link rel='stylesheet prefetch'
	href='https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css'>
<style class="cp-pen-styles">
@import url(https://fonts.googleapis.com/css?family=Raleway:400,700);

body {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	height: 100vh;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	background: #f9f9f9;
	font-family: Raleway;
	color: white;
	letter-spacing: 1px;
}

.card-form {
	width: 580px;
	border-radius: 10px;
	background: #ffffff;
	box-shadow: 0 27px 55px 0 rgba(0, 0, 0, 0.3), 0 17px 17px 0
		rgba(0, 0, 0, 0.15);
}

.card-form1 {
	width: 500px;
	background: #f9f9f9;
	float: left;
	padding: 20px 40px !important;
	/* border-radius: 10px; background: #f9f9f9; box-shadow: 0 27px 55px 0 rgba(0, 0, 0, 0.3), 0 17px 17px 0 rgba(0, 0, 0, 0.15); */
}

.card-form .form-title {
	width: 100%;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	height: 80px;
	font-size: 20px;
	font-weight: bold;
	background: #27ae60;
	border-radius: 0;
}

.card-form .form-body {
	padding: 10px;
}

.card-form .form-body .row {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-pack: distribute;
	justify-content: space-around;
	padding: 10px;
}

.card-form .form-body .row input[type="text"] {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	width: 100%;
	margin: 0 15px;
	height: 35px;
	padding: 5px 15px;
	border-radius: 5px;
	outline: none;
	border: none;
	background: #e8ebed;
	color: #576366;
	font-size: 14px;
}

.text-area {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	width: 100%;
	margin: 0 15px;
	height: 35px;
	padding: 5px 15px;
	border-radius: 5px;
	outline: none;
	border: none;
	background: #e8ebed;
	color: #576366;
	font-size: 14px;
}

.card-form .rule {
	height: 2px;
	background: #e8ebed;
	margin: 0px 35px;
}

.card-form .form-footer {
	margin: 0 25px 15px 25px;
	padding: 15px 10px;
}

.card-form .form-footer a {
	display: inline-block;
	height: 40px;
	line-height: 40px;
	border: none;
	border-radius: 5px;
	padding: 5px 15px;
	background: #27ae60;
	margin-right: 10px;
	font-size: 14px;
}

.card-form .form-footer span {
	margin-left: 8px;
}

.button {
	display: inline-block;
	color: #fff !important;
	line-height: 40px;
	border: none;
	border-radius: 5px;
	padding: 5px 15px;
	background: #27ae60;
	margin-right: 10px;
	font-size: 14px;
	cursor: pointer;
}

.container_new {
	width: 100%;
	float: left;
}

.half_div {
	width: 50%;
	float: left;
}

.clear10 {
	float: left;
	width: 100%;
	min-height: 10px
}

.col-md-8 {
	width: 600px;
	float: left;
}

.right {
	float: right;
	margin-right: 0px
}

.app-icon {
	width: 100px !important
}

.full_div {
	float: left;
	width: 100%;
}

.col-md6 {
	width: 60%;
	float: left;
}

.col-md3 {
	width: 20%;
	float: left;
}

.text_black {
	color: #3d3d3d;
	font-size: 14px
}

.android {
	float: left;
	margin-top: -1px;
}

input[type="submit"]:disabled {
	background: #dddddd;
}
</style>
</head>
<body>

	<div class="card-form">
		<div class="card-form1">
			<div class="half_div">
				<img
					src="<%=request.getContextPath()%>/NewStyles/images/ie-logo-wisdom.png"
					class="left" width="120px">
			</div>
			<div class="half_div">
				<img src="http://www.wisdom2summit.com/local/2017/logo-duo-tone.png"
					class="right" width="120px">
			</div>
		</div>

		<form:form class="signup" id="wisdomSignup">
			<div class="form-title">Sign Up!</div>
			<div class="form-body">
				<div class="row">
					<input type="text" placeholder="Name*" id="name" name="name">
					<input type="text" placeholder="Email*" id="email" name="email">

				</div>
				<div class="row">
					<input type="text" placeholder="Phone" id="phone" name="phone">
				</div>
				<div class="row">
					<!-- 					<input type="text" placeholder="Role Type" id="role" name="role">
 -->
					<textarea placeholder="Notes" id="role" name="role" col="4"
						class="text-area"></textarea>
				</div>
			</div>
			<div class="rule"></div>
			<div class="form-footer">
				<input type="button" class="button" onClick="saveForm();"
					id="saving" value="Save">
			</div>
		</form:form>

		<div class="card-form1">
			<div class="full_div">
				<div class="col-md6">
					<p class="text_black">Inner Explorer App For Home Edition</p>
				</div>
				<div class="col-md3">
					<a href="#!"><img
						src="<%=request.getContextPath()%>/NewStyles/images/androidstore.png"
						class="app-icon android"></a>
				</div>
				<div class="col-md3">
					<a href="#!"><img
						src="<%=request.getContextPath()%>/NewStyles/images/appstore.png"
						class="app-icon"></a>
				</div>
			</div>
		</div>

	</div>
	<script src="http://code.jquery.com/jquery-1.9.1.js"
		type="text/javascript"></script>


	<script type="text/javascript">
	
	
    
    function saveForm(){
 	
    	
    	
      	var name = $("#name").val();
       	var phone = $("#phone").val();
    	var role = $("#role").val();
    	var email = $("#email").val();
    
    	var form = document.getElementById("wisdomSignup");
    	
    	
    	if (name == '')
    	{
    		
    		alert('Please Enter Name');
    	}
    	if (email == '')
    	{
    		
    		alert('Please Enter Email');
    	}
    	else{ $.ajax({

    		url:"<%=request.getContextPath()%>/saveWisdomForm",
				method : 'POST',
				async : false,
				data : {
					"name" : name,
					"email" : email,
					"phone" : phone,
					"role" : role

				},

				cache : false,

				success : function(response) {
					
				
					alert('Thank You For Signing Up');
					$("#name").val("");
					$("#email").val("");
					$("#phone").val("");
					$("#role").val("");
					

				}
				
				
			}); 
    	}
		}
	</script>
</body>
</html>
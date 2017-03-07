<%-- <!DOCTYPE html>

<html lang="en" class="no-js">

<head>
<meta charset="utf-8"/>
<title>IE | Forgot Password</title>

<script>
jQuery(document).ready(function() {  
	jQuery('.forget-form').show();
	$('.forget-form').validate({
        errorElement: 'span', //default input error message container
        errorClass: 'help-block', // default input error message class
        focusInvalid: false, // do not focus the last invalid input
        ignore: "",
        rules: {
            email: {
                required: true,
                email: true
            }
        },

        messages: {
            email: {
                required: "Email is required."
            }
        },

        invalidHandler: function(event, validator) { //display error alert on form submit   
        },

        highlight: function(element) { // hightlight error inputs
            $(element)
                .closest('.form-group').addClass('has-error'); // set error class to the control group
        },

        success: function(label) {
            label.closest('.form-group').removeClass('has-error');
            label.remove();
        },

        errorPlacement: function(error, element) {
            error.insertAfter(element);
        },

        submitHandler: function(form) {
            form.submit();
        }
    });

});
</script>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="login">
<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
<div class="menu-toggler sidebar-toggler">
</div>
<!-- END SIDEBAR TOGGLER BUTTON -->
<!-- BEGIN LOGO -->
<div class="logo">
	<a href="index.html">
	<img src="<%=request.getContextPath()%>/assets/admin/layout/img/logo-big.png" alt=""/>
	</a>
</div>
<!-- END LOGO -->
<!-- BEGIN LOGIN -->
<div class="content">
        	<!-- BEGIN FORGOT PASSWORD FORM -->
 	<form class="forget-form" action="forgotpasswordrequest" method="post">
		<h3>Forget Password ?</h3>
		<p>
			 Enter your e-mail address below to reset your password.
		</p>
                		<c:if test="${invaildforgotRequest=='402'}">
							<font color="red" style="text-align: center;" id="invaildforgotRequest">Please enter valid email.</font>
						</c:if>
						<c:if test="${invaildforgotRequest=='403'}">
							<font color="red" style="text-align: center;" id="invaildforgotRequest">You are not authorized to perform this action.</font>
						</c:if>
                		<c:if test="${invaildforgotRequest=='404'}">
							<font color="red" style="text-align: center;" id="invaildforgotRequest">You are not authorized to perform this action blocked by admin.</font>
						</c:if>
						<c:if test="${invaildforgotRequest=='401'}">
							<font color="red" style="text-align: center;" id="invaildforgotRequest" >Internal server error.</font>
						</c:if>
						<%session.removeAttribute("invaildforgotRequest"); %>
		<div class="form-group">
			<input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Email" name="email"/>
		</div>
		<div class="form-actions">
			<button type="button" onclick="window.location.href='<%=request.getContextPath()%>/adminlogin'" class="btn btn-default">Back</button>
			<button type="submit" class="btn btn-success uppercase pull-right">Submit</button>
		</div>
	</form> 
	<!-- END FORGOT PASSWORD FORM -->
        </div>
        <div class="copyright">
        	 2016 © IE. .
        </div>
        <!-- END LOGIN -->
        </body>
        <!-- END BODY -->
        </html> --%>
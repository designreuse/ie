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
<!DOCTYPE html>

<html lang="en" class="no-js">

<head>
<meta charset="utf-8"/>
<title>IE | Reset Password</title>
<script>
jQuery(document).ready(function() {  
	jQuery('.forget-form').show();
	$('.forget-form').validate({
        errorElement: 'span', //default input error message container
        errorClass: 'help-block', // default input error message class
        focusInvalid: false, // do not focus the last invalid input
        ignore: "",
        rules: {
            password: {
                required: true,
        		minlength : 6,
        		maxlength : 20
            },
            confirmpassword: {
                equalTo: "#password"
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
<!-- BEGIN RESET -->
<div class="content">
		<form class="forget-form"
			action="<%=request.getContextPath()%>/reset-password" method="post">
			<h3>Reset Password</h3>
			<input name="userId" type="hidden" value="${userId}">
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">New
					Password</label> <input class="form-control placeholder-no-fix"
					name="password" placeholder="New Password" type="password"
					id="password" />
			</div>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Confirm
					Password</label> <input class="form-control placeholder-no-fix"
					type="password" placeholder="Confirm Password"
					name="confirmpassword" id="confirmPassword" />
			</div>
			<div class="form-actions">
				<button type="submit" id="register-submit-btn"
					class="btn btn-success uppercase pull-right">Reset</button>
			</div>
		</form>
	</div>
        <div class="copyright">
        	 2016 © IE. .
        </div>
        <!-- END RESET -->
        </body>
        <!-- END BODY -->
        </html>

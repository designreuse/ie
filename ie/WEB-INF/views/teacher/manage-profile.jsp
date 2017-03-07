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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="full" lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcome - Inner Explorer</title>

    <!-- Bootstrap Core CSS -->
    <link href="<%=request.getContextPath()%>/NewStyles/css/wisdom/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
<!--     <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css"> -->
    <link href="<%=request.getContextPath()%>/NewStyles/css/wisdom/the-styles.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/NewStyles/css/wisdom/inner-pages-style.css" rel="stylesheet">
    <link href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        /*.begin_btn{background-color: #5a883a; padding: 20px 10px; color: #fff !important}
        .begin_btn:hover{}*/
        body, html{font-family: "Raleway" !important,}
    </style>
</head>

<body class="img_full_sditoe_profile">
    <nav class="navbar navbar-default navbar-fixed-top navbar-transparent">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        <!--   <a class="navbar-brand ie-logo" href="#"><img src="images/ie-logo.png"></a> -->
        </div>
        <div id="navbar" class="navbar-collapse collapse">         
          <ul class="nav navbar-nav navbar-right nara_nav">
          <li class="pT20">
           <div class="dropdown notification_editor">
              <button class="btn btn-default dropdown-toggle bell_ico" type="button" id="menu1" data-toggle="dropdown">
              <i class="glyphicon glyphicon-bell"></i></button>
              <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                <li>
                    <a href="#">
                        <i class="glyphicon glyphicon-bell noto_ico"></i>Manoj joined IE
                        <span class="small italic pull-right">5 mins</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="glyphicon glyphicon-bell noto_ico"></i>Manoj joined IE
                        <span class="small italic pull-right">5 mins</span>
                    </a>
                </li>
              </ul>
            </div>
          </li>
          </ul>
        </div>

        <!--/.nav-collapse -->
      </div>
    </nav>
<div id="mySidenav" class="sidenav">
  <div class="col-md-10 text-center">
      <h1 class="editor_name_menu">${loginName}</h1>
  </div>
  <div class="col-md-2">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  </div>
  
 <div class="side_menu_editor">
      <ul class="list-group">
        <li class="list-group-item"><a href="<%=request.getContextPath()%>/teacher/manage">Manage Profile</a></li>
        <li class="list-group-item"><a href="<%=request.getContextPath()%>/teacher/aboutMe">About Me</a></li>
        <li class="list-group-item"><a href="#!">Contact Information</a></li>
        <li class="list-group-item"><a href="#!">Subscription Management</a></li>
        <li class="list-group-item"><a href="#!">Promo Codes</a></li>
        <li class="list-group-item"><a href="#!">History</a></li>
        <li class="list-group-item"><a href="#!">Settings</a></li>
        <li class="list-group-item"><a href="#!">Logout</a></li>
      </ul>
 </div>
</div>
  <span  class="menu_side editorMenu" id="burger_menu_ie" onclick="openNav()">&#8801;</span>

    <!-- Center Section -->
    <section class="center_section_editor_prof">
  
        <div class="container-fluid">
        <div cass="row">
            <div class="col-md-6 col-md-offset-3"> 
                <div class="col-md-12 pull-left text-center">
                    <div class="col-md-4 col-md-offset-4 text-center">
                         <div class="editor_img_round_big circle_img">
                            <img src="<%=request.getContextPath()%>/NewStyles/images/teacher-profile/${dtoUser.profilePic}"
											id="schoolSelectedLogo" alt="" class="img-responsive"/>
                         </div>   
                    </div>
                    <div class="editor_form">
                        <form class="pull-left col-md-6 col-md-offset-3 text-left">
                            <div class="form-group">
                               <label for="fname">First Name</label>
                               <input type="text" class="form-control custom_input_field" id="fname" name="fname" placeholder="First Name" value="${dtoUser.firstName}">
                            </div>
                            <div class="form-group">
                               <label for="lname">Last Name</label>
                               <input type="text" class="form-control custom_input_field" id="lname" name="lname" placeholder="Last Name" value="${dtoUser.lastName}">
                            </div>
                            <input type="hidden" value = "${dtoUser.dateOfBirth}" id="dobHidden" />
                            <div class="form-group">
                            <label for="dob">Date of Birth</label>
                              <div id="datepicker" class="input-group date" name="dob" data-date-format="mm-dd-yyyy" value="${dtoUser.dateOfBirth}">
                                  <input class="form-control custom_input_field" type="text" readonly id="dob" placeholder="birthday"/>
                                  <span class="input-group-addon custom_addon"><i class="glyphicon glyphicon-calendar"></i></span>
                              </div>
                            </div>
                             <div class="form-group row">
                                <div class="col-sm-6">
                                  <div class="form-check">
                                    <label class="form-check-label custom_chk_box_pR">
                                      <a href="#!" class="forgot_link">Edit</a>
                                    </label>
                                  </div>
                                </div>
                                <div class="col-sm-6 text-right">
                                  <a href="#!" class="forgot_link">Become a Principal</a>
                                </div>
                              </div>
                              <div class="form-group text-center">
                              	<button class="btn btn-default save_about_ed_btn" type="button" name="saveButton" onClick="saveTeacher();" value="save">SAVE</button>
                              </div>
                        </form>
                    </div>
                </div>                
            </div>
        </div>
        </div>
    </section>
    <!-- End Center Section -->
     <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-bottom navbar-transparent" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav footer_nav_nw pull-right">
                    <li>
                        <a href="#!" class="begin_btn"><img src="<%=request.getContextPath()%>/NewStyles/images/begin.png"></a>
                    </li>                    
                </ul>
            </div>
        </div>
    </nav>



    <!-- jQuery -->
    <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>

<script type="text/javascript">
    function openNav() {
        document.getElementById("mySidenav").style.width = "320px";
    /*    document.getElementById("sideBarDiv").style.marginLeft = "320px";*/
        document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
        $('#burger_menu_ie').hide();
      /*  document.getElementById("burger_menu_ie").style.display = "none";*/

    }

    function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
        /*document.getElementById("sideBarDiv").style.marginLeft= "0";*/
        document.body.style.backgroundColor = "white";
         $('#burger_menu_ie').show();
    }
    
    function saveTeacher(){
      	var firstName = $("#fname").val().trim();
    	var lastName = $("#lname").val().trim();
    	var dob = $("#dob").val();
    	
    	$.ajax({
    		url:"<%=request.getContextPath()%>/teacher/updateProfile",
    		method:'POST',
    		
			data : {"fname":firstName, "lname":lastName, "dob":dob},
    		async :false,
    		success:function(response){
    			if(response=='success'){
    				alert("Profile Updated Successfully");
    				location.reload(true);
    			}
    			else{
    				alert("Profile Updation Failed");
    			}
    		}
    	});
    }
</script>

<script>
  $(function () {
	  var dob=$("#dobHidden").val();
	     $('#datepicker').datepicker({
	        autoclose: true,
	        todayHighlight: true
	       }).datepicker('update', new Date(dob));
	 });
  
  </script>

</body>

</html>

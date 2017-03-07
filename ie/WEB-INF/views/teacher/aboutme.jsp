<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  <span  class="menu_side editorMenu" id="burger_menu_ie" onclick="openNav()">&#9776;</span>

    <!-- Center Section -->
    <section class="center_section_editor_about">
  
        <div class="container-fluid">
        <div cass="row">
            <div class="col-md-8 col-md-offset-2"> 
                <div class="col-md-12 pull-left text-center">
                    <div class="editor_form">
                        <form class="pull-left col-md-8 col-md-offset-2 text-left about_editor_form">
                            <div class="form-group">
                               <label for="fname">Describe Yourself</label>
                               <textarea class="form-control custom_textarea_field" rows="4" id="description" name="description">${dtoUser.description}</textarea>
                            </div>
                            <div class="form-group">
                               <label for="fname">Your Expectations From This Program</label>
                               <textarea class="form-control custom_textarea_field" rows="4" id="expectations" name="expectations">${dtoUser.expectations}</textarea>
                            </div>
                            <div class="form-group">
                               <label for="fname">Your Experience</label>
                               <textarea class="form-control custom_textarea_field" rows="4" id="experience" name="experience">${dtoUser.experience}</textarea>
                            </div>
                            <div class="form-group">
                                <button type="button" class="btn btn-default save_about_ed_btn" name= "saveButton" id="saveButton" onClick="saveTeacher();">Save</button>
                            </div>
                    </div>
                </div>                
            </div>
        </div>
        </div>
    </section>
    <!-- End Center Section -->

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
      	var description = $("#description").val().trim();
    	var expectations = $("#expectations").val().trim();
    	var experience = $("#experience").val().trim();
    	$.ajax({
    		url:"<%=request.getContextPath()%>/teacher/updateProfile",
    		method:'POST',
			data : {"description":description, "expectations":expectations, "experience":experience},
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


</body>

</html>

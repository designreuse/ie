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
<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Manage Family Members</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
 <link href="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/>
 	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
	<link rel="stylesheet" href="https://cdn.datatables.net/select/1.1.0/css/select.dataTables.min.css" />
	<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
	
	<style type="text/css">
	.table{
	    width: 100% !important;
	}
	</style>
	
</head>

<body>
	<div class="wrapper">
		<%@include file="header.jsp"%>

		<!--inner_wrapper starts-->
		<div class="inner_wrapper">

			<!--inner_header starts-->

			<!--brow_don_camp starts-->
			<div class="brow_don_camp">
				<div class="container">
					<div class="pracProgress_hdr">
						<h2>Family Members</h2>
						<div class="green_line_btm"></div>
						<div class="clr"></div>
					</div>
				</div>

				<!--misc tabs start-->
				<div class="misc_tabs">

					<div class="misc_content">



						<!--TAB 1 STARTS-->
						<div id="tab1">

							<div class="containerSmall containerSmall2">

								<div class="ur_grid ur_grid_pop p-font14">
								
								
								<table class="table table-striped table-bordered table-hover"	id="sample_1">
									<thead>
										<tr>
											<th>Name</th>
											<th>Email</th>
											<th>Address</th>
										</tr>
										</thead>
										<tbody>
										<c:forEach var="dtoUser" items="${dtoUser}">
											<tr>
												<td><span class="fd_span">${dtoUser.familyName}</span></td>
												<td><span class="fd_span">${dtoUser.familyEmail}</span></td>
												<td><span class="fd_span">${dtoUser.familyAddress}</span></td>
											</tr>
										</c:forEach>
										</tbody>

									</table>
								</div>

								<!-- <input type="button" value="Send Mail" class="startBtn"> -->
							</div>
						</div>
						<!--TAB 1 ENDS-->

					</div>
				</div>
				<!--misc tabs end-->



			</div>
			<!--brow_don_camp ends-->

			<!--inner_header ends-->

		</div>
		<!--inner_wrapper ends-->
	</div>


	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>  
	<%@include file="../footer.jsp" %>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
   
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
   
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
   <script type="text/javascript" src="https://cdn.datatables.net/select/1.1.0/js/dataTables.select.min.js"></script>
   
	<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>  
	
<!--tab start --> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script>  
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript">
$(function(){
	$("#header").sticky({ topSpacing: 0 });
	$('[id^=sample_1]').dataTable({"aLengthMenu": [[15, 50, 100, -1],[15, 50, 100, "All"] ],columnDefs: [ {
        orderable: false,
        className: 'select-checkbox',
        targets:   0
    } ],
    select: {
        style:    'os',
        selector: 'td:first-child'
    },
    order: [[ 1, 'asc' ]], "iDisplayLength": 15});
	
	
/*     $.validator.addMethod("emailAlreadyExist", function(value, element) {
        return this.optional(element) || emailAlreadyCheck(value);
    }, "Email already exists."); */
    
    $.validator.addMethod("specialChar", function(value, element) {
        return this.optional(element) || /^[a-zA-Z0-9- ]+$/i.test(value);
    }, "Remove special characters.");
    
    $('#editTeachersForm').validate({
        errorElement: 'span', //default input error message container
        errorClass: 'help-block', // default input error message class
        focusInvalid: false, // do not focus the last invalid input
        //ignore: "",
        rules: {
        	programName:{
        		required: true
        		
        	},
      
        	teacherName: {
                required: true
               
            },
            className: {
                required: true
               
            },
            teacherEmail: {
                required: true,
                email: true,
                //emailAlreadyExist: true
                //notEqual:true
            }

            

        },


        invalidHandler: function(event, validator) { //display error alert on form submit   
        },

        highlight: function(element) { // hightlight error inputs
            $(element)
                .closest('.outer-field').addClass('has-error'); // set error class to the control group
            $(element).next('.fancybox').next('.fancybox').addClass('has-error');
        },
        
        success: function(label) {
            label.closest('.outer-field').removeClass('has-error');
            label.next('.fancybox').next('.fancybox').removeClass('has-error');
            label.remove();
        },

        errorPlacement: function(error, element) {
            if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
                error.insertAfter(element.next('.fancybox').next('.fancybox'));
            } else if (element.closest('.input-icon').size() === 1) {
                error.insertAfter(element.closest('.input-icon'));
            } else {
                error.insertAfter(element);
            }
        },

        submitHandler: function(form) {
            form.submit();
        }
    });
	

});
				
				
</script> 
<!--tab end -->

</body>
</html>

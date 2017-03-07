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
 <spring:eval expression="@propertyConfigurer.getProperty('service.url')" var="baseURL" />
<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Customer Engagement</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery-ui.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />


<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$("#days").hide();
	}
</script>
	<style>
	#Upload_data_sec{display:none}
	
	.upload_btn{ background: none repeat scroll 0 0 #01a34e;   
	 border: medium none;     color: #fff;  border-radius: 25px;     
    cursor: pointer;     font-size: 14px; padding: 8px 15px;    
	 font-weight: 400;     text-transform:none;}
	
	</style>
</head>

<body>
	<div class="wrapper">
		<%@include file="header.jsp" %>

		<section class="tehDsh-step1 ">
			<div class="container">
		
       <div class="pracProgress_hdr">
            <h2>Customer Engagement</h2>
            <div class="green_line_btm"></div>

          </div>
				
				<div class="clr"></div>
				<div class="mail_fltr">
					<ul>
						<li>
							<input type="button" value="Teachers"  id="teacherEmail" name="teacherEmail" class="mail_fltr_slctd" onclick="setQueryParameter('teacher');"/>
						</li>
						<li>
	            			<input type="button" value="Principals"  id="principalEmail" name="principalEmail" onclick="setQueryParameter('principal');"/>
	            		</li>
	            		<li>
	            			<input type="button" value="Parents"  id="parentEmail" name="parentEmail" onclick="setQueryParameter('parent');"/>
	            		</li>
	            		<li>
	            			<input type="button" value="Others"  id="emailOthers" name="emailOthers" onclick="setQueryParameter('emailOthers');"/>
	            		</li>
	            		<li>
	            			<input type="button" value="Show Email Status Grid"  id="emailStatusCus" name="emailStatusCud" onclick="setQueryParameter('emailstatus');"/>
	            		</li>
						<li>
	            			<input type="button" value="Incomplete Signups"  id="incompleteSignups" name="incompleteSignups" onclick="location.href='<%=request.getContextPath()%>/superadmin/incomplete-signups'"  />
	            		</li>
            		</ul>
				</div>
				
				<div class="mail_fltr" id="subQueryFilter">
					<ul>
						<li>
							<input type="button" value="All Active User"  id="activeUser" name="activeUser" class="mail_fltr_slctd" onclick="setSubqueryParameter('activeUser');"/>
						</li>
						<li>
	            			<input type="button" value="Not Logged In"  id="notLoginUser" name="notLoginUser" onclick="setSubqueryParameter('notLoginUser');"/>
	            		</li>
						<li>
							<input type="button" value="Expired Account User"  id="expireUser" name="expireUser" onclick="setSubqueryParameter('expireUser');"/>
						</li>
						</ul>
				</div>
				<div class="mail_fltr">
					<ul>
					<li class="program-id-new" >
							<select id='purposediv' onclick="sendProgramId();">
								<option value="0">Choose Program</option>
								<option value="1">Exploring Me™ Pre-k-Kindergarten</option>
								<option value="2">Exploring Originality™ Elementary</option>
								<option value="3">Exploring Potential™ Middle</option>
								<option value="4">Exploring Relevance™ High</option>
							</select>							
	            		</li>
					</ul>
				</div>
				<input type="hidden" name="EmailList" id="excelList" value=${user}>
	            		
				<form action="sendEmailCustomer" name="sendEmailForm" id="sendEmailForm" method="post">
				<div align="center"><input type="text" name="days" id="days" placeholder="Enter no. of days" style="display: none;">
				</div>
					<div class="change_track_new tab100w" id="othersEmail">
						<label>Add Emails</label>
						<div class="inputcontain">
							<input type="text" name="otherEmails" id="otherEmails" value="${user}" class="input_upl_track" placeholder="">
						</div>
					</div>
				
					<div class="change_track_new tab100w">
					<label>Subject</label>
					<div class="inputcontain">
					<input type="text" name="emailSub" id="emailSub" class="input_upl_track">
					</div>
					</div>
					
					<div class="change_track_qus">
					<label>Email Message</label>
					<div class="inputcontain">
					<textarea rows="6" cols="48" id="emailText" name="emailText" class="ckeditor"></textarea>
					<input type="button" value="Send Email To All Users" name="buttCustomerForm" id="buttCustomerForm" class="change_trackbtn_qus" onclick="submitCustomerForm();">
					<input type="button" value="Import From Excel" name="buttCustomerForm" id="Upload_data_sec" class="change_trackbtn_qus" onclick="showUploadForm();">
					<input type="hidden" name="queryParameter" id="queryParameter" value="teacher">
					<input type="hidden" name="subFilter" id="subFilter" value="activeUser">
					<input type="hidden" name="programId" id="programId">
					</div>
					</div>
			
				</form>
				
				
				<div class="step4-expOuter width100 fl " id="upload_div" style="display:none">
				<form method="POST" id="Upload_file" action="uploadFile" enctype="multipart/form-data">
		
		<h3>Upload Excel</h3> <input type="file" name="file" required="">
 
		Name: <input type="text" name="name" required=""><br>
 
		<input type="submit" class="upload_btn" value="Upload"> Press here to upload the file!

	<a href="<%=request.getContextPath()%>/NewStyles/sample-excel.xlsx" title="Skip" style="color: green; float: left; width: 40%; text-decoration: underline;" download >Sample Excel</a>
			</form>	
		</div>		
				<div style="display: none;" id="emailList" >
			<table class="table table-striped table-bordered table-hover"  id="sample_2">
			         <thead>
			        	<tr>
			        			<th><strong>Email</strong></th>
			        			<th><strong>User Type</strong></th>
			        			<th><strong>Email Date</strong></th>
								<th><strong>Link Clicked</strong></th>
								<th><strong>Having Password</strong></th>
								<th><strong>Reset Password</strong>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="customerEngagements" items="${listCustomerEngagements}">
						<tr>
							 <td>${customerEngagements.email}</td>
							 <td>${customerEngagements.role}</td>
							 <td>${customerEngagements.date}</td>
							 <td>${customerEngagements.linkClicked}</td>
							 <td>${customerEngagements.havingPassword}</td>
							 <td>${customerEngagements.resetPassword}</td>
						</tr>
						</c:forEach>
					</tbody> 
					</table>
				
				</div>
				
			</div>
		</section>
	</div>
	
	
	
	
	
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %> 
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
  <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.mCustomScrollbar.concat.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/ckeditor/ckeditor.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrapcdn.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery-ui.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.fancybox.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/moment.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>

   <script type="text/javascript">	
	jQuery(document).ready
	(function($){
	
		
		
		$("#header").sticky({ topSpacing: 0 });
		$('[data-toggle="tooltip"]').tooltip();
		$("#othersEmail").hide();
		$("#days").hide();
		var excelList= $('#excelList').val();
		if(excelList!=null&& excelList!='')
			{
			
			menuTab = "";
			$("#emailOthers").addClass("mail_fltr_slctd");
			$("#teacherEmail").removeClass("mail_fltr_slctd");
			$("#principalEmail").removeClass("mail_fltr_slctd");
			$("#parentEmail").removeClass("mail_fltr_slctd");
			$("#emailstatus").removeClass("mail_fltr_slctd");
			$("#Upload_data_sec").show();
			$("#sendEmailForm").show();
			$("#emailList").hide();
			$("#othersEmail").show();
			$("#subQueryFilter").hide();
			$("#purposediv").hide();
			$("#days").hide();
			//$("#queryParameter").val("emailOthers");
			setQueryParameter('emailOthers');
			}
		//$("#queryParameter").val("");
		$('[id^=sample_2]').dataTable({"aLengthMenu": [[15, 50, 100, -1],[15, 50, 100, "All"] ],columnDefs: [ {
	        orderable: false,
	        className: 'select-checkbox',
	        targets:   0
	    } ],
	    select: {
	        style:    'os',
	        selector: 'td:first-child'
	    },
	    order: [[ 2, 'asc' ]], "iDisplayLength": 15});
		
		
		var emailSent='${emailSent}';
		if(emailSent == 'Y')
			{
			alert("Sending Email is in Progress....");
			}
        
        $("#sendEmailForm").validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            //ignore: "",
            rules: {
            	emailSub:{
            		required: true,
            		maxlength : 100
            	},
            	emailText:{
            		required: true
            	}
            },


            invalidHandler: function(event, validator) { //display error alert on form submit   
            },

            highlight: function(element) { // hightlight error inputs
                $(element)
                    .closest('.inputcontain').addClass('has-error'); // set error class to the control group
                $(element)
                .closest('.change_track').addClass('has-error');
                $(element)
                .closest('.change_track_new_qus').children('.inputcontain').addClass('has-error');
            },

            success: function(label) {
                label.closest('.inputcontain').removeClass('has-error');
                label.closest('.change_track').removeClass('has-error');
                label.closest('.change_track_new_qus').children('.inputcontain').removeClass('has-error');
                label.remove();
            },

            errorPlacement: function(error, element) {
                if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
                    error.insertAfter($('#register_tnc_error'));
                } else if (element.closest('.input-icon').size() === 1) {
                    error.insertAfter(element.closest('.input-icon'));
                }else if (element.closest('.change_track_new_qus').children('.inputcontain').children('.input_upl_track').size() === 1) {
                    error.insertAfter(element.closest('.change_track_new_qus').children('.inputcontain').children('.input_upl_track'));
                } else {
                    error.insertAfter(element);
                }
            },

            submitHandler: function(form) {
                form.submit();
            }
        });
		
		
	});
	
	 
	 
	function sendProgramId(){
		var programId = $('#purposediv option:selected').val();
		$("#programId").val(programId);
	}
	function submitCustomerForm(){
		if($("#sendEmailForm").valid()){
			$("#buttCustomerForm").attr("disabled", "disabled"); 
		$("#sendEmailForm").submit();
		}
	}
	var menuTab = "";
	var subMenuTab = "";
	function setQueryParameter(queryParameter){
		var queryParameter=queryParameter;
		$("#queryParameter").val(queryParameter);
		if(queryParameter=='teacher' && subMenuTab == 'notLoginUser'){
			menuTab = "teacher";
			$("#teacherEmail").addClass("mail_fltr_slctd");
			$("#principalEmail").removeClass("mail_fltr_slctd");
			$("#parentEmail").removeClass("mail_fltr_slctd");
			$("#emailStatusCus").removeClass("mail_fltr_slctd");
			$("#emailOthers").removeClass("mail_fltr_slctd");
			$("#sendEmailForm").show();
			$("#emailList").hide();
			$("#othersEmail").hide();
			$("#Upload_data_sec").hide();
			$("#subQueryFilter").show();
			$("#purposediv").hide();
			$("#days").show();
		}
		else if(queryParameter=='principal' && subMenuTab == 'notLoginUser'){
			menuTab = "principal";
			$("#principalEmail").addClass("mail_fltr_slctd");
			$("#teacherEmail").removeClass("mail_fltr_slctd");
			$("#parentEmail").removeClass("mail_fltr_slctd");
			$("#emailStatusCus").removeClass("mail_fltr_slctd");
			$("#emailOthers").removeClass("mail_fltr_slctd");
			$("#sendEmailForm").show();
			$("#emailList").hide();
			$("#Upload_data_sec").hide();
			$("#othersEmail").hide();
			$("#subQueryFilter").show();
			$("#purposediv").hide();
			$("#days").show();
		}
		else if(queryParameter=='parent' && subMenuTab == 'notLoginUser'){
			menuTab = "parent";
			$("#parentEmail").addClass("mail_fltr_slctd");
			$("#teacherEmail").removeClass("mail_fltr_slctd");
			$("#principalEmail").removeClass("mail_fltr_slctd");
			$("#emailStatusCus").removeClass("mail_fltr_slctd");
			$("#emailOthers").removeClass("mail_fltr_slctd");
			$("#sendEmailForm").show();
			$("#emailList").hide();
			$("#Upload_data_sec").hide();
			$("#othersEmail").hide();
			$("#subQueryFilter").show();
			$("#purposediv").hide();
			$("#days").show();
		}
		if(queryParameter=='teacher' && subMenuTab == 'expireUser'){
			menuTab = "teacher";
			$("#teacherEmail").addClass("mail_fltr_slctd");
			$("#principalEmail").removeClass("mail_fltr_slctd");
			$("#parentEmail").removeClass("mail_fltr_slctd");
			$("#emailStatusCus").removeClass("mail_fltr_slctd");
			$("#emailOthers").removeClass("mail_fltr_slctd");
			$("#sendEmailForm").show();
			$("#emailList").hide();
			$("#Upload_data_sec").hide();
			$("#othersEmail").hide();
			$("#subQueryFilter").show();
			$("#purposediv").hide();
			$("#days").hide();
		}
		else if(queryParameter=='principal' && subMenuTab == 'expireUser'){
			menuTab = "principal";
			$("#principalEmail").addClass("mail_fltr_slctd");
			$("#teacherEmail").removeClass("mail_fltr_slctd");
			$("#parentEmail").removeClass("mail_fltr_slctd");
			$("#emailStatusCus").removeClass("mail_fltr_slctd");
			$("#emailOthers").removeClass("mail_fltr_slctd");
			$("#sendEmailForm").show();
			$("#Upload_data_sec").hide();
			$("#emailList").hide();
			$("#othersEmail").hide();
			$("#subQueryFilter").show();
			$("#purposediv").hide();
			$("#days").hide();
		}
		else if(queryParameter=='parent' && subMenuTab == 'expireUser'){
			menuTab = "parent";
			$("#parentEmail").addClass("mail_fltr_slctd");
			$("#teacherEmail").removeClass("mail_fltr_slctd");
			$("#principalEmail").removeClass("mail_fltr_slctd");
			$("#emailStatusCus").removeClass("mail_fltr_slctd");
			$("#emailOthers").removeClass("mail_fltr_slctd");
			$("#sendEmailForm").show();
			$("#emailList").hide();
			$("#Upload_data_sec").hide();
			$("#othersEmail").hide();
			$("#subQueryFilter").show();
			$("#purposediv").hide();
			$("#days").hide();
		}
		else if(queryParameter=='teacher' && subMenuTab == 'activeUser'){
			menuTab = "teacher";
			$("#teacherEmail").addClass("mail_fltr_slctd");
			$("#principalEmail").removeClass("mail_fltr_slctd");
			$("#parentEmail").removeClass("mail_fltr_slctd");
			$("#emailStatusCus").removeClass("mail_fltr_slctd");
			$("#emailOthers").removeClass("mail_fltr_slctd");
			$("#sendEmailForm").show();
			$("#Upload_data_sec").hide();
			$("#emailList").hide();
			$("#othersEmail").hide();
			$("#subQueryFilter").show();
			$("#purposediv").show();
			$("#days").hide();
		}
		else if(queryParameter=='principal' && subMenuTab == 'activeUser'){
			menuTab = "principal";
			$("#principalEmail").addClass("mail_fltr_slctd");
			$("#teacherEmail").removeClass("mail_fltr_slctd");
			$("#parentEmail").removeClass("mail_fltr_slctd");
			$("#emailStatusCus").removeClass("mail_fltr_slctd");
			$("#emailOthers").removeClass("mail_fltr_slctd");
			$("#sendEmailForm").show();
			$("#Upload_data_sec").hide();
			$("#emailList").hide();
			$("#othersEmail").hide();
			$("#subQueryFilter").show();
			$("#purposediv").show();
			$("#days").hide();
		}
		else if(queryParameter=='parent' && subMenuTab == 'activeUser'){
			menuTab = "parent";
			$("#parentEmail").addClass("mail_fltr_slctd");
			$("#teacherEmail").removeClass("mail_fltr_slctd");
			$("#principalEmail").removeClass("mail_fltr_slctd");
			$("#emailStatusCus").removeClass("mail_fltr_slctd");
			$("#sendEmailForm").show();
			$("#emailOthers").removeClass("mail_fltr_slctd");
			$("#emailList").hide();
			$("#Upload_data_sec").hide();
			$("#othersEmail").hide();
			$("#subQueryFilter").show();
			$("#purposediv").hide();
			$("#days").hide();
		}
		else if(queryParameter=='emailstatus'){
			menuTab = "";
			$("#emailStatusCus").addClass("mail_fltr_slctd");
			$("#teacherEmail").removeClass("mail_fltr_slctd");
			$("#principalEmail").removeClass("mail_fltr_slctd");
			$("#parentEmail").removeClass("mail_fltr_slctd");
			$("#emailOthers").removeClass("mail_fltr_slctd");
			$("#sendEmailForm").hide();
			$("#Upload_data_sec").hide();
			$("#emailList").show();
			$("#othersEmail").hide();
			$("#subQueryFilter").hide();
			$("#purposediv").hide();
			$("#days").hide();
		}
		else if(queryParameter=='emailOthers'){
			menuTab = "";
			$("#emailOthers").addClass("mail_fltr_slctd");
			$("#teacherEmail").removeClass("mail_fltr_slctd");
			$("#principalEmail").removeClass("mail_fltr_slctd");
			$("#parentEmail").removeClass("mail_fltr_slctd");
			$("#emailstatus").removeClass("mail_fltr_slctd");
			$("#Upload_data_sec").show();
			$("#sendEmailForm").show();
			$("#emailList").hide();
			$("#othersEmail").show();
			$("#subQueryFilter").hide();
			$("#purposediv").hide();
			$("#days").hide();
		}
		
	}
	
	
	function setSubqueryParameter(subQueryParameter){
		var subQueryParameter=subQueryParameter;
		$("#subFilter").val(subQueryParameter);
		if(menuTab != '' && subQueryParameter=='notLoginUser'){
			subMenuTab = "notLoginUser" ; 
			$("#notLoginUser").addClass("mail_fltr_slctd");
			$("#activeUser").removeClass("mail_fltr_slctd");
			$("#expireUser").removeClass("mail_fltr_slctd");
			$("#purposediv").hide();
			$("#days").show();
		}
		else if(subQueryParameter=='activeUser'){
			subMenuTab = "activeUser" ; 
			$("#activeUser").addClass("mail_fltr_slctd");
			$("#notLoginUser").removeClass("mail_fltr_slctd");
			$("#expireUser").removeClass("mail_fltr_slctd");
			$("#purposediv").show();
			$("#days").hide();
		}
		else if(subQueryParameter=='notLoginUser'){
			subMenuTab = "notLoginUser" ; 
			$("#notLoginUser").addClass("mail_fltr_slctd");
			$("#activeUser").removeClass("mail_fltr_slctd");
			$("#expireUser").removeClass("mail_fltr_slctd");
			$("#purposediv").hide();
			$("#days").show();
		}
		else if(subQueryParameter=='expireUser'){
			subMenuTab = "expireUser" ; 
			$("#expireUser").addClass("mail_fltr_slctd");
			$("#activeUser").removeClass("mail_fltr_slctd");
			$("#notLoginUser").removeClass("mail_fltr_slctd");
			$("#purposediv").hide();
			$("#days").hide();
		}
	}
	</script>
	
<script type="text/javascript">
		$(document).ready(function(){
	    $('#purposediv').on('change', function() {
	      if ( this.value == '1')
	      {
	        $("#input1").show();
	        $("#input2").hide();
	        $("#input3").hide();
	        $("#input4").hide();
	      }
	      else  if ( this.value == '2')
	      {
	        $("#input2").show();
	        $("#input1").hide();
	        $("#input3").hide();
	        $("#input4").hide();
	      }
	      else  if ( this.value == '3')
	      {
	        $("#input3").show();
	        $("#input1").hide();
	        $("#input2").hide();
	        $("#input4").hide();
	      }
	      else  if ( this.value == '4')
	      {
	        $("#input4").show();
	        $("#input1").hide();
	        $("#input2").hide();
	        $("#input3").hide();
	      }
	       else
	      {
	        $("#input1").hide();
	        $("#input2").hide();
	        $("#input3").hide();
	        $("#input4").hide();
	      }
	    });
});
	</script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
<script>
function showUploadForm(){
	 $.fancybox({
	     'autoScale': true,
	     'autoDimensions': true,
	     'centerOnScroll': true,
	     'href' : '#upload_div'
	  });
}
</script>
</body>
</html>

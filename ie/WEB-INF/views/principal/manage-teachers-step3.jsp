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
<title>Select Program</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>

<body>
	<div class="wrapper">
<%@include file="header.jsp" %>
		<section class="getStartSct">
		<div class="steps_getstarted">
			<div class="containerSmall">
			<div class="pracProgress_hdr">
 				<h2>Manage Classes</h2>
				<div class="green_line_btm"></div>
				</div>
			</div>
				<div class="clr"></div>
				<form:form  method="post" modelAttribute="dtoUser" action="saveNewClasses" id="saveSignupForm" class="register-form" >
				<div class="section_makpaymnt">
					<div class="programs_our" id="ourProg">
							<div class="titlebar_programms">
								<div class="payable_amt_1">
								  <input type="hidden" id="selectedPrograms" name="selectedPrograms">  
									 <span class="font24">Manage Teachers</span>
									 
								</div>
							</div>
						</div>
							<div class="school_setup_wrapper" id="progDetail">

							<div class="misc_tabs">

					<div class="misc_content">



						<!--TAB 1 STARTS-->
						<div id="tab1">

							<div class="containerSmall containerSmall2">

								<div class="ur_grid ur_grid_pop p-font14">
								
								
								<table class="table table-striped table-bordered table-hover"	id="sample_1">
									<thead>
										<tr>
											<th>Class Name</th>
											<th>Program Name</th>
											<th>Teacher Name</th>
											<th>Teacher Email</th>
											<th>Action</th>
										</tr>
										</thead>
										<tbody>
										<c:forEach var="practiceProgress" items="${practiceProgress}">
											<tr>
												<td><span class="fd_span">${practiceProgress.className}</span></td>
												<td><span class="fd_span">${practiceProgress.programName}</span></td>
												<td><span class="fd_span">${practiceProgress.teacherName}</span></td>
												<td><span class="fd_span">${practiceProgress.teacherEmail}</span></td>
												<td><span class="fd_span"><a href="<%=request.getContextPath()%>/principal/deleteClass/${practiceProgress.classTeacherRelationId}">[Delete]</a>
													<a href="javascript:;" onclick="editDetails('${practiceProgress.className}','${practiceProgress.schoolProgramId}','${practiceProgress.teacherName}','${practiceProgress.teacherEmail}','${practiceProgress.classTeacherRelationId}');" class="js-open-modal" data-modal-id="popup2">[Edit]</a></span>
												</td>
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
							
								</div>
								<!-- <div class="videobtn">
									<input type="button" value="Done"  class="blueBtn" />
								</div> -->
								<div class="videobtn">
								<input type="button" value="Done" onclick="window.location.href='<%=request.getContextPath()%>/principal/'" class="blueBtn padding-lt-rt-40">
								</div>
								
							</div>
							</form:form>
</div>
			
		</section>
	</div>
	
	
		<div id="editTeachers" style="display: none">
		<form action="editTeacherDetail" id="editTeachersForm" name="editTeachersForm" method="post">
			<h3 class="migChngPass">Edit Teacher</h3>
			<label>Program Name : </label>
			<div class="outer-field-wrap">
			<div class="outer-field">
				<select id="programName" name="schoolProgramId">
					<c:forEach items="${schoolPrograms}" var="schoolProgram">
						<option value="${schoolProgram.schoolProgramId}">${schoolProgram.programDescDetail}</option>
					</c:forEach>
				</select>
				<!-- <input type="text" id="programName" name="programName" readonly="readonly" style="width:100%"/> -->
			</div>
			</div>
			<label>Class Name:</label>
			<div class="outer-field-wrap">
			<div class="outer-field">
				<input type="text" id="className" name="className" style="margin:auto; width:100%"/><br>
			</div> 
			</div>
			<label>Teacher Email: </label>
			<div class="outer-field-wrap">
			<div class="outer-field">
				<input type="text" id="teacherEmail"name="teacherEmail" style="margin:auto; width:100%"/><br> 
				
			</div>
			</div>
			
			<label>TeacherName: </label>
			<div class="outer-field-wrap">
			<div class="outer-field">
				<input type="text" id="teacherName" name="teacherName" style="margin:auto; width:100%"  readOnly="readonly"/><br>
			</div>
			</div>
			
			<div class="outer-field">
			<input type="submit" title="Save" value="Save" class="startBtn" />
			</div>
			
			<input type="hidden" id="classTeacherReleationId" name="classTeacherReleationId">
			<input type="hidden" id="currentEmail" name="currentEmail">
			
		</form>
	</div>
	
	
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>
  <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script> 
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script>
	
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>

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
    $.validator.addMethod("emailAlreadyCheckForTeacher", function(value, element) {
        return this.optional(element) || emailAlreadyCheckForTeacher(value);
    }, "Email already exists with another role.");
        
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
                    emailAlreadyCheckForTeacher:true
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
    	
        var emailStatusForTeacher = false;
        function emailAlreadyCheckForTeacher(email){
    		//var email = $("#email").val().trim();
    		if(email != ""){
    			$.ajax({
    				url : "<%=request.getContextPath()%>/check/availability/emailForTeacher",
    				method : 'POST',
    				headers: { 
    					'Content-Type':'application/json'
    					},
    				data : JSON.stringify({"email":email}),
    				async:false,
    				success : function(result) {
    					if(result.response.code == 200){
    						emailStatusForTeacher = true;
    						//$("#teacherName").val('');
    						$("#teacherName").removeAttr("readOnly");
    					} else if(result.response.code == 202){
    						emailStatusForTeacher = true;
    						$("#teacherName").val(result.response.result);
    						$("#teacherName").attr("readOnly","true");
    					}else if(result.response.code == 409){
    						emailStatusForTeacher = false;
    					}
    				}
    			});
    		}else{
    			emailStatusForTeacher = true;
    		}
    		return emailStatusForTeacher;
        }
    
    });

    function editDetails(className,schoolProgramId,teacherName,teacherEmail,classTeacherReleationId)
	{
		$("#className").val(className);
		$("#programName").val(schoolProgramId);
		$("#teacherName").val(teacherName);
		$("#teacherEmail").val(teacherEmail);
		$("#classTeacherReleationId").val(classTeacherReleationId);
		$("#currentEmail").val(teacherEmail);
		
	
		 $.fancybox({
			 'minWidth':200,
			 'padding':45,
			 'minHeight':250,
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#editTeachers'
		  });
	}
    
    function emailAlreadyCheck(value){
		//var email = $("#email").val().trim();
		var email = value;
		
		var currentEmail=$("#currentEmail").val();
		
		if(email != ""){
			
			if(email != currentEmail){
			
			$.ajax({
				url : "<%=request.getContextPath()%>/check/availability/email",
				method : 'POST',
				headers: { 
					'Content-Type':'application/json'
					},
				data : JSON.stringify({"email":email}),
				async:false,
				success : function(result) {
					if(result.response.code == 200){
						emailStatus = true;
					} else if(result.response.code == 409){
						emailStatus = false;
					}
				}
			});
			}
			else
				{
				emailStatus = true;
				}
		}else{
			emailStatus = true;
		}
		return emailStatus;
    }
	  
</script>

</body>
</html>

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
<title>Targeted Campaign</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>

<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	
	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery-ui.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"> -->
</head>

<body>
<div class="wrapper">
    <%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--inner_header starts-->
        
        <!--about_us starts-->
        <div class="about_us">
            <div class="content_inner">
                <div class="pracProgress_hdr">
                    <h2>Targeted Campaign</h2>
                    <div class="green_line_btm"></div>
                    
                    
                    <div class="clr"></div>
                    
                </div>
                
                <!--school campaign start-->
                <div class="school_campaign">
                    
                    
                    
                    <form:form role="form" action="saveTargetedCampaign" enctype="multipart/form-data" class="register-form" modelAttribute="dtoCampaign" method="post">
                    
                    <div class="make_schol_contrb">
                        <div class="techForm">
                            <label>Target ($)</label>
                            <div class="msc_inputbox">
                                <div class="contact-row">
                                    <div class="outer-field-wrap">
                                        <div class="outer-field">
                                            <form:input type="text" path="amount" placeholder="$" id="amount" name="amount" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tar_container">
                        <div class="tar_wrapper">
                        
                        </div>
                    </div>
                    <div class="containerSmall">
                        <div class="add_details">
                            
                            <div class="getstartForm">
                                <label>Add Details</label>
                                <ul>
                                    <li>
                                        <div class="contact-row">
                                            <div class="outer-field-wrap">
                                                <div class="outer-field">
                                                    <form:input path="title" type="text" placeholder="Enter Heading"/>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    
                                    <li>
										<div class="getstart-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<input type="text" id="disableImagePath" readonly="readonly" name="abc" placeholder="Add Picture" />
												</div>
											</div>
										</div>
										<div class="photoIcon"><div class="cam_upload"><form:input accept="image/*" path="image" type="file" id="imagePath" onchange="copyImageName();"/></div></div>
									</li>
                                    <li>
                                        <div class="contact-row">
                                            <div class="outer-field-wrap">
                                                <div class="outer-field">
                                                    <form:input path="startDate" type="text" readonly="readonly" id="startDatepicker" placeholder="Start Date" />
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="contact-row">
                                            <div class="outer-field-wrap">
                                                <div class="outer-field">
                                                    <form:input path="endDate" type="text" readonly="readonly" id="endDatepicker" placeholder="End Date" />
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                    </li>
                                    <li class="fullrow">
                                        <div class="contact-row">
                                            <form:textarea id="campaignDesc" path="description" placeholder="Enter Description"></form:textarea>
                                        </div>
                                    </li>
                                    <!-- <li style="cursor: pointer;" onclick="addTargetSchools();"><h4>Link Schools</h4></li> -->
                                </ul>
                                <input type="button" value="Add Targeted Schools" class="submit-btn mrgtp25" onclick="addTargetSchools();" required="required">
                                
                                
                                <div class="clr"></div>
                                <%-- <form:input path="campaignId" type="hidden" id="campaignId" value="${campaignAdmin.campaignId}"/> --%>
                                <input type="submit" class="submit-btn mrgtp25" value="PUBLISH CAMPAIGN">
                            </div>
                            
                        </div>
                        
                        
                    </div>
                    
                    <input type="hidden" id="selectedSchools" name="schoolIds">
                    </form:form>
                    
                    
                    
                </div>
                <!--school campaign end--> 
            </div>
        </div>
        <!--about_us ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends--> 
</div>
<div class="ourStory-Popup daily-bar-line" id="search-school-box" style="display: none;">
                 <h5>Select school to link campaign</h5> 
                 
                 <div class="lft_fltr fltr_pdng">
                    	<label>Filter Based on State</label>
                        <div class="drop_filter table_slct">
                        	<select id="stateDropdown" onchange="stateFilter();">
                            	<option value="0">Select</option>
                            	<option value="AL">Alabama</option>
								<option value="AK">Alaska</option>
								<option value="AZ">Arizona</option>
								<option value="AR">Arkansas</option>
								<option value="CA">California</option>
								<option value="CO">Colorado</option>
								<option value="CT">Connecticut</option>
								<option value="DE">Delaware</option>
								<option value="DC">District Of Columbia</option>
								<option value="FL">Florida</option>
								<option value="GA">Georgia</option>
								<option value="HI">Hawaii</option>
								<option value="ID">Idaho</option>
								<option value="IL">Illinois</option>
								<option value="IN">Indiana</option>
								<option value="IA">Iowa</option>
								<option value="KS">Kansas</option>
								<option value="KY">Kentucky</option>
								<option value="LA">Louisiana</option>
								<option value="ME">Maine</option>
								<option value="MD">Maryland</option>
								<option value="MA">Massachusetts</option>
								<option value="MI">Michigan</option>
								<option value="MN">Minnesota</option>
								<option value="MS">Mississippi</option>
								<option value="MO">Missouri</option>
								<option value="MT">Montana</option>
								<option value="NE">Nebraska</option>
								<option value="NV">Nevada</option>
								<option value="NH">New Hampshire</option>
								<option value="NJ">New Jersey</option>
								<option value="NM">New Mexico</option>
								<option value="NY">New York</option>
								<option value="NC">North Carolina</option>
								<option value="ND">North Dakota</option>
								<option value="OH">Ohio</option>
								<option value="OK">Oklahoma</option>
								<option value="OR">Oregon</option>
								<option value="PA">Pennsylvania</option>
								<option value="RI">Rhode Island</option>
								<option value="SC">South Carolina</option>
								<option value="SD">South Dakota</option>
								<option value="TN">Tennessee</option>
								<option value="TX">Texas</option>
								<option value="UT">Utah</option>
								<option value="VT">Vermont</option>
								<option value="VA">Virginia</option>
								<option value="WA">Washington</option>
								<option value="WV">West Virginia</option>
								<option value="WI">Wisconsin</option>
								<option value="WY">Wyoming</option>
                            </select>
                        </div>
                    </div>
                    
                    <div class="lft_fltr fltr_pdng fr">
                    	<label>Filter Based on Zipcode</label>
                        <div class="drop_filter table_slct">
                        	<input class="width-less" type="text" name="newZip" id="newZip" onchange="getZipLatLong();"><img src="<%=request.getContextPath()%>/NewStyles/images/search.png"  alt=""/>
                        </div>
                    </div>
                 
                 
            <div class="ur_grid ur_grid_pop bar-line-grey-out">

        <table class="table table-striped table-hover table-bordered" id="sample_1">
        
         <thead>
        	<tr>
        	<th><strong>Parent Name</strong></th>
        	<th><strong>Email</strong></th>
        	<th><strong>Joined Since</strong></th>
        	
			</tr>
		</thead>
		<tbody></tbody> 
  
		</table>

        
        </div>
        
    </div>


	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>

<script src="<%=request.getContextPath()%>/NewStyles/js/jquery-ui.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
<%-- <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script> --%>
<script type="text/javascript">
/* $(function() {
	var desc = '${campaignAdmin.description}';
	$("#campaignDesc").val(desc);
    $( "#startDatepicker" ).datepicker({
        defaultDate: "+1w",
        changeMonth: true,
        numberOfMonths: 3,
        onClose: function( selectedDate ) {
          $( "#endDatepicker" ).datepicker( "option", "minDate", selectedDate );
        }
      });
      $( "#endDatepicker" ).datepicker({
        defaultDate: "+1w",
        changeMonth: true,
        numberOfMonths: 3,
        onClose: function( selectedDate ) {
          $( "#startDatepicker" ).datepicker( "option", "maxDate", selectedDate );
        }
      });
  }); */
   function copyImageName(){
	   var fullPath  = $("#imagePath").val();
	   if (fullPath) {
	         var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
	         var filename = fullPath.substring(startIndex);
	         if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
	                 filename = filename.substring(1);
	         }
	         $("#disableImagePath").val(filename);
	}
   }
   $(document).ready(function() {   
	   $("#amount").val("");
	   $("#header").sticky({ topSpacing: 0 });
	    $( "#startDatepicker" ).datepicker({
	        defaultDate: "+1w",
	        changeMonth: true,
	        numberOfMonths: 3,
	        onClose: function( selectedDate ) {
	          $( "#endDatepicker" ).datepicker( "option", "minDate", selectedDate );
	        }
	      });
	      $( "#endDatepicker" ).datepicker({
	        defaultDate: "+1w",
	        changeMonth: true,
	        numberOfMonths: 3,
	        onClose: function( selectedDate ) {
	          $( "#startDatepicker" ).datepicker( "option", "maxDate", selectedDate );
	        }
	      });

	      $.validator.addMethod('minStrict', function (value, el, param) {
			    return value >= param;
			}, "Amount should be greater than zero.");
	      
                   $.validator.addMethod("nameRegex", function(value, element) {
                       return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
                   }, "Field must contain letters only.");
                   
                   $('.register-form').validate({
                       errorElement: 'span', //default input error message container
                       errorClass: 'help-block', // default input error message class
                       focusInvalid: false, // do not focus the last invalid input
                       ignore: "",
                       rules: {
                    	   title:{
                       		required: true,
                       		minlength : 3,
                       		maxlength : 40
                       	},
                       	abc:{
                       		required: true,
                       	},
                       	description:{
                       		required: true
                       		/* maxlength : 450 */
                       	},
                       	startDate:{
                       		required: true,
                       	},
                       	amount:{
                       		required: true,
                            number: true,
                            minStrict: 1
                       	},
                       	endDate:{
                       		required: true,
                       	}
                       },


                       invalidHandler: function(event, validator) { //display error alert on form submit   
                       },

                       highlight: function(element) { // hightlight error inputs
                           $(element)
                               .closest('.outer-field').addClass('has-error'); // set error class to the control group
                           $(element)
                               .closest('.fullrow').addClass('has-error'); // set error class to the control group
                       },

                       success: function(label) {
                           label.closest('.outer-field').removeClass('has-error');
                           label.remove();
                       },

                       errorPlacement: function(error, element) {
                           if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
                               error.insertAfter($('#register_tnc_error'));
                           } else if (element.closest('.input-icon').size() === 1) {
                               error.insertAfter(element.closest('.input-icon'));
                           } else {
                               error.insertAfter(element);
                           }
                       },

                       submitHandler: function(form) {
                    	   var schoolContribution = $("#schoolContribution").val();
                    	   var minContri = parseInt("${minContri}");
                    	   if(schoolContribution<minContri){
                    		   alert("To create campaign please contribute minimum $"+minContri+" from your side.");
                    	   }else{
                          	 form.submit();
                    	   }
                       }
                   });

   });
   
   function addTargetSchools(){
	   $("#selectedSchools").val("");
	   $("#sample_1").dataTable().fnDestroy();
		$("#sample_1").html('');
	     var url='<%=request.getContextPath()%>/superadmin/schoolListing';
	           $.ajax({
	                  url:url,
	                  method:'GET',
	                  async :false,
	                  cache:false,
	                  success:function(response){ 
	                	var parentActiveUsers='';
      					parentActiveUsers+='<thead><tr>'+
      					'<th><strong>Select</strong></th>'+
      					'<th><strong>School Name</strong></th>'+
      					'<th ><strong>Address</strong></th>'+
      					'</tr></thead><tbody>';
      					
      					$.each(response.modelMap.schoolDetails, function(index,value) {
      						parentActiveUsers+='<tr><td><input id="checkbox_'+value.schoolId+'" type="checkbox" onclick="selectSchool('+value.schoolId+');"></td><td><p>'+value.schoolName+'</p></td>'+
      						'<td ><p>'+value.address+'</p></td>';
      					 });
      					
      					parentActiveUsers+='</tbody>';
      			$("#sample_1").html(parentActiveUsers);
      		    $("#sample_1").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
	                	  
	                                $.fancybox({
	                                    'minWidth':900,
	                                    'minHeight':375,
	                                    'autoScale': true,
	                                    'autoDimensions': true,
	                                    'centerOnScroll': true,
	                                    'href' : '#search-school-box'
	                                 });
	                  }
	           });
      					
	}	
function selectSchool(schoolId){

		$('#checkbox_'+schoolId).removeAttr("onclick");
	   	$('#checkbox_'+schoolId).attr("onclick","removeSchool("+schoolId+")");
	
	   	var selectedProg = $('#selectedSchools').val();
	   	if(selectedProg.indexOf(schoolId)<0){
			$('#selectedSchools').val(selectedProg+schoolId+",");
	   	}
}	

function removeSchool(schoolId){
	   $('#checkbox_'+schoolId).removeAttr("onclick");
	   $('#checkbox_'+schoolId).attr("onclick","selectSchool("+schoolId+")");
	   var selectedProg = $('#selectedSchools').val();
		if(selectedProg.indexOf(schoolId)>=0){
			$('#selectedSchools').val((selectedProg.replace(schoolId+',','')));
			  
		}

}

function stateFilter(){
	 var searchKeyword = $("#stateDropdown").val();
	 $("#selectedSchools").val("");
	   $("#sample_1").dataTable().fnDestroy();
		$("#sample_1").html('');
	     var url='<%=request.getContextPath()%>/superadmin/searchStateResults';
	           $.ajax({
	                  url:url,
	                  method:'GET',
	                  async :false,
	                  cache:false,
	                  data:{searchKeyword:searchKeyword},
	                  success:function(response){ 
	                	var parentActiveUsers='';
    					parentActiveUsers+='<thead><tr>'+
    					'<th><strong>Select</strong></th>'+
    					'<th><strong>School Name</strong></th>'+
    					'<th ><strong>Address</strong></th>'+
    					'</tr></thead><tbody>';
    					
    					$.each(response.modelMap.schoolDetails, function(index,value) {
    						parentActiveUsers+='<tr><td><input id="checkbox_'+value.schoolId+'" type="checkbox" name="vehicle" value="Bike" onclick="selectSchool('+value.schoolId+');"></td><td><p>'+value.schoolName+'</p></td>'+
    						'<td ><p>'+value.address+'</p></td>';
    					 });
    					
    					parentActiveUsers+='</tbody>';
    			$("#sample_1").html(parentActiveUsers);
    		    $("#sample_1").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
	                	  
	                                $.fancybox({
	                                    'minWidth':900,
	                                    'minHeight':375,
	                                    'autoScale': true,
	                                    'autoDimensions': true,
	                                    'centerOnScroll': true,
	                                    'href' : '#search-school-box'
	                                 });
	                  }
	           });
	
}

function getZipLatLong(){
	var homeAddress = document.getElementById('newZip').value;
	var geocoder = new google.maps.Geocoder;
	geocoder.geocode({address: homeAddress},
	   function(results_array, status) { 
	                        // Check status and do whatever you want with what you get back
	                        // in the results_array variable if it is OK.
	                        /* if (status === google.maps.GeocoderStatus.OK) { */
	                         var lat = results_array[0].geometry.location.lat();
	                         var lng = results_array[0].geometry.location.lng();
	                                var url = '<%=request.getContextPath()%>';
	                                $.ajax({
	                                                url : url+'/superadmin/nearBySchoolsList',
	                                                data:{lat:lat,lng:lng},
	                                                success : function(result) {
	                                                	
	                                                	 
	                            	                	var parentActiveUsers='';
	                                					parentActiveUsers+='<thead><tr>'+
	                                					'<th><strong>Select</strong></th>'+
	                                					'<th><strong>School Name</strong></th>'+
	                                					'<th ><strong>Address</strong></th>'+
	                                					'</tr></thead><tbody>';
	                                					
	                                					$.each(response.modelMap.schoolDetails, function(index,value) {
	                                						parentActiveUsers+='<tr><td><input id="checkbox_'+value.schoolId+'" type="checkbox" name="vehicle" value="Bike" onclick="selectSchool('+value.schoolId+');"></td><td><p>'+value.schoolName+'</p></td>'+
	                                						'<td ><p>'+value.address+'</p></td>';
	                                					 });
	                                					
	                                					parentActiveUsers+='</tbody>';
	                                			$("#sample_1").html(parentActiveUsers);
	                                		    $("#sample_1").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
	                            	                	  
	                            	                                $.fancybox({
	                            	                                    'minWidth':900,
	                            	                                    'minHeight':375,
	                            	                                    'autoScale': true,
	                            	                                    'autoDimensions': true,
	                            	                                    'centerOnScroll': true,
	                            	                                    'href' : '#search-school-box'
	                            	                                 });
	                                                	
	                                                }
	                                });
	                        /* }else{
	                                var schoolsRecords = '';
	                                if(schoolsRecords==''){
	                                                                schoolsRecords = '<tr><td class="txtleft_align"><p>No Record Found</p></td><td></td><td></td></tr>';
	                                                }
	                                                $("#schoolsList").html(schoolsRecords);
	                        } */
	                });
	}
	 google.maps.event.addDomListener(window, 'load', getZipLatLong);

</script> 


</body>
</html>

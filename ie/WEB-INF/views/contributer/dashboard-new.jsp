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
<title>Campaigns</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style-dev.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />



 	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<%-- <link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/> --%>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />



<style>
.tar_wrapper .progress{overflow: inherit !important;}
</style>
</head>

<body>
<div class="wrapper">
<%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--inner_header starts-->
        
        <!--brow_don_camp starts-->
        <div class="brow_don_camp">
        <div class="container">
        <div class="pracProgress_hdr">
            <h2>Donation Listing</h2>
               <div class="green_line_btm"></div>
     </div>
     	<div class="check-select-out">
                	<div class="check-select background-grey">
                	<c:set value="0" var="total"></c:set>
                	<c:forEach var="donationList" items="${donationList}">
                	<c:set value="${total+donationList.amount}" var="total"></c:set>
                	
                	
                	</c:forEach>
                    	<p>Total Amount Donated<br><span>$${total}</span></p>
                    </div>
                </div>
            
            
            </div>
            
            <!--misc tabs start-->
            <div class="misc_tabs">
            <div class="misc_tabar">
                <ul>
                    <li id="mtab1" class=" selected"><a class="fp" href="javascript:showTab(1,3)">Transaction History</a></li>
                    <li id="mtab2"><a class="trial" href="javascript:showTab(2,3)">Programs in Need</a></li>
                    <li id="mtab3" ><a class="hybrid" href="javascript:showTab(3,3)">Favorite Schools</a></li>
                </ul>
            </div>
            <div class="misc_content">
            <!--TAB 1 STARTS-->
          <div id="tab2" style="display:none;" >
          
          <div class="search_school_cont">
                <div class="containerSmall">
                <form:form  method="POST" modelAttribute="dtoCampaign" action="searchResults" class="register-form" >
                <div class="techForm">
                                    <label class="wdth_auto">Search a School</label>
                                    <div class="step4-textInput" style="margin-right:10px;">
                                        <div class="contact-row">
                                            <div class="outer-field-wrap">
                                                <div class="outer-field">
                                                    <input type="text" id="searchKeyword" name="searchKeyword" onchange="getSearchContent();">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <input type="button" value="Search" class="startBtn fl">
                                </div>
                               </form:form>
                </div>
                </div>
                
                <div class="container" id="contentNew">
                   <div class="schools_contacts_listing mrg_tp50">
              <div id="contentTab2"></div>
              </div></div>
         </div>
                <!--TAB 1 ENDS-->
                <!--TAB 2 STARTS-->
                <div id="tab1">
                
                <div class="container">
                <div id="tab1">
                    <div class="schools_contacts">
            
            <c:forEach var="donationList" items="${donationList}">
            
            <div class="schl_contcs_colum min-hgt-380">
            <h3 class="margin-top-ten">${donationList.name}</h3>
            <div class="schools_logos">
                <img src="<%=request.getContextPath() %>/NewStyles/images/school-profile/${donationList.logoUrl}"  alt=""/>
           
                 </div>
                 <h3 class="margin-top-ten">Amount Donated</h3>
                 <h3 class="margin-top-ten">$${donationList.amount}</h3>
                 <h3 class="margin-top-ten">Donated On: <span>${donationList.donationDate}</span></h3>
                 <h3 class="margin-top-ten">Donation Type : <span>${donationList.donationType}</span></h3>
            
				 
				 <div class="btns-outer mtop20">
				 <input type="button" value="Donation Detail" onclick="donationsList(${donationList.schoolId},'${donationList.campType}');" class="submit-btn">
						</div>
				 
            </div>
            </c:forEach>

            </div>
                </div>
                
				</div>
                
                
                </div>
                <!--TAB 2 ENDS-->
                <!--TAB 3 STARTS-->
                <div id="tab3" style="display:none;" >
                <div class="container" id="contentNew">
                   <div class="schools_contacts_listing">
                <div id="contentTab3"></div>
                </div></div>
      
		        
                
                
                 </div>
                 <!--TAB 3 ENDS-->

            </div>
        </div>
            <!--misc tabs end-->
            
        </div>
        <!--brow_don_camp ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends--> 
</div>

<div id="uniqueDonations" style="display:none; width: 1100px;">
							<div class="container" style="width: 95%">
							<h3>Donations Details</h3>
								<div class="ur_grid_new_fd" style="margin:0 0 0 0;">
									<table class="table table-striped table-hover table-bordered" id="sample_6">
									<thead>
										<tr>
											<th>Campaign Name</th>
											<th>Amount</th>
											<th>Payment Type</th>
											<th>Recurring Type</th>
											<th>Payment Date</th>
											<th>Action</th>
										</tr>
										</thead>
										<tbody>

										</tbody>

									</table>


								</div>
							</div>
                </div>

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp"%>
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>

<!--tab start --> 
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script>
<script type="text/javascript">
$(document).ready(function() {     
	
});
</script>
<script language="javascript">
				function showTab(current,max){
					//location.reload();
					for (i=1;i<=max;i++){
					getMyHTMLElement('tab' + i).style.display = 'none';
					getMyHTMLElement('mtab' + i).className = '';
					}
					getMyHTMLElement('tab' + current).style.display = '';
					getMyHTMLElement('mtab' + current).className = 'selected';
					
					if(current==2){
						programsInNeed();
					}
					if(current==3){
						favoritePrograms();
					}
					
					}
				</script> 
<!--tab end -->
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
  <script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
    });
    
function donationsList(schoolId, campType){
	$("#sample_6").dataTable().fnDestroy();
	var action ='--';
	  var url='<%=request.getContextPath()%>/contributer/getSchoolDonations/'+schoolId+'/'+campType;
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			cache:false,
			success:function(response){
				var records='';
				
				records+='<thead><tr><th><strong>Campaign Name</strong></th><th><strong>Amount</strong></th>'+
				'<th><strong>Payment Type</strong></th>'+
				'<th><strong>Recurring Type</strong></th>'+
				'<th><strong>Payment Date</strong></th>'+
				'<th><strong>Action</strong></th>'+
				'</tr></thead><tbody>';
				
				
				$.each(response,function(index,value){
					if(value.pamentType=='Recurring'){
						if(value.isCancelled != 'Y'){
							action = '<a onclick=cancelPayment('+value.donationId+'); style="cursor:pointer;"> Cancel </a>';
						}
					}
					records+='<tr><td><span class="fd_span">'+value.campaignName+'</span></td>'
					+'<td><span class="fd_span">'+value.amount+'</span></td>'
					+'<td><span class="fd_span">'+value.pamentType+'</span></td>'
					+'<td><span class="fd_span">'+value.reccuringType+'</span></td>'
					+'<td><span class="fd_span">'+value.paymentDate+'</span></td>'
					+'<td><span class="fd_span">'+action+'</span></td>'
					+'</tr>';
				});
				records+='</tbody>';
				$("#sample_6").html(records);
				$("#sample_6").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
				  $("#sample_6").attr("style","width:100%");
				 $.fancybox({
				     'autoScale': true,
				     'autoDimensions': true,
				     'centerOnScroll': true,
				     'href' : '#uniqueDonations'
				  });
				}
		});
}

function cancelPayment(donationId){
	 var url='<%=request.getContextPath()%>/contributer/cancelSubscription/'+donationId;
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			cache:false,
			success:function(response){
				if(response=="Y"){
				location.reload(true);
				}
				}
		});
}

function setFavorite(campId){
	var url = '<%=request.getContextPath()%>';
	$.ajax({
		url : url+'/contributer/setFavorite',
		data:{campId:campId},
		success : function(result) {
			if(result){
				//$("#fav-"+schoolId).removeAttr("onclick");
				$("#fav-"+campId).removeClass('fav-sel-un');
				$("#fav-"+campId).addClass('fav-sel-un-active');
			}
			else{
				$("#fav-"+campId).removeClass('fav-sel-un-active');
				$("#fav-"+campId).addClass('fav-sel-un');
			}
		}
	});
}
function setFavoriteNew(campId){
	var url = '<%=request.getContextPath()%>';
	$.ajax({
		url : url+'/contributer/setFavorite',
		data:{campId:campId},
		success : function(result) {
			if(result){
				//$("#fav-"+schoolId).removeAttr("onclick");
				$("#favNew-"+campId).removeClass('fav-sel-un');
				$("#favNew-"+campId).addClass('fav-sel-un-active');
			}
			else{
				$("#favNew-"+campId).removeClass('fav-sel-un-active');
				$("#favNew-"+campId).addClass('fav-sel-un');
			}
		}
	});
	favoritePrograms();
}
function programsInNeed(){
	$("#searchKeyword").val("");
	var url='<%=request.getContextPath()%>/contributer/getAllCampaigns';
	$.ajax({
	url:url,
	method:'GET',
	async :false,
	cache:false,
	success:function(response){
	var htmlContent = '<ul>';
	$.each(response.modelMap.campaign,function(index,value){
	htmlContent += '<li>'+
	'<div class="schl_contcs_colum_listing">'+
	'<h3>'+value.schoolName+'</h3>'+
		'<div class="schools_logos">';
		if(typeof value.schoolLogo ==='undefined'){
			htmlContent +='<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>';
		}
		else{
			htmlContent +='<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/'+value.schoolLogo+'"  alt=""/>';
		}
		htmlContent +='</div>'+
			'<h3 class="funding_margin">Funding Status</h3>'+
			'<div class="content_inner">'+
				'<div class="tar_container mbtm0">'+
					'<div class="tar_wrapper">'+
						"<input type='hidden' value='"+value.totalCampAmount+"' id='"+'totalCampaignAmount'+value.campaignId+"'>"+
							"<input type='hidden' value='"+value.schoolContribution+"' id='"+'schoolContributionTotal'+value.campaignId+"'>"+
							"<input type='hidden' value='"+value.donorContribution+"' id='"+'donorContributionTotal'+value.campaignId+"'>"+
							'<div class="tar_container mbtm0">'+
								'<div class="tar_wrapper_camp">'+
									'<div class="range_wrpr">'+
										'<div class="progress" style="border: 5px solid #dadada; border-radius:35px; overflow: hidden; ">'+
											'<div class="progress-bar progress-bar-warning pinpoint" id="contributeSchoolFirst'+value.campaignId+'" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">'+
											'</div>'+
											'<div class="progress-bar progress-bar-danger pinpoint" role="progressbar" id="donorContributedAmount'+value.campaignId+'" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff;">'+
											'</div>'+
											'<div class="progress-bar progress-bar-success pinpoint" id="needAssistanceSecond'+value.campaignId+'" role="progressbar" style="border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;">'+
												'<div class="pinpoint-txt">'+
													'<div class="sch-contri">Target</div>'+
														'<div class="sch-contri-amt">$'+value.totalCampAmount+'</div>'+
												'</div>'+
											'</div>'+
											'<div class="progress-bar progress-bar-overload pinpoint" role="progressbar" id="donorContributedAmountOverload'+value.campaignId+'" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;">'+
											'</div>'+
										'</div>'+
									'</div>'+
								'</div>'+
							'</div>'+
							'<div class="clr"></div>'+
								'<div class="fullrow txtcenter_align mrg_tp50 mrg_btm15">'+
								'</div>'+
						'</div>'+
					'</div>'+
				'</div>';
				if(value.favorite == 'Y'){
				htmlContent +='<div class="fav-sel-un-active" id="fav-'+value.campaignId+'">'+
									'<a href="javascript:;" onclick="setFavorite('+value.campaignId+');">Set as Favorite</a>'+
							'</div>';
				}
				else{
					htmlContent +='<div class="fav-sel-un" id="fav-'+value.campaignId+'">'+
									'<a href="javascript:;" onclick="setFavorite('+value.campaignId+');">Set as Favorite</a>'+
								'</div>';
					}
					htmlContent +='<form action="contributer/camp">'+
					'<div class="btns-outer mtop20">'+
						'<input class="submit-btn" type="submit" value="join us">'+
						'<input name="id" value="'+value.campaignId+'" type="hidden"/>'+
					'</div>'+
								'</form>'+
				'</div>'+
			'</li>';
			});
			htmlContent += '</ul>';
	$("#contentTab2").html(htmlContent);
$.each(response.modelMap.campaign,function(index,value){
var firstValId=value.campaignId;
var schoolConhtribution = $("#schoolContributionTotal"+firstValId).val();
var totalAmount = $("#totalCampaignAmount"+firstValId).val();
var totalDonationAmount = $("#donorContributionTotal"+firstValId).val();
var resultPer1 = (schoolConhtribution * 100/ totalAmount);
var resultPer2 = (totalDonationAmount * 100/ totalAmount);
if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
resultPer2 = 100-resultPer1-1;
var resultPer3 = (100-(resultPer1+resultPer2)-1);
}
else{
var resultPer3 = 100-(resultPer1+resultPer2);
}
resultPer1 = resultPer1.toFixed()+"%";
resultPer2 = resultPer2.toFixed()+"%";
resultPer3 = resultPer3.toFixed()+"%";
$('#contributeSchoolFirst'+firstValId).width(resultPer1);
$('#contributeSchoolFirst'+firstValId).addClass("xtra_padding");
$('#donorContributedAmount'+firstValId).width(resultPer2);
$('#donorContributedAmount'+firstValId).addClass("xtra_padding");
$('#needAssistanceSecond'+firstValId).width(resultPer3);
if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
$('#donorContributedAmountOverload'+firstValId).width("1%");
}
$('#needAssistanceSecond'+firstValId).addClass("xtra_padding");
});
}
});
}

function favoritePrograms(){
	$("#searchKeyword").val("");
	var url='<%=request.getContextPath()%>/contributer/getAllCampaigns';
	$.ajax({
	url:url,
	method:'GET',
	async :false,
	cache:false,
	success:function(response){
	var htmlContent = '<ul>';
	$.each(response.modelMap.campaign,function(index,value){
	if(value.favorite == 'Y'){
		htmlContent += '<li>'+
		'<div class="schl_contcs_colum_listing">'+
		'<h3>'+value.schoolName+'</h3>'+
			'<div class="schools_logos">';
			if(typeof value.schoolLogo ==='undefined'){
				htmlContent +='<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>';
			}
			else{
				htmlContent +='<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/'+value.schoolLogo+'"  alt=""/>';
			}
			htmlContent +='</div>'+
				'<h3 class="funding_margin">Funding Status</h3>'+
				'<div class="content_inner">'+
					'<div class="tar_container mbtm0">'+
						'<div class="tar_wrapper">'+
							"<input type='hidden' value='"+value.totalCampAmount+"' id='"+'totalCampaignAmountFav'+value.campaignId+"'>"+
								"<input type='hidden' value='"+value.schoolContribution+"' id='"+'schoolContributionTotalFav'+value.campaignId+"'>"+
								"<input type='hidden' value='"+value.donorContribution+"' id='"+'donorContributionTotalFav'+value.campaignId+"'>"+
								'<div class="tar_container mbtm0">'+
									'<div class="tar_wrapper_camp">'+
										'<div class="range_wrpr">'+
											'<div class="progress" style="border: 5px solid #dadada; border-radius:35px; overflow: hidden; ">'+
												'<div class="progress-bar progress-bar-warning pinpoint" id="contributeSchoolFirstFav'+value.campaignId+'" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">'+
												'</div>'+
												'<div class="progress-bar progress-bar-danger pinpoint" role="progressbar" id="donorContributedAmountFav'+value.campaignId+'" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff;">'+
												'</div>'+
												'<div class="progress-bar progress-bar-success pinpoint" id="needAssistanceSecondFav'+value.campaignId+'" role="progressbar" style="border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;">'+
													'<div class="pinpoint-txt">'+
														'<div class="sch-contri">Target</div>'+
															'<div class="sch-contri-amt">$'+value.totalCampAmount+'</div>'+
													'</div>'+
												'</div>'+
												'<div class="progress-bar progress-bar-overload pinpoint" role="progressbar" id="donorContributedAmountOverloadFav'+value.campaignId+'" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;">'+
												'</div>'+
											'</div>'+
										'</div>'+
									'</div>'+
								'</div>'+
								'<div class="clr"></div>'+
									'<div class="fullrow txtcenter_align mrg_tp50 mrg_btm15">'+
									'</div>'+
							'</div>'+
						'</div>'+
					'</div>';
					if(value.favorite == 'Y'){
					htmlContent +='<div class="fav-sel-un-active" id="favNew-'+value.campaignId+'">'+
										'<a href="javascript:;" onclick="setFavoriteNew('+value.campaignId+');">Set as Favorite</a>'+
								'</div>';
					}
					else{
						htmlContent +='<div class="fav-sel-un" id="favNew-'+value.campaignId+'">'+
										'<a href="javascript:;" onclick="setFavoriteNew('+value.campaignId+');">Set as Favorite</a>'+
									'</div>';
						}
						htmlContent +='<form action="contributer/camp">'+
						'<div class="btns-outer mtop20">'+
							'<input class="submit-btn" type="submit" value="join us">'+
							'<input name="id" value="'+value.campaignId+'" type="hidden"/>'+
						'</div>'+
									'</form>'+
					'</div>'+
				'</li>';
	}
	
			});
			htmlContent += '</ul>';
	$("#contentTab3").html(htmlContent);
$.each(response.modelMap.campaign,function(index,value){
var firstValId=value.campaignId;
var schoolConhtribution = $("#schoolContributionTotalFav"+firstValId).val();
var totalAmount = $("#totalCampaignAmountFav"+firstValId).val();
var totalDonationAmount = $("#donorContributionTotalFav"+firstValId).val();
var resultPer1 = (schoolConhtribution * 100/ totalAmount);
var resultPer2 = (totalDonationAmount * 100/ totalAmount);
if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
resultPer2 = 100-resultPer1-1;
var resultPer3 = (100-(resultPer1+resultPer2)-1);
}
else{
var resultPer3 = 100-(resultPer1+resultPer2);
}
resultPer1 = resultPer1.toFixed()+"%";
resultPer2 = resultPer2.toFixed()+"%";
resultPer3 = resultPer3.toFixed()+"%";
$('#contributeSchoolFirstFav'+firstValId).width(resultPer1);
$('#contributeSchoolFirstFav'+firstValId).addClass("xtra_padding");
$('#donorContributedAmountFav'+firstValId).width(resultPer2);
$('#donorContributedAmountFav'+firstValId).addClass("xtra_padding");
$('#needAssistanceSecondFav'+firstValId).width(resultPer3);
if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
$('#donorContributedAmountOverloadFav'+firstValId).width("1%");
}
$('#needAssistanceSecondFav'+firstValId).addClass("xtra_padding");
});
}
});
}


function getSearchContent(){
	
    var searchKeyword = $("#searchKeyword").val().trim();
 if(searchKeyword!=""){
    var url='<%=request.getContextPath()%>/contributer/searchCampaign';
    $.ajax({
           url:url,
           method:'GET',
           async :false,
           data:{searchKeyword:searchKeyword},
           success:function(response){
        	  // alert("response = "+response.modelMap.campaign);
                 if(response != null){
                	 var htmlContent = '<ul>';
                	 $.each( response.modelMap.campaign, function(index,value) {
                			htmlContent += '<li>'+
                			'<div class="schl_contcs_colum_listing">'+
                			'<h3>'+value.schoolName+'</h3>'+
                				'<div class="schools_logos">';
                				if(typeof value.schoolLogo ==='undefined'){
                					htmlContent +='<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>';
                				}
                				else{
                					htmlContent +='<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/'+value.schoolLogo+'"  alt=""/>';
                				}
                				htmlContent +='</div>'+
                					'<h3 class="funding_margin">Funding Status</h3>'+
                					'<div class="content_inner">'+
                						'<div class="tar_container mbtm0">'+
                							'<div class="tar_wrapper">'+
                								"<input type='hidden' value='"+value.totalCampAmount+"' id='"+'totalCampaignAmountSea'+value.campaignId+"'>"+
                									"<input type='hidden' value='"+value.schoolContribution+"' id='"+'schoolContributionTotalSea'+value.campaignId+"'>"+
                									"<input type='hidden' value='"+value.donorContribution+"' id='"+'donorContributionTotalSea'+value.campaignId+"'>"+
                									'<div class="tar_container mbtm0">'+
                										'<div class="tar_wrapper_camp">'+
                											'<div class="range_wrpr">'+
                												'<div class="progress" style="border: 5px solid #dadada; border-radius:35px; overflow: hidden; ">'+
                													'<div class="progress-bar progress-bar-warning pinpoint" id="contributeSchoolFirstSea'+value.campaignId+'" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">'+
                													'</div>'+
                													'<div class="progress-bar progress-bar-danger pinpoint" role="progressbar" id="donorContributedAmountSea'+value.campaignId+'" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff;">'+
                													'</div>'+
                													'<div class="progress-bar progress-bar-success pinpoint" id="needAssistanceSecondSea'+value.campaignId+'" role="progressbar" style="border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;">'+
                														'<div class="pinpoint-txt">'+
                															'<div class="sch-contri">Target</div>'+
                																'<div class="sch-contri-amt">$'+value.totalCampAmount+'</div>'+
                														'</div>'+
                													'</div>'+
                													'<div class="progress-bar progress-bar-overload pinpoint" role="progressbar" id="donorContributedAmountOverloadSea'+value.campaignId+'" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;">'+
                													'</div>'+
                												'</div>'+
                											'</div>'+
                										'</div>'+
                									'</div>'+
                									'<div class="clr"></div>'+
                										'<div class="fullrow txtcenter_align mrg_tp50 mrg_btm15">'+
                										'</div>'+
                								'</div>'+
                							'</div>'+
                						'</div>';
                						if(value.favorite == 'Y'){
                						htmlContent +='<div class="fav-sel-un-active" id="favNew-'+value.campaignId+'">'+
                											'<a href="javascript:;" onclick="setFavoriteNew('+value.campaignId+');">Set as Favorite</a>'+
                									'</div>';
                						}
                						else{
                							htmlContent +='<div class="fav-sel-un" id="favNew-'+value.campaignId+'">'+
                											'<a href="javascript:;" onclick="setFavoriteNew('+value.campaignId+');">Set as Favorite</a>'+
                										'</div>';
                							}
                							htmlContent +='<form action="contributer/camp">'+
                							'<div class="btns-outer mtop20">'+
                								'<input class="submit-btn" type="submit" value="join us">'+
                								'<input name="id" value="'+value.campaignId+'" type="hidden"/>'+
                							'</div>'+
                										'</form>'+
                						'</div>'+
                					'</li>';
                		
                     });
                	htmlContent += '</ul>';
                	$("#contentTab2").html(htmlContent);
                	$.each(response.modelMap.campaign,function(index,value){
                		var firstValId=value.campaignId;
                		var schoolConhtribution = $("#schoolContributionTotalSea"+firstValId).val();
                		var totalAmount = $("#totalCampaignAmountSea"+firstValId).val();
                		var totalDonationAmount = $("#donorContributionTotalSea"+firstValId).val();
                		var resultPer1 = (schoolConhtribution * 100/ totalAmount);
                		var resultPer2 = (totalDonationAmount * 100/ totalAmount);
                		if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
                		resultPer2 = 100-resultPer1-1;
                		var resultPer3 = (100-(resultPer1+resultPer2)-1);
                		}
                		else{
                		var resultPer3 = 100-(resultPer1+resultPer2);
                		}
                		resultPer1 = resultPer1.toFixed()+"%";
                		resultPer2 = resultPer2.toFixed()+"%";
                		resultPer3 = resultPer3.toFixed()+"%";
                		$('#contributeSchoolFirstSea'+firstValId).width(resultPer1);
                		$('#contributeSchoolFirstSea'+firstValId).addClass("xtra_padding");
                		$('#donorContributedAmountSea'+firstValId).width(resultPer2);
                		$('#donorContributedAmountSea'+firstValId).addClass("xtra_padding");
                		$('#needAssistanceSecondSea'+firstValId).width(resultPer3);
                		if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
                		$('#donorContributedAmountOverloadSea'+firstValId).width("1%");
                		}
                		$('#needAssistanceSecondSea'+firstValId).addClass("xtra_padding");
                		});
                        
                  }
                 else{
                	 programsInNeed();
                 }
                  
           }
           
    });  
 }
 if(searchKeyword==""){
    location.reload();
 }
    
}

  </script>
  
  
</body>
</html>

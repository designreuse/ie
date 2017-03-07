<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html class="full" lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcome - Inner Explorer</title>

    
    <!-- Compiled and minified CSS -->
  <!--   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css"> -->
<!-- Bootstrap Core CSS -->
    <link href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css" rel="stylesheet">
    <!-- Compiled and minified JavaScript -->
<!--     <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script> -->
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
    <link href="<%=request.getContextPath()%>/NewStyles/css/progress/dashboard.css" rel="stylesheet">
    <link rel="stylesheet prefetch" href="<%=request.getContextPath()%>/NewStyles/css/datepicker.css">
     <link href="<%=request.getContextPath()%>/NewStyles/css/wisdom/the-styles.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/NewStyles/css/wisdom/inner-pages-style.css" rel="stylesheet">
<!-- jQuery -->
      
   <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=request.getContextPath()%>/NewStyles/js/progress/bootstrap.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src='<%=request.getContextPath()%>/NewStyles/js/datepicker.js'></script>
<link rel="stylesheet" type="text/css" media="all" href="<%=request.getContextPath()%>/NewStyles/css/progress/daterangepicker.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
      <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/progress/moment.js"></script>
      <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/progress/daterangepicker.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
   .fancybox-wrap .fancybox-skin{ background-color: rgba(0, 0, 0, 0.8) !important;
    border: medium none !important;
    box-shadow: 0 0 4px #fff !important;
    color: #fff !important;
    height: auto !important;
    padding: 15px !important;
    text-align: center !important;
    }
    
    .txt-color{
    color:black;
    }
    #todaysUsers_length label select option{color:#333 !important}
    #todaysUsers_length label select{color:#333 !important}
    #todaysUsers_filter label input {color:#333 !important}
    </style>
<!-- <style type="text/css">
  html, body, .container-fluid, .row {
  height: 100%;
}

.sidebar {
  background-color: #fff;
  box-shadow: 0 2px 5px 0 rgba(0,0,0,0.15);
    transition: ease all 0.5s;    position: fixed;
    width: 300px;
}

@media (min-width: 992px) {
  .sidebar {
    position: fixed;
    top: 0;
    left: 0;
    bottom: 0;
    z-index: 1000;
    display: block;
    background-color: #fff;
  }
}
</style> -->
</head>

<body class="img_full_get_event1" >
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
        <li class="list-group-item"><a href="<%=request.getContextPath()%>/teacher/progress">History</a></li>
        <li class="list-group-item"><a href="#!">Settings</a></li>
        <li class="list-group-item"><a href="#!">Logout</a></li>
      </ul>
 </div>
</div>
  <span  class="menu_side editorMenu" id="burger_menu_ie" onclick="openNav()">&#8801;</span>
  <section class="dashboard_outer">
      <div class="container" style="padding-top:4% !important">
           
          <div class="col-md-12 pull-left">
           <div class="col-md-3" >
             		  <label style="color:#fff">From:</label><div id="datepicker_from" class="input-group date" data-date-format="yyyy-mm-dd" style="padding-top:10px;">
                           <input class="form-control" type="text" readonly id="fromDate" name="subExpDate" placeholder="Sub. expiry date" />
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
</div>


             		  <label style="color:#fff">To:</label><div id="datepicker_to" class="input-group date" data-date-format="yyyy-mm-dd" style="padding-top:10px;padding-bottom: 20px;">
                           <input class="form-control" type="text" readonly id="toDate" name="subExpDate" placeholder="Sub. expiry date" />
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
</div>

<center><input type="submit" value="Submit" onClick="changeTracksGraph();" style="background-color:#ffd966"></center>

            </div> 

            <div class="col-md-9">
                   <div class="card-panel white_colo">
                      <div id="mindfulness" style="min-width: 300px; height: 400px; margin: 0 auto"></div>
                  </div>
                
            </div>           
             
          </div>
          <div class="col-md-12 pull-left"> 
         <div id="container" style="min-width: 310px; height: 400px; width:100%; margin: 0 auto"></div>
         </div>

      </div>  
  </section>
      <div id="Usersdiv"  style="display:none;">
		
	

			<table class="table table-stri 200,ped table-hover table-bordered"
				id="todaysUsers">
				<thead>
					<tr>
						<th><strong>Name</strong></th>
						<th><strong>Email</strong></th>
						<th><strong>SchoolName</strong></th>
						
					</tr>
				</thead>
				
								
			</table>


	
	</div>
	<!-- Pop Up for bar graph -->
			<div id="myModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			
			    <!-- Modal content-->
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">Modal Header</h4>
			      </div>
			      <div class="modal-body">
			        <p>Some text in the modal.</p>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
			    </div>
			
			  </div>
			</div>
	<!-- End Popup For Bar Graph -->
	
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.fancybox.pack.js?v=2.1.5"></script>
  <script type="text/javascript">	

$(function () {
	var d = new Date();
	var weekday = new Array();
	var dateList=${dateList};
	var plot=${graphPlot};
	var result=[];
	//alert(plot);
	
	$.each(plot,function(index,value){
		result.push({x:value.weekNo,y:value.dayNo});
		
		
});
	
	//alert(result);
	//alert(dateList);
	
	/* weekday[0] = "Sunday"; */
	weekday[1] = "Monday";
	weekday[2] = "Tuesday";
	weekday[3] = "Wednesday";
	weekday[4] = "Thursday";
	weekday[5] = "Friday";
/* 	weekday[6] = "Saturday"; */
     var months = [
        'Jan', 
        'Feb', 
        'Mar', 
        'Apr', 
        'May', 
        'Jun', 
        'Jul', 
        'Aug', 
        'Sep',
        'Oct',
        'Nov',
        'Dec'
    ];
    Highcharts.chart('container', {
        chart: {
            type: 'scatter',
            zoomType: 'xy',
            backgroundColor: null
        },
        title: {
            text: 'Teacher progress of last quarter',
            style: {
                color: '#ffffff'
            },
        },
        /* subtitle: {
            text: 'Source: Heinz  2003'
        }, */
        xAxis: {
        	 type: 'datetime',
            title: {
                enabled: true,
                text: 'Date'
            },
            startOnTick: true,
            endOnTick: true,
           showLastLabel: true, 
            style: {
                color: '#ffffff'
            },
          /*   min:'2016-10-01',
            max:'2017-00-01',
            tickInterval: 24 * 3600 * 1000, */
          categories:dateList,  
        	labels: {
                formatter: function() {
                	 var date = new Date(this.value);
                     return months[date.getMonth()] + ' ' + date.getDate();
                }
             ,
             style: {
                 color: '#ffffff'
             }},
        
        },
        yAxis: {
        	min: 1,
        	max:5,
        	 style: {
                 color: '#ffffff'
             },
        	type: 'datetime',
        	labels: {
                formatter: function() {
                    return weekday[this.value];
                }
             ,
             style: {
                 color: '#ffffff'
             }},
            title: {
                text: 'Days'
            }
        },
        legend: {
            layout: 'vertical',
            align: 'left',
            verticalAlign: 'top',
            x: 100,
            y: 70,
            floating: true,
         /*    backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF', */
            borderWidth: 1
        },
        plotOptions: {
            scatter: {
                marker: {
                    radius: 13,
                    states: {
                        hover: {
                             enabled: true, 
                            lineColor: '#ffd966'
                        }
                    }
                },
                states: {
                    hover: {
                        marker: {
                            enabled: false
                        }
                    }
                },
                tooltip: {
                     headerFormat: '<b>Played on</b><br>',
                    pointFormat: 'Week {point.x},Day {point.y}' ,
                 
                }
            }
        },
        series: [{
       
            color: '#ffd966',
            data: result,
           /*  name:' ' */
            showInLegend: false,  

        }]
    });
});

</script>
 <script>
      $(function () {
    $('#datepicker_to').datepicker({
        autoclose: true,
        todayHighlight: true
    }).datepicker('update', new Date(new Date().getTime()));
    ;
    
    $('#datepicker_from').datepicker({
        autoclose: true,
        todayHighlight: true
    }).datepicker('update', new Date(new Date().getTime()));
    ;
    
    $('#datepicker_parent').datepicker({
        autoclose: true,
        todayHighlight: true
    }).datepicker('update', new Date(new Date().getTime()));
    ;
});
      
      //# sourceURL=pen.js
    </script>
    <script>
    
    function openNav() {
        document.getElementById("mySidenav").style.width = "320px";
    /*    document.getElementById("sideBarDiv").style.marginLeft = "320px";*/
       // document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
        $('#burger_menu_ie').hide();
      /*  document.getElementById("burger_menu_ie").style.display = "none";*/

    }

    function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
        /*document.getElementById("sideBarDiv").style.marginLeft= "0";*/
      //  document.body.style.backgroundColor = "white";
         $('#burger_menu_ie').show();
    }

    </script>
    

<script type="text/javascript">
  

$(function () {
	
	var minuteGraph=${minutesGraph};
	//alert(minuteGraph);
	var xaxis=[];
	var yaxis=[];
	var result=[];
	result=${trackList}
	xaxis=${dateList1}
	var i=0;
/* 	$.each(minuteGraph,function(index,value){
		////alert(new Date(value.playedOn));
		////alert(value.noOfTracks);
		xaxis[i]=new Date(value.playedOn);
		yaxis[i]=value.noOfTracks;
		result.push([new Date(value.playedOn),value.noOfTracks]);
		
		i=i+1
		
		
		
}); */





	
	 var months = [
	               'Jan', 
	               'Feb', 
	               'Mar', 
	               'Apr', 
	               'May', 
	               'Jun', 
	               'Jul', 
	               'Aug', 
	               'Sep',
	               'Oct',
	               'Nov',
	               'Dec'
	           ];
	/* //alert(yaxis); */
	//alert(xaxis);
	//alert(result);
    Highcharts.chart('mindfulness', {
    
        chart: {
            type: 'column',
             backgroundColor: null

        },
          colors: ['#ffd966', '#ffd966', '#ffd966', '#ffd966', '#ffd966', '#ffd966', '#ffd966', '#ffd966', '#ffd966'],
        title: {
            text: 'Mindfulness Minutes',
           style: {
                color: '#ffffff'
            },
        },
        
        credits: {
            enabled: false
          },
       
        xAxis: {
        	 type: 'datetime',
  
            categories: xaxis, 
            
            labels: {
            	
            	style: {
                    color: '#ffffff'
                },
                formatter: function() {
                	 var date = new Date(this.value);
                     return months[date.getMonth()] + ' ' + date.getDate();
                }
            }
             ,
            crosshair: true
        },
        yAxis: {
            min: 0,
            title: {
                text: '',
                 style: {
                color: '#ffffff',
                font: '12px Helvetica',
                fontWeight: 'bold'
            },
            },
             labels: {
            style: {
                color: '#ffffff',
                font: '12px Helvetica',
                fontWeight: 'bold'
            },
        },
        },
       
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f}</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        legend: {
              itemStyle: {
                 color: '#ffffff'
              },
           
        },
        credits: {
    enabled: false
  },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            },
             column: {
                    colorByPoint: true
                }
        },
       
        series: [{
    
            name: 'Tracks',
            data:result,
            point: {
                events: {
                    click: function () {
                        //alert(xaxis[this.x]);
                        getUsersForDate(new Date(xaxis[this.x]));
                    }
                }
            },

        }]
    });
});

</script>

<script type="text/javascript">
      $(document).ready(function() {
          $('.config-demo').click();
        updateConfig();

        function updateConfig() {
          var options = {};


          $('#config-demo').daterangepicker(options, function(start, end, label) { console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')'); });
          
        }

      });
</script>
      <script type="text/javascript">
             $(window).load(function(){
               //$('input[name="daterange"]').daterangepicker();
               $('.config-demo').click();
            });
      </script>
<script>

function changeTracksGraph()
{
var fromDate=$('#fromDate').val();
var toDate=$('#toDate').val();

var xaxis=[];

var result=[];


	 var url='<%=request.getContextPath()%>/teacher/changeTracksGraph';
	$.ajax({
		url:url,
		method:'GET',
		async :true,
		data:{fromDate:fromDate,toDate:toDate},
		success:function(response){
			/* //alert(response); */
			if(response!=null){
				


 var months = [
              'Jan', 
              'Feb', 
              'Mar', 
              'Apr', 
              'May', 
              'Jun', 
              'Jul', 
              'Aug', 
              'Sep',
              'Oct',
              'Nov',
              'Dec'
          ]; 
/* //alert(yaxis); */

xaxis=response.modelMap.dateList1;
Highcharts.chart('mindfulness', {

   chart: {
       type: 'column',
        backgroundColor: null

   },
     colors: ['#ffd966', '#ffd966', '#ffd966', '#ffd966', '#ffd966', '#ffd966', '#ffd966', '#ffd966', '#ffd966'],
   title: {
       text: 'Mindfulness Minutes',
      style: {
           color: '#ffffff'
       },
   },
   
   credits: {
       enabled: false
     },
  
   xAxis: {
   	 type: 'datetime',

       categories: response.modelMap.dateList1,
       
       labels: {
       	
       	style: {
               color: '#ffffff'
           },
           formatter: function() {
        	  
           	 var date = new Date(this.value);
           	 
                return months[date.getMonth()] + ' ' + date.getDate();
                // date;
           }
       }
        ,
       crosshair: true
   },
   yAxis: {
       min: 0,
       title: {
           text: '',
            style: {
           color: '#ffffff',
           font: '12px Helvetica',
           fontWeight: 'bold'
       },
       },
        labels: {
        	
                formatter: function() {
                	
                    return this.value;
                },
       style: {
           color: '#ffffff',
           font: '12px Helvetica',
           fontWeight: 'bold'
       },
   },
   
   },
  
   tooltip: {
       headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
       pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
           '<td style="padding:0"><b>{point.y:.1f}</b></td></tr>',
       footerFormat: '</table>',
       shared: true,
       useHTML: true
   },
   legend: {
         itemStyle: {
            color: '#ffffff'
         },
      
   },
   credits: {
enabled: false
},
   plotOptions: {
       column: {
           pointPadding: 0.2,
           borderWidth: 0
       },
        column: {
               colorByPoint: true
           }
   },
  
   series: [{

       name: 'Tracks',
       data:response.modelMap.trackList,
       point: {
           events: {
               click: function () {
                   //alert(xaxis[this.x]);
                   getUsersForDate(new Date(xaxis[this.x]));
               }
           }
       },

   }]
});






					
		    	
				
				
				
				
					
				 
				
				
		}
		
		}
	}); 
	}
	
function getUsersForDate(tdate)
{
	
	//alert(tdate);
	var d = tdate;
    var curr_date = d.getDate();
    var curr_month = d.getMonth() + 1; //Months are zero based
    var curr_year = d.getFullYear();
   newdate= curr_year + "-" + curr_month + "-" + curr_date;
	 //alert(newdate);
	$("#todaysUsers").dataTable().fnDestroy();
	$("#todaysUsers").html('');
	
	 var url='<%=request.getContextPath()%>/teacher/getTrackDetailsByDate';
	$.ajax({
		url:url,
		method:'GET',
		async :true,
		data:{"newdate":newdate},
		success:function(response){
			/* //alert(response); */
			if(response!=null){
				
				

				 var userDetail='';
				 userDetail+='<thead><tr><th><strong>Audio Name</strong></th><tbody>';
				 
	
	$.each(response.modelMap.dtoUsers, function(index,value) {
		
			
		userDetail+='<tr><td>'+value.audioName+'</td></tr>';
	});
						userDetail+='</tbody>';
						$("#todaysUsers").html(userDetail);
					    $("#todaysUsers").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15}); 
						
						 $.fancybox({
						     'autoScale': true,
						     'autoDimensions': true,
						     'centerOnScroll': true,
						     'href' : '#Usersdiv'
						  });



					
		    	
				
				
				
				
					
				 
				
				
		}
		
		}
	}); 
	
}

</script>

<!-- <style type="text/css">
  .g{background-color: #d95232 !important}
</style>

<script>
function myFunction() {
    //alert("Page is loaded");

     $("td.in-range").addClass("intro");
      $(".end").addClass("intro");
}
</script> -->
</body>

</html>

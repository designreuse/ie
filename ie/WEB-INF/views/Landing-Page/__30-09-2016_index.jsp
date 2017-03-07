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
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Inner Explorer | Changing the world, one student at a time...</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="InnerExplorer">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="<%=request.getContextPath()%>/NewStyles/Landing-Page/images/favicon.ico" type="image/x-icon">
    <!-- BOOTSTRAP CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/Landing-Page/css/plugins/bootstrap.min.css">
    <!-- FONT ICONS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/Landing-Page/css/font-awesome.min.css">
    <!-- GOOGLE FONTS -->
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet"> 
      <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500" rel="stylesheet">   
      <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/Landing-Page/css/plugins/loaders.css">   
      <!-- CUSTOM STYLESHEET -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/Landing-Page/css/style.css">
      <!-- RESPONSIVE FIXES -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/Landing-Page/css/responsive.css">
      <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
      <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
      <!--[if lt IE 9]>
       <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
       <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->  
      <script src="<%=request.getContextPath()%>/NewStyles/Landing-Page/js/jssor.slider-21.1.5.min.js" type="text/javascript"></script>
      <script type="text/javascript">
        jssor_1_slider_init = function() {
            
            var jssor_1_SlideoTransitions = [
              [{b:-1,d:1,o:-1},{b:0,d:1000,o:1}],
              [{b:1900,d:2000,x:-379,e:{x:7}}],
              [{b:1900,d:2000,x:-379,e:{x:7}}],
              [{b:-1,d:1,o:-1,r:288,sX:9,sY:9},{b:1000,d:900,x:-1400,y:-660,o:1,r:-288,sX:-9,sY:-9,e:{r:6}},{b:1900,d:1600,x:-200,o:-1,e:{x:16}}]
            ];
            
            var jssor_1_options = {
              $AutoPlay: true,
              $SlideDuration: 800,
              $SlideEasing: $Jease$.$OutQuint,
              $CaptionSliderOptions: {
                $Class: $JssorCaptionSlideo$,
                $Transitions: jssor_1_SlideoTransitions
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };
            
            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
            
            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizing
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1920);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            //responsive code end
        };
        
    </script>
    <!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '1249183021800237', {
em: 'insert_email_variable,'
});
fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=1249183021800237&ev=PageView&noscript=1"
/></noscript>
<!-- DO NOT MODIFY -->
<!-- End Facebook Pixel Code -->
<script type="text/javascript">
_linkedin_data_partner_id = "27286";
</script><script type="text/javascript">
(function(){var s = document.getElementsByTagName("script")[0];
var b = document.createElement("script");
b.type = "text/javascript";b.async = true;
b.src = "https://snap.licdn.com/li.lms-analytics/insight.min.js";
s.parentNode.insertBefore(b, s);})();
</script>

</head>

<body data-spy="scroll" data-target="#main-navbar">
<div id="fb-root"></div>
  <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
         js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.7";
              fjs.parentNode.insertBefore(js, fjs);
    }
          (document, 'script', 'facebook-jssdk'));
  </script>
  
    <!-- Preloader -->
    <!-- <div class="loader bg-yellow"> <div class="loader-inner ball-scale-ripple-multiple vh-center"> <div></div> <div></div> <div></div> </div> </div>    -->

<div class="main-container" id="page">
        <!-- =========================
             HEADER 
        ============================== -->
        <header id="nav1-3">
            <nav class="navbar navbar-fixed-top p0" id="main-navbar">
            
                <div class="container-fluid header-container">
                    
                    <div class="navbar-header col-md-6 col-xs-6 pull-left">
                        
                        <a href="http://innerexplorer.org/" class="navbar-brand logo-black smooth-scroll" target="_blank"><img src="<%=request.getContextPath()%>/NewStyles/Landing-Page/images/ie-logo.png" alt="logo" width="310px"/></a>
                        <div class="clearfix"></div>
                        <p class="tagline-top">Changing the World. One Student at a Time...</p>
                    </div><!-- /End Navbar Header -->
                    
                    <div class="col-md-6 col-xs-6 pull-right">
                            
                        <ul class="nav navbar-nav navbar-right pt25 socialnew"> 
                            <li><a href="https://www.facebook.com/InnerExplorer/" class="facebookHover" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="https://twitter.com/Inner_Explorer" class="twtHover" target="_blank"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="https://www.linkedin.com/company/2925490" class="lkndHover" target="_blank"><i class="fa fa-linkedin"></i></a></li>
                        </ul><!-- /End Menu Links --> 
                    </div>
                </div><!-- /End Container -->
            </nav><!-- /End Navbar -->
        </header>
        <!-- /End Header -->


        <!-- =========================
            HERO SECTION
        ============================== -->



  <div id="jssor_1" style="position: relative; margin: 0px auto; top: 80px; left: 0px;  width: 1500px; height: 650px; overflow: hidden; visibility: hidden;">
       
        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1500px; height: 650px; overflow: hidden;">            
         
            <div data-p="225.00" data-po="80% 55%">
                <img data-u="image" src="<%=request.getContextPath()%>/NewStyles/Landing-Page/images/home-bnr-new2.jpg" />
                <div class="container">
          <div class="carousel-caption captwo">
            <div class="col-md-12 col-sm-12">
              <h1 style="font-family: 'Raleway', sans-serif; font-weight:200 !important">IF YOU WANT MORE TIME TO TEACH, TAKE 10 MINUTES OUT OF YOUR DAY</h1>                
                  <ul class="bannerul">
                    <li>Inner Explorer is the easiest way to practice mindfulness for 10 minutes a day.... these 10 mindful minutes are all you need to help kids focus, reduce behavior issues and give yourself more time to engage and inspire your students</li> 

                  </ul>
            </div>
          </div>
        </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">jssor_1_slider_init();</script>




          
  <section class="benefit-outer-main" id="StartProgram">
      <div class="container">
          <div class="row">
              <div class="section-header text-center wow fadeIn sameFontie animated" style="visibility: visible;">
                  <h2>Start Inner Explorer Experience</h2>
                  <p class="lead sameFontiep copyIm">Bringing Peace to the World through Mindfulness. One Classroom at a Time.</p>    
              </div>
          </div>
       </div> 
        <div class="container">
          <div class="row">
               <div class="col-md-8">
                    <div class="col-md-12">
                          <div class="col-md-6 iphone667">
                             <div class="col-md-12 text-center">
                                <div class="icon-box pink"><i class="fa fa-graduation-cap" aria-hidden="true"></i></div>
                             </div>
                             <div class="col-md-12 p0">
                                <div class="content bNew">
                                    <h3>Academic Benefits</h3>
                                    <ul class="bnwe">
                                      <li>Reduced Exam Stress</li>
                                      <li>Increased Social Awareness</li>
                                      <li>Improved Climate for Learning</li>
                                      <li>Improved Grades & Test Scores</li>
                                      <li>Improved Focus and Self-Control</li>
                                      <li>Improved Participation & Engagement</li>
                                    </ul>
                                </div>
                            </div>
                          </div>
                          <div class="col-md-6 iphone667">
                             <div class="col-md-12 text-center">
                                <div class="icon-box pink"><i class="fa fa-child" aria-hidden="true"></i></div>
                             </div>
                             <div class="col-md-12 p0">
                                <div class="content bNew">
                                    <h3>Development Benefits</h3>
                                      <ul class="bnwe">

                                          <li>Reduced Hyperactivity</li>
                                          <li>Management of Emotional Stress</li>
                                          <li>Increased Resilience & Compassion</li>
                                          <li>Reduced Likelihood of Juvenile Crime</li>
                                          <li>Reduced Behavioral Conflict like Bullying</li>
                                          <li>Increased Participation & Engagement in Class</li>
                                      </ul>

                                </div>
                            </div>
                          </div>
                    </div>                
                  
                  </div>

               <div class="col-md-4">

                  <form:form action="teacherSignup" modelAttribute="dtoTeacherSignOn" method="post" class="form-horizontal form-white text-white pull-left" id="quoteForm">
                      <div class="toptitl"><strong>Start your Experience  <a href="javascript:;" data-toggle="tooltip" data-placement="right" title="Fill out a simple form to start Inner Explorer today."><i class="fa fa-question-circle" aria-hidden="true"></i></a></strong></div>
                        <div class="form-group">
                            <input type="text" name="name" class="form-control" id="name"  placeholder="Name" required>
                        </div>
                        <div class="form-group">
                            <input type="email" name="email" class="form-control" id="email"  placeholder="Email Address" required>
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
                        </div>
                         <div class="form-group">
                            <input type="password" name="confirmPassword" class="form-control" id="cpwd"  placeholder="Confirm Password" required>
                        </div>
                        <div class="form-group col-md-12 center-block  btnstrtoutr text-center">
                            <button type="submit" class="btnlaunchProgrm">SIGN UP</button>
                        </div>
                    </form:form>
               </div>
           </div>
         </div>
  </section>   


        
<section class="videotestimon">
     <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 p0">
                        <div class="section-header1 text-center wow fadeIn sameFontie">
                            <h2>HOW DOES IT WORK</h2>
                        </div>
                        
                    </div>
                </div>
            </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
              <div class="vidonew">
                  <img src="<%=request.getContextPath()%>/NewStyles/Landing-Page/images/bgsystem.png" class="img-responsive tetim displayed">
                   <iframe width="100%" height="200" src="https://www.youtube.com/embed/hH0xLcDbBks" frameborder="0" allowfullscreen class="iframe-Video"></iframe>
              </div>
              
            </div>
             <div class="col-md-12 center-block pB70 btnstrtoutr">
                <a class="gs_lg_btn fl btn-gt-strt center-block programLink smooth-scroll" href="#StartProgram">SIGN UP</a>
               
            </div>
        </div>
    </div>

</section>  

        <section id="learnmore" class="grayColor testimonaialSec">
            <!-- Section Header -->
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 p0">
                        <div class="section-header1 text-center wow fadeIn sameFontie">
                            <h2>Testimonials</h2>
                        </div>
                        
                    </div>
                </div>
            </div>

              <div class="container-fluid p0">
                  <div role="listbox" class="popupImg">
                     <div class="row-fluid">   
                        <div class="item">
                             <div class="col-md-3 col-xs-6 col-sm-6"> 
                                 <div class="popup-box wow fadeIn testmocustomborder videohover">
                                    <img alt="" class="img-responsive" src="<%=request.getContextPath()%>/NewStyles/Landing-Page/images/vtestimonial-1.jpg">
                                    <div class="videoOnhover">
                                    <a href="#myModalvideo1" data-toggle="modal"> <i class="fa fa-play"></i></a> 
                                        <div data-wow-iteration="3" class="popup-button wow pulse"></div>
                                    </div>
                                </div>
                                <h4 class="testimonailbottomtx">Chasmin Moses - Elementary School Teacher</h4>
                             </div>
                            <div class="col-md-3 col-xs-6 col-sm-6"> 
                                 <div class="popup-box wow fadeIn testmocustomborder videohover">
                                    <img alt="" class="img-responsive" src="<%=request.getContextPath()%>/NewStyles/Landing-Page/images/vtestimonial-2.jpg">
                                    <div class="videoOnhover">
                                    <a href="#myModalvideo2" data-toggle="modal"> <i  class="fa fa-play"></i></a> 
                                        <div data-wow-iteration="3" class="popup-button wow pulse"></div>
                                    </div>
                                </div>
                                <h4 class="testimonailbottomtx">Susan Summerfield - School Teacher</h4>
                             </div>
                             <div class="col-md-3 col-xs-6 col-sm-6"> 
                                 <div class="popup-box wow fadeIn testmocustomborder videohover">
                                    <img alt="" class="img-responsive" src="<%=request.getContextPath()%>/NewStyles/Landing-Page/images/vtestimonial-3.jpg">
                                    <div class="videoOnhover">
                                    <a href="#myModalvideo3" data-toggle="modal"> <i class="fa fa-play"></i></a> 
                                        <div data-wow-iteration="3" class="popup-button wow pulse"></div>
                                    </div>
                                </div>
                                <h4 class="testimonailbottomtx"> Edgar Rodriguez - Third Grade Teacher</h4>
                             </div>
                            <div class="col-md-3 col-xs-6 col-sm-6"> 
                                 <div class="popup-box wow fadeIn testmocustomborder videohover">
                                    <img alt="" class="img-responsive" src="<%=request.getContextPath()%>/NewStyles/Landing-Page/images/vtestimonial-4.jpg">
                                    <div class="videoOnhover">
                                    <a href="#myModalvideo4" data-toggle="modal"> <i class="fa fa-play"></i></a> 
                                        <div data-wow-iteration="3" class="popup-button wow pulse"></div>
                                    </div>
                                </div>
                                  <h4 class="testimonailbottomtx"> Lindsay Allen - Southbury Elementary Principal </h4>
                             </div>
                        </div>
                     </div>   
                  </div>
              </div>        
                
        
        </section>
        <!-- /End Recent Projects -->



  <!-- Our Program -->
  <section id="features4-1" class="p-b-lg">
        <div class="container">
            <div class="row">
                <div class="section-header text-center wow fadeIn sameFontie animated" style="visibility: visible;">
                    <h2>Our Programs</h2>
                    <p class="lead sameFontiep">Inner Explorer is the easiest way to Practice Mindfulness for 10 Minutes Daily. And 10 Mindful Minutes are all you need to Help Students Focus, Reduce Behavior Issues and give yourself more time to Teach, Engage and Inspire Them</p>    
                </div>
            </div>
         </div>       

          <div class="container">          
              <div class="row">     
                  <div class="row features-block ourProgarm-new">
                      <div class="col-sm-4 col-sm-12 col-xs-4 img-left m-b-md clearfix  hvr-rectangle-out  text-center"> 
                      <div class="text-center col-md-12"><img src="<%=request.getContextPath()%>/NewStyles/Landing-Page/images/daily.png" alt=""></div>
                     
                          <div class="clear5"></div>

                          <div class="text-center col-md-12">
                              <h5 class="m-t f-w-900 sameFontiepTitle">Daily Practice</h5>
                          </div>    
                      </div>
                      <div class="col-sm-4 col-sm-12 col-xs-4 img-left m-b-md clearfix text-center"> 
                          <img src="<%=request.getContextPath()%>/NewStyles/Landing-Page/images/mbsr.png" alt="">
                          <h5 class="m-t f-w-900 sameFontiepTitle">MBSR Protocols</h5>
                      </div>
                      <div class="col-sm-4 col-sm-12 col-xs-4 img-left m-b-md clearfix text-center"> 
                          <img src="<%=request.getContextPath()%>/NewStyles/Landing-Page/images/play.png" alt="">
                          <h5 class="m-t f-w-900 sameFontiepTitle">Just Press Play</h5>
                      </div>
                  </div>

                  <div class="col-md-12 content-block c3">
                        <div class="col-sm-3 col-xs-6 p5">
                            <img class="img-responsive img-rounded" alt="" src="<%=request.getContextPath()%>/NewStyles/Landing-Page/images/img1.jpg">
                            <div class="post-info plan-four ">                            
                                <h5>Exploring Me™ Pre-k–Kindergarten</h5>
                            </div>
                        </div>

                        <div class="col-sm-3 col-xs-6 p5">
                            <img class="img-responsive img-rounded" alt="" src="<%=request.getContextPath()%>/NewStyles/Landing-Page/images/img2.jpg">
                            <div class="post-info plan-four ">
                                <h5>Exploring Originality™ Elementary School</h5>
                            </div>
                        </div>

                        <div class="col-sm-3 col-xs-6 p5">
                            <img class="img-responsive img-rounded" alt="" src="<%=request.getContextPath()%>/NewStyles/Landing-Page/images/img3.jpg">
                            <div class="post-info plan-four ">
                                <h5>Exploring Potential™ Middle School</h5>
                            </div>
                        </div>

                        <div class="col-sm-3 col-xs-6 p5">
                            <img class="img-responsive img-rounded" alt="" src="<%=request.getContextPath()%>/NewStyles/Landing-Page/images/img4.jpg">
                            <div class="post-info plan-four ">
                               <h5>Exploring Relevance™ High School</h5>
                            </div>
                        </div>
                  </div>
                  <div class="col-md-12 center-block pB70 btnstrtoutr">
                      <a class="gs_lg_btn fl btn-gt-strt center-block" href="http://innerexplorer.org/ie/program-trial/" target="_blank">START TRIAL</a>
                  </div>
              </div>      
          </div>         
  </section>  
<!-- End Our Program -->

    <!-- Price -->
<section class="plan-bg">
    <div class="container">
    <div class="row">
      <div class="col-md-12 text-center">
            <div class="text-center wow fadeIn sameFontie">
                <h2>PLANS</h2> 
            </div>
        </div>
      <div id="col-md-12">         
          <!-- End Button -->
          <div id="yearly">
            <div class="col-md-8 col-md-offset-2">
              <div class="col-md-6 col-sm-6 cutsomP">
                  <div class="price_card alpha monthlyOne">        
                      <div class="header">            
                      <strong class="Plan-title-New font-2">MONTHLY</strong>
                      <span class="price"><abbr>$</abbr>10</span>
                    </div>
                    <ul class="features">
                      
                      <li>Practice Mindfulness in Classroom with Students</li>
                      <li>Limited to One Classroom</li>
                      <li>Grade-level based Custom Tracks</li>
                      <li>Online Training Modules</li>
                      <li>Access to Tune-In Feature for Parents</li>
                      <li>Automatic Software Updates</li>
                      <li>No Hidden Charges</li>

                      
                    </ul>
                  </div>
              </div>
              <div class="col-md-6 col-sm-6 cutsomP">
                  <div class="price_card alpha monthlyOne ">        
                      <div class="header">            
                      <strong class="Plan-title-New font-2">ANNUAL</strong>
                      <span class="price"><abbr>$</abbr>90</span>
                    </div>
                    <ul class="features">
                      
                      <li>All Features of Monthly Plan</li>
                      <li>Save 25% on Annual Plan</li>
                      <li>Access to Home Edition in Summer</li>
                      <!-- <li>No Hidden Charges</li>
                      <li>Option to Switch to ‘Home Edition’ in Summer</li>
                      <li>Auto-renewal of Annual Subscription</li> -->

                      
                    </ul>
                  </div>
              </div>
            <div class="col-md-12 center-block pB70 btnstrtoutr">
                <a class="gs_lg_btn fl btn-gt-strt center-block programLink" href="#StartProgram" class="smooth-scroll" >SIGN UP</a>

            </div>
            </div>
          </div>
        
       </div>

    </div>
    </div>
</section>

    
    <!-- End Price -->

        <!-- =========================
             FOOTER
        ============================== -->
        <footer id="footer2-2" class="p-y footer f2 bg-edit bg-dark">
            <div class="container">
                <div class="row text-white">
                    <div class="col-sm-4 col-xs-12">
                        <p>Copyright © 2016. All rights are reserved</p>
                    </div>
                    <div class="col-sm-4 col-xs-12 text-center">
                        <ul class="footer-social">
                            
                             <li><div class="fb-like" data-href="https://www.facebook.com/InnerExplorer" data-width="100" data-layout="button" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div></li>
                            <li><a href="https://twitter.com/Inner_Explorer" class="twitter-follow-button" data-size="small" data-lang="en" data-show-count="false" style="font-size:9px !important">Follow</a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script></li>
                        </ul>
                    </div>
                </div><!-- /End Row -->
            </div><!-- /End Container -->

        </footer>
        <!-- /End Footer -->
        


    </div><!-- /End Main Container -->

    <!-- Back to Top Button -->
   <!--  <a href="#" class="top" style="background-color:#02a451;">Top</a> -->




<!-- ?Video PopUp Modal -->

    <!-- Modal 1 -->
    <div id="myModalvideo1" class="modal fade custom-modal-video">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header custom-modal-videoheader">
                    <button type="button" class="close closeCustom" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title text-left">Chasmin Moses - Elementary School Teacher</h4>
                </div>
                <div class="modal-body video-modal-body">
                    <iframe  id="testimonialVideo1" width="560" height="315" src="https://www.youtube.com/embed/14gna5O58sE?autoplay=1" frameborder="0" allowfullscreen style="width:100%"></iframe>
                </div>
            </div>
        </div>
    </div>
  <!-- Modal 2 -->
    <div id="myModalvideo2" class="modal fade custom-modal-video">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header custom-modal-videoheader">
                    <button type="button" class="close closeCustom" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title text-left">Susan Summerfield - School Teacher</h4>
                </div>
                <div class="modal-body video-modal-body">
                    <iframe id="testimonialVideo2" width="560" height="315" src="https://www.youtube.com/embed/oE9CNFlm0m8?autoplay=1" frameborder="0" allowfullscreen style="width:100%"></iframe>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal 3 -->
    <div id="myModalvideo3" class="modal fade custom-modal-video">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header custom-modal-videoheader">
                    <button type="button" class="close closeCustom" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title text-left"> Edgar Rodriguez - Third Grade Teacher</h4>
                </div>
                <div class="modal-body video-modal-body">
                    <iframe id="testimonialVideo3"   width="560" height="315" src="https://www.youtube.com/embed/jzPe8A-xi0g?autoplay=1" frameborder="0" allowfullscreen style="width:100%"></iframe>
                </div>
            </div>
        </div>
    </div>
  
   <!-- Modal 4 -->
    <div id="myModalvideo4" class="modal fade custom-modal-video">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header custom-modal-videoheader">
                    <button type="button" class="close closeCustom" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title text-left"> Lindsay Allen - Southbury Elementary Principal </h4>
                </div>
                <div class="modal-body video-modal-body">
                    <iframe id="testimonialVideo4" width="560" height="315" src="https://www.youtube.com/embed/dqKXuE9yf3o?autoplay=1" frameborder="0" allowfullscreen style="width:100%"></iframe>
                </div>
            </div>
        </div>
    </div>
  

<!-- End Video Popup Modal -->
    <!-- =========================
         SCRIPTS 
    ============================== -->
    <script src="<%=request.getContextPath()%>/NewStyles/Landing-Page/js/plugins/jquery1.11.2.min.js"></script>
    <script src="<%=request.getContextPath()%>/NewStyles/Landing-Page/js/plugins/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/NewStyles/Landing-Page/js/plugins/jquery.easing.1.3.min.js"></script>
    <script src="<%=request.getContextPath()%>/NewStyles/Landing-Page/js/plugins/jquery.magnific-popup.min.js"></script>
    <script src="<%=request.getContextPath()%>/NewStyles/Landing-Page/js/plugins/jquery.vide.min.js"></script>    
    <script src="<%=request.getContextPath()%>/NewStyles/Landing-Page/js/plugins/wow.min.js"></script>
    <!-- Custom Script -->
    <script src="<%=request.getContextPath()%>/NewStyles/Landing-Page/js/custom.js"></script>
    <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>

<script	src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"	type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.autocomplete.js" type="text/javascript"></script>
 <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script	src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
    <script type="text/javascript">	
jQuery(document).ready
	(function($){
		$.validator.addMethod("emailAlreadyExist", function(value, element) {
            return this.optional(element) || emailAlreadyCheck(value);
        }, "Email already exists. Click Here to <a href='<%=request.getContextPath()%>/login'> Login");
		
		$.validator.addMethod("sendEmail", function(value, element) {
            return this.optional(element) || sendEmail(value);
        },"Invalid email");

		
		
		$('#quoteForm').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            //ignore: "",
            rules: {
                email: {
                    required: true,
                    email: true,
                    emailAlreadyExist: true,
                    sendEmail:true
                  
                },
                name: {
                    required: true,
                    maxlength : 20
                },
                password: {
                    required: true,
            		minlength : 6,
            		maxlength : 20
                },
                confirmPassword: {
                    equalTo:"#password"
                }
            },


            invalidHandler: function(event, validator) { //display error alert on form submit   
            }

            
        });
	});
	 function emailAlreadyCheck(value){
			//var email = $("#email").val().trim();
			var email = value;
			if(email != ""){
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
			}else{
				emailStatus = true;
			}
			return emailStatus;
     }
	 
	 function sendEmail(value){
			//var email = $("#email").val().trim();
			var email = value;
			if(email != ""){
				$.ajax({
					url : "<%=request.getContextPath()%>/saveTempEmail",
					method : 'POST',
					headers: { 
						'Content-Type':'application/json'
						},
					data : JSON.stringify({"email":email}),
					async:false,
					success : function(result) {
						emailStatus = true;	
					}
				});
			}else{
				emailStatus = true;
			}
			return emailStatus;
		}
	
</script> 

<script type="text/javascript">
    $('#tbl-prc-price1').on("click",function(){
         // $(window).scrollTop(0);
          $('html, body').animate({scrollTop : 0},800);
    });
    $('#tbl-prc-price2').on("click",function(){
          $('html, body').animate({scrollTop : 0},800);
    });
    $('#tbl-prc-price3').on("click",function(){
          $('html, body').animate({scrollTop : 0},800);
    });
    $('#tbl-prc-price4').on("click",function(){
          $('html, body').animate({scrollTop : 0},800);
    });

</script>

<!-- Video Script -->
<script type="text/javascript">
$(document).ready(function(){
    /* Get iframe src attribute value i.e. YouTube video url
    and store it in a variable */
    var url = $("#testimonialVideo1").attr('src');
    
       $("#testimonialVideo1").attr('src', '');
    /* Assign empty url value to the iframe src attribute when
    modal hide, which stop the video playing */
    $("#myModalvideo1").on('hide.bs.modal', function(){
        $("#testimonialVideo1").attr('src', '');
          //callPlayer('yt-player', 'stopVideo');
    });
    
    /* Assign the initially stored url back to the iframe src
    attribute when modal is displayed again */
    $("#myModalvideo1").on('show.bs.modal', function(){
        $("#testimonialVideo1").attr('src', url);
    });
});
</script>

<script type="text/javascript">
$(document).ready(function(){
    /* Get iframe src attribute value i.e. YouTube video url
    and store it in a variable */
    var url = $("#testimonialVideo2").attr('src');
    
       $("#testimonialVideo2").attr('src', '');
    /* Assign empty url value to the iframe src attribute when
    modal hide, which stop the video playing */
    $("#myModalvideo2").on('hide.bs.modal', function(){
        $("#testimonialVideo2").attr('src', '');
          //callPlayer('yt-player', 'stopVideo');
    });
    
    /* Assign the initially stored url back to the iframe src
    attribute when modal is displayed again */
    $("#myModalvideo2").on('show.bs.modal', function(){
        $("#testimonialVideo2").attr('src', url);
    });
});
</script>

<script type="text/javascript">
$(document).ready(function(){
    /* Get iframe src attribute value i.e. YouTube video url
    and store it in a variable */
    var url = $("#testimonialVideo3").attr('src');
    
       $("#testimonialVideo3").attr('src', '');
    /* Assign empty url value to the iframe src attribute when
    modal hide, which stop the video playing */
    $("#myModalvideo3").on('hide.bs.modal', function(){
        $("#testimonialVideo3").attr('src', '');
          //callPlayer('yt-player', 'stopVideo');
    });
    
    /* Assign the initially stored url back to the iframe src
    attribute when modal is displayed again */
    $("#myModalvideo3").on('show.bs.modal', function(){
        $("#testimonialVideo3").attr('src', url);
    });
});
</script>


<script type="text/javascript">
$(document).ready(function(){
    /* Get iframe src attribute value i.e. YouTube video url
    and store it in a variable */
    var url = $("#testimonialVideo4").attr('src');
    
       $("#testimonialVideo4").attr('src', '');
    /* Assign empty url value to the iframe src attribute when
    modal hide, which stop the video playing */
    $("#myModalvideo4").on('hide.bs.modal', function(){
        $("#testimonialVideo4").attr('src', '');
          //callPlayer('yt-player', 'stopVideo');
    });
    
    /* Assign the initially stored url back to the iframe src
    attribute when modal is displayed again */
    $("#myModalvideo4").on('show.bs.modal', function(){
        $("#testimonialVideo4").attr('src', url);
    });
});
</script>





<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>

<script>
$(document).ready(function(){
  // Add scrollspy to <body>
  $('body').scrollspy({target: ".navbar", offset:50});

  // Add smooth scrolling on all links inside the navbar
  $(".programLink").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top -70
        // scrollTop: $(this).offset().top - 20
      }, 800, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    }  // End if
  });
});
</script>

</body>

</html>
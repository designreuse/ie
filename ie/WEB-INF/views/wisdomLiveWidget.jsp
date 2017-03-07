<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>

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
<title>Inner Explorer </title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
</head>
<body>
<spring:eval var="bucketPath" expression="@propertyConfigurer.getProperty('bucket_path')" />
<span id="error"></span>
        <span id="playerspan"> <p><span id=day></span><img style="margin: 0px 8px -5px -12px;" alt="" src="<%=request.getContextPath()%>/NewStyles/images/calender-icon.png"> <span id="title"></span></p>
                        <div class="mp3_playerbar_notes" style="margin:10px 0;">
                                        <audio  id="player" class="music-player_notes" controls style="width:100%">
                                                <source src="" type="audio/mpeg"></source>
                                        </audio>
                        </div>
<p></p>  <img src="<%=request.getContextPath()%>/NewStyles/images/poweredby.jpg" alt="" style="width:100px;height:30px;float:right;margin:10px 0;"/>
         </span>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
        var id ='<%=request.getParameter("data")%>';
        var audiojq =  $("#player");
        console.log("id - "+id)

        if(id != null && id != "")
        {
            $.ajax({
                type : "POST",
                url : "<%=request.getContextPath()%>/getWidgetAudioDetail",
                async:true,
                data:'teacherId='+id,
                success : function(response) {
                        if(response.modelMap != null)
                                {
                                        console.log(response.modelMap.dtoProgramsAudio.audioDay)
                                        $("#day").text(response.modelMap.dtoProgramsAudio.audioDay);
                                        $("#title").text(response.modelMap.dtoProgramsAudio.audioTitle);
                                        audiojq.attr("src", "${bucketPath}/audioFiles/"+response.modelMap.dtoProgramsAudio.audioName);
                                                audiojq.trigger('load');
                                                $("#playerspan").show();
                                                $("#error").hide();
                                }
                        else
                        {
                                $("#error").show();
                                $("#error").text("email / teacher does not exist in the system");
                                $("#playerspan").hide();
                        }
                }
            });
        }
        else
        {
                 $("#error").text("Couldn't find email in parameters, please add one query string param named 'email'")
        }
   });
</script>
</body>
</html>
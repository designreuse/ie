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
<title>Parent Activity</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>


<%-- <link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/> --%>

</head>

<body>
<div class="wrapper">
   <%@include file="header.jsp" %>
    
   <section class="getStartSct mtop-5">
    		<div class="steps_getstarted">
				<div class="container">
					<div class="pracProgress_hdr">
     					<h2>Suggested Activities for Practice at Home</h2>
     					<div class="green_line_btm"></div>
     				</div>
     				
     			<div class="procod">
					<div class="procodIn">
						<!-- <p>Use Promo Code #1MMC to launch IE Programs at a school of your choice, today</p> -->
						<p>Learn Tips & Tricks to get most of Home Edition</p>
					</div>
					<div class="IE-sub-link">
						<a onclick="openBestPracticePopUp();" title="Best Practice">Best Practices</a>
					</div>
				</div>
     				
     			<!-- 	<div class="sub_heading_new_ty">
     				
     			</div>
     			
     			
     					<div class="videobtn ">
                <input type="button" style="margin-right:10px" title="Best Practice" value="" onclick="openBestPracticePopUp();" class="blueBtn">

				</div> -->
     				
                    <div class="clr"></div>
                    <div class="sugstd-actvts">
                    	<ul>
                        	<li>
                            	<a href="#boredom" class="fancybox"><img src="<%=request.getContextPath()%>/NewStyles/images/sug-a-1.png" alt=""><p>Boredom</p></a>
                            </li>
                            <li>
                            	<a href="#brain" class="fancybox"><img src="<%=request.getContextPath()%>/NewStyles/images/sug-a-2.png" alt=""><p>Brain Power</p></a>
                            </li>
                            <li>
                            	<a href="#breathing" class="fancybox"><img src="<%=request.getContextPath()%>/NewStyles/images/sug-a-3.png" alt=""><p>Breathing</p></a>
                            </li>
                            <li>
                            	<a href="#bullying" class="fancybox"><img src="<%=request.getContextPath()%>/NewStyles/images/sug-a-4.png" alt=""><p>Bullying</p></a>
                            </li>
                            <li>
                            	<a href="#gratitude" class="fancybox"><img src="<%=request.getContextPath()%>/NewStyles/images/sug-a-5.png" alt=""><p>Gratitude</p></a>
                            </li>
                            <li>
                            	<a href="#helpful" class="fancybox"><img src="<%=request.getContextPath()%>/NewStyles/images/sug-a-6.png" alt=""><p>Helpful Thinking</p></a>
                            </li>
                            <li>
                            	<a href="#listening" class="fancybox"><img src="<%=request.getContextPath()%>/NewStyles/images/sug-a-7.png" alt=""><p>Listening</p></a>
                            </li>
                            <li>
                            	<a href="#mindful" class="fancybox"><img src="<%=request.getContextPath()%>/NewStyles/images/sug-a-8.png" alt=""><p>Mindful Movement</p></a>
                            </li>
                            <li>
                            	<a href="#present" class="fancybox"><img src="<%=request.getContextPath()%>/NewStyles/images/sug-a-9.png" alt=""><p>Present Moment</p></a>
                            </li>
                            <li>
                            	<a href="#sleeplessness" class="fancybox"><img src="<%=request.getContextPath()%>/NewStyles/images/sug-a-10.png" alt=""><p>Sleeplessness</p></a>
                            </li>
                        </ul>
                    </div>
                    
			</div>
      </div>
		</section>
</div>

<div id="boredom" style="display: none;">
	<div class="product-page product-pop-up">
		
			<div class="col-md-12 col-sm-6 col-xs-3">
				<div class="product-main-image">
					<div id="message"></div>
						<div id="recorder" style="max-width:800px;">
							<div class="act-sub-pop-hd">
								<h4>Boredom</h4>
							</div>
							<div class="act-sub-pop">
								<ul>
									<li>
										<div class="act-sub-img">
										1
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Have a discussion with your child about boredom.  Ask them what makes them feel bored.  Then ask for ideas the child can come up with to move away from boredom.  Encourage them to do something they have never tried before.
											</p>
										</div>
									</li>
									
								</ul>
							</div>

								
					</div>
				</div>
			</div>
		
	</div>
</div>


<div id="brain" style="display: none;">
	<div class="product-page product-pop-up">
		
			<div class="col-md-12 col-sm-6 col-xs-3">
				<div class="product-main-image">
					<div id="message"></div>
						<div id="recorder" style="max-width:800px;">
							<div class="act-sub-pop-hd">
								<h4>Brain Power</h4>
							</div>
							<div class="act-sub-pop">
								<ul>
									<li>
										<div class="act-sub-img">
											1
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Give your child a calendar to mark their mindfulness practice.  Encourage them to practice daily.  Have a discussion with the child about how to best get into a daily routine of mindful awareness.  Let them come up with ideas.
											</p>
										</div>
									</li>
									
								</ul>
							</div>

								
					</div>
				</div>
			</div>
		
	</div>
</div>

<div id="breathing" style="display: none;">
	<div class="product-page product-pop-up">
		
			<div class="col-md-12 col-sm-6 col-xs-3">
				<div class="product-main-image">
					<div id="message"></div>
						<div id="recorder" style="max-width:800px;">
							<div class="act-sub-pop-hd">
								<h4>Breathing</h4>
							</div>
							<div class="act-sub-pop">
								<ul>
									<li>
										<div class="act-sub-img">
										1
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Ask your child to practice mindful breathing for one minute. Have them open their eyes and ask them to look around the room for something they have never noticed before. 
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										2
										</div>
										<div class="act-sub-content">
											<!-- <h4>Special Education Daily Sheet</h4> -->
											<p>Set a timer for two, three or five minutes having the child say to themselves "breathing in… breathing out…"  When their mind wanders, gently return it to the breath.
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										3
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Counting breaths: Count each inhalation and exhalation as one and continue until the child reaches ten.  If the child notices their mind wandering, have them start over at one.  Try this a few times in a month and ask your child to journal about the experience week to week. 

											</p>
										</div>
									</li>
								</ul>
							</div>

								
					</div>
				</div>
			</div>
		
	</div>
</div>

<div id="bullying" style="display: none;">
	<div class="product-page product-pop-up">
		
			<div class="col-md-12 col-sm-6 col-xs-3">
				<div class="product-main-image">
					<div id="message"></div>
						<div id="recorder" style="max-width:800px;">
							<div class="act-sub-pop-hd">
								<h4>Bullying</h4>
							</div>
							<div class="act-sub-pop">
								<ul>
									<li>
										<div class="act-sub-img">
										1
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Talk to your child about bullying.  Explain what it is and how those involved feel.  Act out or role play a situation that would realistically resemble bullying and teach your child how to respond.
											</p>
										</div>
									</li>
									
								</ul>
							</div>

								
					</div>
				</div>
			</div>
		
	</div>
</div>

<div id="gratitude" style="display: none;">
	<div class="product-page product-pop-up">
		
			<div class="col-md-12 col-sm-6 col-xs-3">
				<div class="product-main-image">
					<div id="message"></div>
						<div id="recorder" style="max-width:800px;">
							<div class="act-sub-pop-hd">
								<h4>Gratitude</h4>
							</div>
							<div class="act-sub-pop">
								<ul>
									<li>
										<div class="act-sub-img">
										1
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Remind kids that they don’t need to wait for Thanksgiving to be grateful. They can start a gratitude journal or ask their families to start each meal by stating something each person is grateful for. Smaller children can cut images out of papers and magazines to make a collage of what they are grateful for.
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										2
										</div>
										<div class="act-sub-content">
											<!-- <h4>Special Education Daily Sheet</h4> -->
											<p>Pass a ball with your child and other members of the family.  When someone catches the ball, have them say something they are grateful for.
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										3
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Give your child a few index cards and have them write something positive about each person in your family. When they are finished writing, ask them to read their thoughts to the person they wrote about. 

											</p>
										</div>
									</li>
									
									<li>
										<div class="act-sub-img">
										4
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Have your child journal about gratitude for a set number of days. They can list and write about what they are grateful for or you can give them specific topics (such as foods, people, places…).  At the end of the journaling activity, ask the child what they thought about the practice. 

											</p>
										</div>
									</li>
									
									<li>
										<div class="act-sub-img">
										5
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Start a gratitude bulletin board, wall or collage. Encourage your child to contribute daily and watch the gratitude grow over time.  Ask the child to notice if their thinking changed when focusing on gratitude.

											</p>
										</div>
									</li>
									
									<li>
										<div class="act-sub-img">
										6
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Have your child write or email someone in their life and list at least three reasons they feel grateful for them.  Have them send the correspondence "just because."  Then have the child journal about how they feel about the activity.

											</p>
										</div>
									</li>
								</ul>
							</div>

								
					</div>
				</div>
			</div>
		
	</div>
</div>

<div id="helpful" style="display: none;">
	<div class="product-page product-pop-up">
		
			<div class="col-md-12 col-sm-6 col-xs-3">
				<div class="product-main-image">
					<div id="message"></div>
						<div id="recorder" style="max-width:800px;">
							<div class="act-sub-pop-hd">
								<h4>Helpful Thinking</h4>
							</div>
							<div class="act-sub-pop">
								<ul>
									<li>
										<div class="act-sub-img">
										1
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Invite your child to share a time when someone made a comment to them that was not helpful, and afterwards a time when someone made a helpful comment. Ask how they felt about each. (You can have this as a discussion or as a writing exercise).
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										2
										</div>
										<div class="act-sub-content">
											<!-- <h4>Special Education Daily Sheet</h4> -->
											<p>At the end of the day, have your child think about who they spoke to and what was said. Make marks for the helpful things said and then review the unhelpful things they said. Did you have more helpful conversations or more unhelpful ones? Just notice what is true without judging.
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										3
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Have your child draw themselves having a helpful conversation. Ask them to draw themselves having an unhelpful conversation. Is there any difference in their posture or picture and in how they see themselves?

											</p>
										</div>
									</li>
									
									<li>
										<div class="act-sub-img">
										4
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Have your child draw their face as they are having positive thoughts. Then ask them to draw their face when they are having negative thoughts.
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										5
										</div>
										<div class="act-sub-content">
											<!-- <h4>Special Education Daily Sheet</h4> -->
											<p>Have a conversation with your child about silver linings.  Ask your child to think of a time when something disappointing happened but in the end something good came out of the situation.
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										6
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Ask yoru child to journal about a time when they have said or done something they wish they hadn’t. Inquire as to why that had happened. What emotion or feeling might have gotten the better of your child which precipitated such words or actions? What got in the way better words or deeds? Ask your child how mindfulness might help them make a better choice.

											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										7
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Encourage your child to write their own book about mindfulness. Perhaps they can write a story about using mindfulness, draw a picture about mindfulness, or make an instruction manual.  Share your child's book with others.

											</p>
										</div>
									</li>
									
								</ul>
							</div>

								
					</div>
				</div>
			</div>
		
	</div>
</div>

<div id="listening" style="display: none;">
	<div class="product-page product-pop-up">
		
			<div class="col-md-12 col-sm-6 col-xs-3">
				<div class="product-main-image">
					<div id="message"></div>
						<div id="recorder" style="max-width:800px;">
							<div class="act-sub-pop-hd">
								<h4>Listening</h4>
							</div>
							<div class="act-sub-pop">
								<ul>
									<li>
										<div class="act-sub-img">
										1
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Ring a bell, have your child listen to it with their eyes open. Then, have your child listen to it with their eyes closed. Then ask them with their eyes closed to listen to the bell and when they are unable to hear it anymore to raise their hands. Finally, ask them to listen to ambient sounds for thirty seconds and then to describe what they hear.
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										2
										</div>
										<div class="act-sub-content">
											<!-- <h4>Special Education Daily Sheet</h4> -->
											<p>Have your child sit outside with their journals. Ask them to listen to ambient sounds for two minutes. Encourage them to do this with their eyes closed. Ask them to journal about what they heard.
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										3
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Have your child ask an adult in their household a personal question, the answer of which would be lengthy. Ask them not to take notes, but to turn on their listening brains.   Then have the child share what they learned from the adults. 

											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										4
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Have your child close their eyes.  Ring a bell or play another instrument for a few notes.  Have the child put up the number of fingers to represent the number of times they hear the sound. 

											</p>
										</div>
									</li>
								</ul>
							</div>

								
					</div>
				</div>
			</div>
		
	</div>
</div>

<div id="mindful" style="display: none;">
	<div class="product-page product-pop-up">
		
			<div class="col-md-12 col-sm-6 col-xs-3">
				<div class="product-main-image">
					<div id="message"></div>
						<div id="recorder" style="max-width:800px;">
							<div class="act-sub-pop-hd">
								<h4>Mindful Movement</h4>
							</div>
							<div class="act-sub-pop">
								<ul>
									<li>
										<div class="act-sub-img">
										1
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Have your child walk mindfully down the hallway or outside.  Have them pause and take a few breaths to check in with their body before transitioning to another activity.  Perhaps journal about what the child noticed.
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										2
										</div>
										<div class="act-sub-content">
											<!-- <h4>Special Education Daily Sheet</h4> -->
											<p>Have a slow race.  Ask your child/children to stand up as slowly as they can.  Ask them to notice the muscles they used as they stood.  Most of the time we move and pay no attention to the mechanics of how we are moving.
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										3
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Have your child brainstorm about why moving mindfully is important.  Discuss safety, sports, health and well-being.  Give them a piece of paper and ask them to write down a path they will choose to walk mindfully every day for a week.  At the end of the week, ask the child how they did and have them journal about what they noticed.

											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										4
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Draw a project mindfully.  Ask the child to notice how it feels to hold the pencil, pen or crayon.  Ask them to write their names and notice what it feels like when they write.  Are they holding the implement more tightly then when not writing?  Is it possible to write without holding the implement so tightly?  Then ask them to draw anything they want for five minutes and pay attention to each mark or line they make on the paper.  Ask the child how the exercise feels compared to when they do something similar without being mindful.
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										5
										</div>
										<div class="act-sub-content">
											<!-- <h4>Special Education Daily Sheet</h4> -->
											<p>Play music and ask your child to dance or move mindfully to the music.  Ask them to stop when the music stops.  You can turn the music on and off many times.  Try listening to classical music.  You might want to invite the child to close their eyes as they move.  Ask them about the experience.
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										6
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Ask your child to eating mindfully for one minute a day. Have them notice the color, size, texture and taste of your food. Do this without the television on or talking with others. Try to eat a silent meal together or with the entire family.

											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										7
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Using the Sharkfin to get ready to practice a minute of silence can be helpful for elementary school children. (Actually for all, but the older kids won’t think this is cool). The Sharkfin is a short cut for five s’s, and it quickly gets kids prepared to practice. The five s’s are sitting up straight, sitting still, sitting silently, soft breathing and shut eyes. To do the Sharkfin, you put the side of hand on your forehead with your thumb touching your forehead and fingers, including the thumb touching each other and pointed upward towards the ceiling. Then you move your hand down your face, in front of your nose and say shhhh as your hand moves down. The Sharkfin can be used to get ready to practice but also to remind your children to pay attention.  You can say to your child, let’s do the Sharkfin, then listen to a sound, and then practice for a minute. Have a discussion about when it would be useful to do the Sharkfin. We have seen kids use it during tests to bring them to the present moment, when a teacher is lecturing, and even on sports fields.

											</p>
										</div>
									</li>
								</ul>
							</div>

								
					</div>
				</div>
			</div>
		
	</div>
</div>

<div id="present" style="display: none;">
	<div class="product-page product-pop-up">
		
			<div class="col-md-12 col-sm-6 col-xs-3">
				<div class="product-main-image">
					<div id="message"></div>
						<div id="recorder" style="max-width:800px;">
							<div class="act-sub-pop-hd">
								<h4>Present Moment</h4>
							</div>
							<div class="act-sub-pop">
								<ul>
									<li>
										<div class="act-sub-img">
										1
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Have a conversation about living in the present versus living in our heads. Give some examples and then have a child chime in about how they too have missed things by living in their heads.
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										2
										</div>
										<div class="act-sub-content">
											<!-- <h4>Special Education Daily Sheet</h4> -->
											<p>Ask your child to keep tally marks each time their mind wanders from a conversation. After they make the mark on the card, encourage them to pat themselves on the shoulder as they say to themselves, “Oh, my mind wandered. Thanks for noticing ______(their name).” Let them know that it is important for them not to get mad at themselves when their minds wander. 
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										3
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Act out two skits with your child; one showing a lack of presence in a conversation and one showing real presence. If there are more people in your family, pair them up and ask them to do the same.

											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										4
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Encourage your child to be present with someone they may take for granted; i.e.. cafeteria staff, neighbor, sibling. Brainstorm ideas about what types of interactions they might have. I.e.. with a neighbor, saying...I am so grateful for you, thanks for being so pleasant when we walk by your house or wow, your hair looks nice, or that garden is full of beautiful flowers....
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										5
										</div>
										<div class="act-sub-content">
											<!-- <h4>Special Education Daily Sheet</h4> -->
											<p>Have your child journal about something they have never noticed before about a person or pet they see every day.
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										6
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Have your child look at you.  Then tell them to close their eyes and change something about your appearance; move a scarf, move a piece of jewelry, put on a sweater, etc.  Ask the child what changed. 

											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										7
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Put a few small items into a bag.  Have your child look at the items in the bag, even taking the items out of the bag, for about 30 seconds.  Then take away one or more items and ask the child which item has been removed. 

											</p>
										</div>
									</li>
								</ul>
							</div>

								
					</div>
				</div>
			</div>
		
	</div>
</div>

<div id="sleeplessness" style="display: none;">
	<div class="product-page product-pop-up">
		
			<div class="col-md-12 col-sm-6 col-xs-3">
				<div class="product-main-image">
					<div id="message"></div>
						<div id="recorder" style="max-width:800px;">
							<div class="act-sub-pop-hd">
								<h4>Sleeplessness</h4>
							</div>
							<div class="act-sub-pop">
								<ul>
									<li>
										<div class="act-sub-img">
										1
										</div>
										<div class="act-sub-content">
											<!-- <h4>PTO Communication: Get Great at Two Things</h4> -->
											<p>Have a conversation with your child about falling asleep. Ask them what happens when they cannot fall asleep. Usually we cannot sleep because our brains won’t stop thinking. Encourage the child to label the thoughts they are having rather than working those thoughts to see if that helps them fall asleep. Have a follow-up discussion the next day.
											</p>
										</div>
									</li>
									<li>
										<div class="act-sub-img">
										2
										</div>
										<div class="act-sub-content">
											<!-- <h4>Special Education Daily Sheet</h4> -->
											<p>Try doing a body scan each night with your child before they go to sleep. Start with their feet and move towards their head noticing sensations in each body part before they move to the next. The child may find lots of neutrality and that’s fine.
											</p>
										</div>
									</li>
									
								</ul>
							</div>

								
					</div>
				</div>
			</div>
		
	</div>
</div>
<div id="bestPracticePopUp" class="playback-Popup"
					style="display: none; max-width: 700px;">

					<div>
						<div class="tech-step-11-pop">
							<h3>Tips For Practicing Mindfulness at Home:</h3>
							<ul>
								<li class="green-dot-left-1">Practice together as a family. Your children will take the practice more seriously if everyone participates!.</li>
								<li class="green-dot-left-2">The key is daily practice. Make the practice part of your routine. Do it in the morning, before bed, before “screen” time or before a meal.</li>
								<li class="green-dot-left-3">Be consistent! Choose a time that works best for you and your family, and practice at this same time each day.</li>
								<li class="green-dot-left-4">If possible, create a calm, quiet space for mindfulness. Be sure to practice during a time when you know there will not be interruptions.</li>
								<li class="green-dot-left-5">You may choose to practice sitting in chairs, on the floor or lying down. Be sure everyone chooses the position that is the most comfortable for him or her.</li>
								<li class="green-dot-left-6">Expect your children to be “squirrelly” at times. Practicing mindfulness is a different way of being for them. Gently guide your child to remain still and quiet through your practices.</li>
								<li class="green-dot-left-7">Give it time. Even if your children seem disengaged, they will hear the instructions and will move through this phase.</li>
								<li class="green-dot-left-8">Keep on keeping on. The more committed you are to a consistent practice the easier sitting and listening will become, for you and for your children.</li>
								<li class="green-dot-left-9">Be patient. Remember, this is a practice and building a habit takes time.</li>
								<li class="green-dot-left-10">Share your experience with your children and listen as they express any discomfort. Empowering your children to recognize their own experience in a positive way can have a huge impact.</li>
								<li class="green-dot-left-11">You may choose to incorporate informal mindful activities throughout your day in addition to your formal  <a href='<%=request.getContextPath()%>/donor/parentActivity'>practice</a>, but remember to keep it simple! A little mindful movement, or mindful listening can help to change the tone of your day.</li>
								
							</ul>

						</div>

					</div>
				</div>


   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>  
   <%@include file="../footer.jsp" %>
   <script src="<%=request.getContextPath()%>/NewStyles/js/woco.accordion.min.js"></script> 
   	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script type="text/javascript">

jQuery(document).ready
(function($){

	$("#header").sticky({ topSpacing: 0 });
	$.daisyNav();
	
});
function openBestPracticePopUp(){
	 $.fancybox({
		 'minWidth':120,
		 'padding':10,
		 'minHeight':60,
		 //'autoScale': true,
	     //'autoDimensions': true,
	     'centerOnScroll': true,
	     'href' : '#bestPracticePopUp'
	   
	  });
}

</script>
</body>
</html>

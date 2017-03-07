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
<spring:eval expression="@propertyConfigurer.getProperty('service.url')"
	var="baseURL" />
<!doctype html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="pragma" content="no-cache" />
<!-- <meta http-equiv="refresh" content="86400" /> -->
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/FAQ/images/favicon.ico">

<title>FAQ - Inner Explorer | Changing the world, one student at
	a time…</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/FAQ/css/bootstrap.min.css">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/FAQ/css/ie10-viewport-bug-workaround.css">

<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/FAQ/css/faq-style.css">

<script type="text/javascript">

	_linkedin_data_partner_id = "27286";

	</script>
<script type="text/javascript">

	(function(){var s = document.getElementsByTagName("script")[0];

	var b = document.createElement("script");

	b.type = "text/javascript";b.async = true;

	b.src = "https://snap.licdn.com/li.lms-analytics/insight.min.js";

	s.parentNode.insertBefore(b, s);})();

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

<noscript>
	<img height="1" width="1" style="display: none"
		src="https://www.facebook.com/tr?id=1249183021800237&ev=PageView&noscript=1" />
</noscript>

<!-- DO NOT MODIFY -->

<div id="fb-root"></div>
<script>(function(d, s, id) {
 var js, fjs = d.getElementsByTagName(s)[0];
 if (d.getElementById(id)) return;
 js = d.createElement(s); js.id = id;
 js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.8";
 fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<!-- End Facebook Pixel Code -->

</head>
<!-- NAVBAR
================================================== -->
<body oncontextmenu="return false">



	<nav class="navbar navbar-inverse navbar-fixed-top" id="menuTop">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand logo-ie" href="http://innerexplorer.org/">
					<img
					src="<%=request.getContextPath()%>/NewStyles/FAQ/images/ie-logo.png"
					alt="inner-explorer">
				</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right">
					<li><a href="#ourPrograms">Our Programs</a></li>
					<li><a href="#ourCommunity">Our Community</a></li>
					<li><a href="#getInvolved">Support Us</a></li>
					<li><a href="#aboutUs">About Us</a></li>
					<li><a href="#contactUs">Contact Us</a></li>
					<li class="login-btn"><a class="btn btn-success btn-logion"
						href="/ie/login">Login</a></li>
					<li class="socialTop"><a class="in-new-shr"
						href="https://www.facebook.com/innerexplorer"
						onclick="javascript:window.open(this.href,'' , 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;">
							<i class="fa fa-facebook facebookHover"></i>
					</a></li>

					<li class="socialTop"><a class="in-new-shr"
						href="https://twitter.com/inner_explorer"
						onclick="javascript:window.open(this.href,'' , 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;">
							<i class="fa fa-twitter twtHover"></i>
					</a></li>
					<li class="socialTop"><a class="in-new-shr"
						href="https://www.linkedin.com/company/inner-explorer-inc-"
						onclick="javascript:window.open(this.href,'' , 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;">
							<i class="fa fa-linkedin lkndHover"></i>
					</a></li>
					<li class="socialTop"><a class="in-new-shr"
						href="https://smile.amazon.com/"
						onclick="javascript:window.open(this.href,'' , 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;">
							<i class="fa fa-amazon amazonHover"></i>
					</a></li>
				</ul>

			</div>
		</div>
	</nav>

	<!-- FAQ Section -->
	<section class="FAQSection latest-events-section"
		style="margin-top: 100px;">
		<div class="container">
			<div class="row">
				<div class="col-md-12" style="padding: 0">
					<div class="title_page">
						<h1>General</h1>
					</div>

				</div>
				<div id="integration-list">
					<ul>




						<div class="clearreadmore"></div>
						<div class="sub_title_page">
							<h2>MINDFULNESS</h2>
						</div>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What is Mindfulness?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Mindfulness (or mindful awareness) is the practice of
											paying attention to the present moment. Mindful awareness -
											when practiced regularly - helps children avoid distraction
											and unhealthy mental habits, while allowing them to improve
											their focus, regulate their emotions, and engage more
											effectively with classmates and teachers. Very few of us
											really pay attention to any activity as it’s happening. When
											we do, an entirely new world opens up to us. The more we tune
											into the present moment, the more fully we can live our
											lives. We learn to slow down the chattering mind and notice
											our senses, thoughts and emotions without judging them as
											right or wrong. We become familiar with the beauty, wisdom,
											passion and compassion that exist in all of us.</p>
									</div>
								</div>
							</div></li>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>Why is daily practice so important?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">

										<p>Research has shown that in order to experience the many
											benefits mindfulness has to offer (including self awareness,
											self control, resilience, compassion, academic success and a
											heightened sense of wellbeing), daily practice is necessary.
											A 10-minute practice - simply sitting with eyes closed and
											focusing inward - lays the foundation for one to be mindful
											throughout the rest of the day. It helps to create a healthy
											habit of mindfulness like brushing your teeth or wearing your
											seatbelt. Over time, commitment to this practice becomes less
											challenging as it becomes an integral part of your day. When
											teachers commit to using the Inner ExplorerTM programs on a
											daily basis for 30 days, they are more likely to stay with
											the program on a continuing basis and report significant,
											positive changes for themselves and their students..</p>
									</div>
								</div>
							</div></li>
						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How is Mindfulness relevant in education?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">

										<p>As students learn to regulate their attention, emotions
											and behaviors, they perform better in school, experience
											fewer discipline problems, and develop resilience to
											counteract the negative effects of stress and anxiety. When
											teachers practice with their students, they report a 43%
											decrease in their stress levels that helps them reconnect
											with their love of teaching. We are at a critical point in
											education in the U.S. Declining test scores, high dropout
											rates and reduced global competitiveness for the past several
											decades underscore the severity of our educational
											challenges. Even with recent gains in a few academic
											categories, many of our children are not adequately prepared
											to successfully navigate the workforce of the 21st century.</p>
										<p></p>
										Children who participate in this type of mindfulness training
										demonstrate improved focus, increased creativity, higher
										academic performance, less stress and consistent prosocial
										behaviors. Bolstering these self-regulation skills through
										mindful awareness training predicts school achievement in
										reading and mathematics better than IQ scores. The bottom line
										is that mindful students improve their grades, rate themselves
										as more happy/content, and improve their ability to get along
										with their peers, teachers and family members. Discipline
										issues go down while performance and a sense of community go
										up.
										</p>


									</div>
								</div>
							</div></li>
						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>Is there research evidence to support the benefits of
										mindfulness?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Yes, there are more than 40 years of research with
											thousands of scientific studies documenting improvements in
											physical and mental health, academic outcomes, and life
											outcomes as a result of practicing mindful awareness.</p>


									</div>
								</div>
							</div></li>


						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What is “Readiness to Learn”?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>It’s defined as the ability to regulate emotions and
											behaviors and to inhibit impulsivity. Daily mindfulness
											practice fosters students “Readiness to Learn”. ‘Readiness’
											has become a core focus for educators because research has
											shown it’s a precursor to school success. Readiness is more
											predictive of academic achievement than IQ! Readiness is
											developed through Inner Explorer programs because students
											simultaneously experience a reduction in stress and an
											increase in attention. No matter what experiences students
											are exposed to outside of school, these programs allow them
											to create strong habits of mind and heart through consistent
											reflective practices. The result is they improve their grades
											and test scores.</p>


									</div>
								</div>
							</div></li>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What is the science behind mindfulness?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>The practice of mindfulness has gained much popularity,
											especially in recent years, as its application proved
											valuable in fields ranging from the medical community to
											education and the military. This mainstream popularity has
											fueled even more research into mindfulness practices.
											Scientific research clearly supports and documents the
											benefits of mindfulness to improve not only health and
											well-being, but also the brain in particular. Brain science
											tells us that the brain actually has a ‘plastic’ quality
											called neuroplasticity that allows the brain matter to change
											under certain conditions. What is significant about this is
											that whereas we previously thought the brain was fixed,
											especially by a certain age, we now know that, with
											mindfulness practice, the grey matter in the brain changes to
											foster improved function in the areas of the brain that
											regulate learning, memory, compassion, empathy and stress.</p>
										<p></p>
										<p>Further, our bodies were designed to respond to
											stressful situations in our lives with either fight or
											flight, or what is typically called the “fight or flight”
											response. When we are in ‘fight or flight’ our muscles tense,
											our breathing and heart rate increases as our blood pressure
											rises. While this worked very well when we were hunters and
											gatherers, activation of the ‘fight or flight’ response on a
											daily basis, often multiple times throughout the day, leads
											to unhealthy stress levels. Dr. Herbert Benson, of Harvard
											coined the term ‘relaxation response’ to describe what is
											known as the antidote to ‘flight or fight’. Practices such as
											mindfulness assist us in evoking the relaxation response and
											when we practice mindfulness, our muscles relax, breathing
											and heart rates slow down and our blood pressure tends to
											decrease. In response, our bodies create less cortisol, the
											stress hormone, which further promotes a sense of calm and
											well-being.</p>
									</div>
								</div>
							</div></li>




						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>Is mindfulness a religion?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Mindfulness is not a religion. It is a set of simple
											attention practices that promote full awareness of the
											present moment. These attention practices allow students to
											develop the capacity to sustain focus. This has been shown to
											improve academic performance. Similar to lifting weights to
											strengthen muscle tone, attention practices strengthen brain
											function. All students can participate just like they would
											any other part of the school curriculum.</p>
									</div>
								</div>
							</div></li>


						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>Can you suggest reading material on mindfulness? What
										are books and articles I could read to learn more about
										mindfulness?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>
											Here<a download="" style="color: green;" title="Download"
												href="/ie/NewStyles/pdf/Mindful-Awareness-Books.pdf">(Link
												to a PDF MINDFUL AWARENESS BOOKS)</a> is a document with some
											recommending reading
										</p>
										<p></p>
									</div>
								</div>
							</div></li>


					</ul>
					<!-- end 2ed -->
				</div>
			</div>
		</div>



		<div class="container">
			<div class="row">
				<div id="integration-list">
					<ul>




						<div class="clearreadmore"></div>
						<div class="sub_title_page">
							<h2>TEACHER</h2>
						</div>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>Is there training?I’d like to learn more about
										implementing a mindful awareness program in my classroom.</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>There is a 20-minute online training videoalong with
											curriculum resources with related program tools for each
											classroom. Each teacher training can be done online and can
											be referenced at any point of time in the teacher’s account.
											All materials can be found in the teacher’s Inner Explorer
											accountunder the “Tools” option on the menu bar. The Inner
											Explorer program is automated and does not require teacher
											prep or planning time. Research has shown that teachers who
											participate along with students in the 10-minute program
											experience a significant reduction in stress, among other
											benefits.</p>
									</div>
								</div>
							</div></li>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>Do I have the correct program for my classroom ?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">

										<p>Inner Explorer programs are designed for use in
											preschool through high school classrooms. We have four
											specific programs:</p>
										<p>•Exploring MeTMfor preschool and kindergarten
											(successful with very young children)</p>
										<p>•Exploring OriginalityTMfor elementary classrooms</p>
										<p>•Exploring PotentialTMfor middle school classes</p>
										<p>
											•Exploring RelevanceTMfor high school classroomsIf you need
											your program changed, you can contact the Administrator of
											your school to request the change. If you have an individual
											teacher license, you can email <a>info@innerexplorer.org</a>
											with details of your change request.
										</p>
									</div>
								</div>
							</div></li>
						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What if I don’t have my students every day?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">

										<p>You can still participate and launch a program in your
											class. You can also encourage other teachers to participate
											and practice with your students on the days they have them if
											that is the case in your school.</p>




									</div>
								</div>
							</div></li>
						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What’s the best way for teachers to incorporate Inner
										Explorer?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>
											Our audio-guided programs are designed to run throughout the
											entire school year in 5-10 minute daily segments. Each
											semester, a series of 90 recordings are available on any
											networked device including a classroom computer or
											smartphone. Eachday, the classroom teacher can play a
											recording during a normal transition time (i.e. beginning of
											the school day or right after recess or lunch), so it doesn’t
											impact the overall curriculum. The students and teacher
											listen to the recording and participate in the 2-minute
											journaling integration exercise at the end, which is included
											in the 10 minutes</a>
										</p>


									</div>
								</div>
							</div></li>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>I don’t have time for another activity in my
										classroom. How do I fit this in?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Teachers who use the program regularly report that they
											actually find more time in their day due to the reduction in
											behavioral issues and distractions as well as their students’
											increased focus and attention. Since the programs only take
											about 5-10 minutes per day, you can be at ease that this
											program won’t eat up a significant portion of your daily
											activities.</p>
									</div>
								</div>
							</div></li>




						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How do I explain this to my students’
										parents/caretakers?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>We encourage you to inform your students’ parents about
											the program. There is a pre-drafted letter in your teacher
											dashboard that you can tweak and send out to your parents to
											let them know about this new program.This letter can be found
											under the “Parents” option on your menu bar.</p>
									</div>
								</div>
							</div></li>


						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What is the best way to proceed when a family does not
										want their student to participate in the mindfulness practice?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>
											You may find that, on occasion, a few families choose not to
											participate in the daily mindfulness practice. While the
											Inner Explorer program is intentionally a secular program
											without any religious instruction, some families still object
											for religious reasons. Before the student opts out, you may
											reiterate to the parent that our program is secular. You may
											also invite them to listen to a few tracks in advance of
											their child ever participating. In addition, they mayuse the
											Parent/Caregiver Tune In feature on a daily basis so they can
											hear the same tracks their child listens to every day.
											Finally, you may also wish to share the <a>Parent FAQ’s</a>that
											more fully describe our program and answer any lingering
											questions, including the science behind the practice.[Link to
											Parent FAQs PDF]Regardless, some families may still choose to
											opt out and we fully respect their choice. You may let them
											know that their child is free to simply sit quietly for the
											5-10 minutes that the class is practicing Inner Explorer. If
											a family raises theobjection that their child will still hear
											the practice, you may offer the child to use that time for a
											short break outside the classroom or they could wear
											noise-cancellation headphones.. For younger students, you may
											need to make arrangements so that the student is properly
											supervised if they leave the classroom. If your practice is
											first thing in the morning, you can always invite the student
											to arrive at the time your daily practice
											concludes.Occasionally, well-meaning teachers will allow
											opt-out students to perform another quiet activity like
											reading or journaling. While this seems to make perfect sense
											and to be relatively benign, what we find is that other
											students may become envious of the student’s privilege to
											read or journal and request to do the same. If it becomes too
											challenging for a student to sit and not practice, you might
											suggest they bring in a single interesting photo, which
											captures their attention. They can place the photo in their
											lap and look at it for the duration of mindfulness practice.
										</p>

									</div>
								</div>
							</div></li>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What is the Tune In feature?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Inner Explorer Tune In allows parents to listen in real
											time to the audio file playing in their child’s classroom as
											part of IE’s mindful awareness program. Parents can enter
											email addresses to request notification when a mindfulness
											track is beginning. Parents will be automatically notified
											via email by our platform when the teacher starts the audio
											track and they can opt to listen along with the students.If a
											parent is not available to listen to the mindfulness track at
											the same time as the classroom, the link in the notification
											email will work for 24 hours. The parents can listen later in
											the day or at home with the family.</p>
									</div>
								</div>
							</div></li>
						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How does the Tune In feature work?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">

										<p>
											To activate IE Tune In notifications, registered teachers
											need to email parents from their account on the Compass
											platform. The auto-generated emails from the IE platform
											include a unique URL that the parent will click on to “Opt
											In” to the Tune In Feature. Click here to download the Tune
											In User Guide. <a download="" style="color: green;"
												title="Download"
												href="/ie/NewStyles/pdf/Tune-In-User-Guide-for-Teachers.pdf">(Link
												to a PDF MINDFUL AWARENESS BOOKS)</a>
										</p>




									</div>
								</div>
							</div></li>
						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>Can I listen to the audio tracks in advance?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Yes, you can log into your account and play a track to
											listen to the recording prior to practicing with your class.
											As a teacher you have access to 5 tracks after your current
											placement within the Inner Explorer program. You can always
											replay on an audio track that you have already listened to</p>


									</div>
								</div>
							</div></li>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What happens if I have a student(s) that distract the
										class during mindfulness practice?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Distraction can be a matter of degree. You may have
											some restless students that fidget or students who
											continually open their eyes and look around or even make
											noises. Some teachers find it helpful to invite these
											students to sit close to them. Others position their
											students’ chairs such that everyone is facing forward. If
											you’ve done all you can to limit distractions before they
											happen, e.g. dim or turn off the lights, turn phones off or
											place on silent, and perhaps even put a sign on the door
											(that the students can make) to alert others that the class
											is practicing, then simply allow any other distractions
											created by the students to become part of the practice. As
											the teacher, you can model this best by remaining seated with
											your eyes closed if possible. For the most part, distraction
											can be handled in a very similar way to the instruction we
											offer on handling thoughts, sounds, or sensations in the body
											during practice. Once you notice what is drawing your
											attention away from your focal point (typically the breath),
											you gently bring your attention back. There is a
											misconception that the mind (and the environment) must be
											quiet during practice. However, as long as you continue to
											bring your attention back to your breath, no matter how many
											times that may happen, you are practicing.</p>

										<p>When you first introduce the program, and whenever else
											you may feel it necessary, you can remind your students how
											to work with distractions as outlined above. In the long run,
											a daily practice is probably one of the best tools at your
											disposal to work with distractions. Overtime, students who
											tend to pose a distraction tend to settle down. Students who
											practice regularly also become more accustomed to
											distractions and notice them less. It is actually a wonderful
											gift to be able to practice with distractions because then
											you feel more comfortable practicing mindfulness anywhere and
											at anytime. If you find it challenging to work with a
											particular student’s distractions and would like to have some
											more support, please feel free to contact us.</p>
									</div>
								</div>
							</div></li>




						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What happens if a student won’t or can’t close their
										eyes during mindfulness practice?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Sometimes, both students and adults may find it too
											challenging or uncomfortable to have their eyes closed during
											mindfulness practice. While it is ideal to close one’s eyes,
											you can instruct your studentto either look down at their
											hands in their lap or softly gaze at the floor at roughly a
											45 degree angle. Both of these alternatives allow for the
											student to minimize visual distractions. If you have a
											student who becomes anxious and can’t help but look around at
											others, when you privately speak with them outside of
											practice, gently encourage them to bring their attention back
											to their lap or the floor each time they look. You can even
											suggest that they try and look without fully opening their
											eyes, to do so slowly and mindfully rather than quickly. In
											this way, they can create their own settled state within the
											practice..</p>
									</div>
								</div>
							</div></li>



						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How do I show my principal or school that this is
										important?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>
											Our Ambassador Kit is designed to provide an overview of
											mindfulness, whyit’s important in education, how students and
											teachers benefit, and a simple way to implement it in your
											school. The kit includes a brochure, a brief presentation, a
											video clip of teacher and student testimonials and other
											tools to inspire engagement. Please contact <a>jjohnson@innerexplorer.org</a>
											for more information.
										</p>
									</div>
								</div>
							</div></li>


						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>I forgot the password to my Inner Explorer
										account.What do I do?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Recovering your password is quick and easy!</p>
										<p>Go to the Login page: http://innerexplorer.org/ie/login</p>
										<p>Click: Forgot Password</p>
										<p>Enter your email address</p>
										<p>Click: Submit</p>
										<p>You will be brought back to the Login page and a note
											will appear that reads “An email has been sent to the email
											address you provided with a link to reset your password.”</p>
										<p>In your email inbox will be a new email with a link to
											reset your IE account password. The link will take you to a
											Reset Password page where you can reset the password to your
											account. You enter your new password, re-enter for
											validation, and click Submit.</p>
										<p>You will arrive back to the Login page where you will
											enter your email address and the new password you just
											created.</p>
									</div>
								</div>
							</div></li>



						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What happens if I follow the steps to reset my
										password and the page keeps refreshing?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>This means you are entering an email address that is
											not associated with an Inner Explorer account. Check the
											email address and double check that youare typing it
											correctly. Also try other email addresses that may be
											associated with your account.</p>
									</div>
								</div>
							</div></li>
						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What do I do if I am checking the spelling of my email
										address and I have tried my other email addresses and I can’t
										reset my password?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>
											If you are registered with a school and have an
											administrator, check with that person to see if your email
											address was entered in Compass correctly. The school
											administrator can edit your email address under the Manage
											Teachers tab.If you still cannot reset your password, please
											send an email to <a>admin@innerexplorer.org</a>. In the body
											of the email, be sure to give us three important pieces of
											informationalong with a description of your issue: (1) your
											email address, (2) yourfirst and last name, and (3) the name
											of your school
										</p>
									</div>
								</div>
							</div></li>

					</ul>
					<!-- end 2ed -->
				</div>
			</div>
		</div>






		<div class="container">
			<div class="row">
				<div id="integration-list">
					<ul>




						<div class="clearreadmore"></div>
						<div class="sub_title_page">
							<h2>ADMINISTRATOR</h2>
						</div>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What is an Inner Explorer Administrator?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>An Administrator is someone who is willing to take on
											the responsibility of making changes in the school’s Inner
											Explorer account such as adding teachers, monitoring practice
											habits, editing accounts and other tasks. An Administrator is
											assigned toan Inner Explorer school licenseand is not
											necessary for an individual teacher license. The
											Administrator can be a principal, a member of support staff
											within the school, or any participating or nonparticipating
											teache</p>

									</div>
								</div>
							</div></li>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How do we change the Administrator of our school?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>
											You can change the Administrator of your school by emailing <a>info@innerexplorer.org</a>.
											Please be sure to include the name of your school and the
											name and email address of the new Administrator.
										</p>
									</div>
								</div>
							</div></li>
						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How do I encourage teachers to participate?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">

										<p>We find that the program works best when teachers are
											encouraged but not required to participate inthe program.
											Educating your teachers on the benefits of mindfulness in
											general and our program in particular is often sufficient to
											inspire teachers to try the program. It is important that you
											get them logged onto the platform as soon as you know they
											are interested. We have training resources to help onboard
											the teachers and are happy to offer continued support. If
											there is a teacher, or teachers, who are actively engaged
											with our program, enlist their support to inspire other
											teachers. A community of teachers practicing mindfulness
											increases the success of the program as students experience
											continuity as they move through the grade levels as well as
											in their mindful communication and collaboration with other
											student.</p>




									</div>
								</div>
							</div></li>
						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>Do all of my classes need to start the program at the
										same time?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>No, your teachers have the flexibility to start the
											program whenever it is most convenient for them.</p>


									</div>
								</div>
							</div></li>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How do I monitor the progress for each of my
										classrooms once they’ve started the program?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>You can monitor the progress of the classrooms in your
											school from your Administrator dashboard.</p>
									</div>
								</div>
							</div></li>




						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>Do I have to inform our students’ parents before the
										program begins?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>We highly encourage you or your teachers to inform your
											students’ parents about this new program. There is a
											pre-draftedletter in the teacher account dashboard that can
											be tweaked and sent to parents to give them the information
											they need to understand the purpose and benefits of the
											program.</p>
									</div>
								</div>
							</div></li>



						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How do I help my teachers foster daily practice in
										their classes?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Encourage your teachers to practice along with the
											students and to practice daily for at least 30 days. After 30
											days, teachers will have developed a routine and often begin
											to have experiential knowledge of how Inner Explorer benefits
											their classroom. This knowledge will increase over time with
											continued use of the program and reinforce the value of a
											daily practice</p>
									</div>
								</div>
							</div></li>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>As the school’s Administrator, can I also have a
										Teacher account to access an Inner Explorer program?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Yes! Once you are the Administrator, you can set
											yourself up as a teacher in your school. Once you are set up
											as a teacher, you will be given a choice at login to access
											either your Administrator account or your Teacher account. If
											you click on your Teacher account, you will be brought to
											your practicepage and can access audio tracks. If you click
											on Administrator, you will be taken to your school account
											where you can add teachers, get an overview of classroom
											practice behaviors, change programs for teachers, etc.</p>

									</div>
								</div>
							</div></li>



						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How do I add teachers to our school?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Logged in as the School administrator, simply follow
											these instructions:</p>
										<p>-Click on the “Manage Teacher” option on the school
											dashboard menu</p>
										<p>-Click on “Add Classes”</p>
										<p>-Select the appropriate program (make sure there is a
											checkmark over all applicable programs for your school)</p>
										<p>-Click “Next”</p>
										<p>-On the Manage Classes page, make sure the program you
											want is green under Add New Classes title. If it is not
											green, click on it. When the program is selected, it will
											show as green.</p>
										<p>-Enter class name, teacher name and teacher email. The
											teacher will be given the program highlighted in green under
											“Manage Classes” title.</p>
										<p>-Click “Next”</p>
										<p>-You should now see the new teacher added with the
											appropriate program in your Manage Teacher list</p>
										<p>The teacher you added will receive an auto notice email
											in their inbox welcoming them to Inner Explorer. This welcome
											letter contains login credentials for the teacher account.</p>

										<p>**Be sure to delete any teacher accounts that are no
											longer being used by your school</p>


									</div>
								</div>
							</div></li>





						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>I made a mistake, how do I edit teacher information?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Logged in as the School administrator, simply follow
											these instructions:</p>
										<p>-Click on the “Manage Teacher” option on the school
											dashboard menu</p>
										<p>-Click on “Edit” next to the teacher’s name. Here you
											can update the teacher’s email address, Inner Explorer
											program, name and class name</p>

									</div>
								</div>
							</div></li>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How do I change a teacher’s program?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Logged in as the School administrator, simply follow
											these instructions:</p>
										<p>-Click on the “Manage Teacher” option on the school
											dashboard menu</p>
										<p>-Click on “Edit” next to the teacher’s name. Here you
											can choose which program the teacher should have from the top
											drop down menu. When you select a new program the teacher
											hasn’t listened to before, the classroom audio files begin on
											track 1.</p>
									</div>
								</div>
							</div></li>
						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What if theInner Explorerprogram isn’t available in
										the drop down menu in the Manage Teachers area?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">

										<p>Logged in as the School administrator, simply follow
											these instructions:</p>
										<p>-Click on the “Manage Teacher” option on the school
											dashboard menu</p>
										<p>-Click on “Add Classes”-Select the appropriate program
											(makesure there is a checkmark over all applicable programs
											for your school)</p>
										<p>-Click “Next”-On the Manage Classes page, make sure the
											program you want is green under Add New Classes title. If it
											is not green, click on it. When the program is selected, it
											will show as green.-Enter class name, teacher name and
											teacher email</p>
										<p>-Click “Next”</p>
										<p>-You should now see the new teacher added with the
											appropriate program in your Manage Teacher list</p>
									</div>
								</div>
							</div></li>
						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How do I listen to audio tracks as an Administrator?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>There are three ways you can do this:</p>
										<p>
											<b>1.You can create a teacher account for yourself</b> and
											assign a program to your email address so you can hear all of
											the audio track files. This is the best solution if you would
											like to practice Inner Explorer daily and experience an
											entire program first hand. You can create an account for
											yourself the same way you would for a teacher in your school.
										</p>
										<p>
											<b>2.You can listen to the audio tracks that your
												teachers</b> practice in the classroom. Click on “Practice
											Progress” on the menu bar of your administrator dashboard.
											Find the teacher/classroom with the audio tracks you are
											looking for. Click “Play Track”.
										</p>
										<p>
											<b>3.You can use the Radio feature in your Administrator</b>
											account.The Radio feature is different from the Tune In
											feature. The Tune In feature is the bridging of the daily
											mindful awareness practice with parents and caregivers at
											home. The Radio feature is an option in your Administrator
											menu bar. The Radio has streamlining audio tracks from each
											of Inner Explorer’s four programs. This gives Administrators
											a flavor of the tracks within each program. Simply click on
											the program on the Radio image to listen to audio tracks from
											that specific program.
										</p>


									</div>
								</div>
							</div></li>





					</ul>
					<!-- end 2ed -->
				</div>
			</div>
		</div>
	</section>
	<!--End FAQ Section  -->



	<!-- /.container -->

	<!-- Footer -->
	<!-- ###### Include Footer ######## -->
	<!-- End Footer -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="<%=request.getContextPath()%>/NewStyles/FAQ/js/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="<%=request.getContextPath()%>/NewStyles/FAQ/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/FAQ/js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder NewStyles/images work. Don't actually copy the next line! -->
	<script type="text/javascript">
		$(function() {
			$(".expand").on("click", function() {
				$(this).next().slideToggle(200);
				$expand = $(this).find(">:first-child");

				if ($expand.text() == "+") {
					$expand.text("-");
				} else {
					$expand.text("+");
				}
			});
		});
	</script>
</body>
</html>


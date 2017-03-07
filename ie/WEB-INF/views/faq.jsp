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
									<h2>With these outcomes, why isn’t every school offering
										mindfulness training?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Beyond the evidence that exists to support mindfulness
											in schools, educators and administrators have to evaluate
											cost, ease of implementation and how the program can be
											sustained after the initial launch and training phase. The
											Inner ExplorerTM daily mindfulness programs are now being
											used in more than 4,400 classrooms because they effectively
											address these concerns. When schools make the minor
											investment in Inner ExplorerTM, they realize a significant
											return.</p>


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
							<h2>INNER EXPLORER</h2>
						</div>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What is Inner Explorer?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Inner ExplorerTM is a non-profit organization whose
											mission is to provide daily mindfulness programs for PreK-12
											classrooms to help children develop self-awareness,
											self-control, resilience and compassion. Each series contains
											90 audio-guided practices that can be used everyday by simply
											logging in and pressing play. Students and their teachers
											participate together in the brief (5-10 minute) daily
											practices. No prep, planning or curriculum changes required.</p>
									</div>
								</div>
							</div></li>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How is Inner Explorer different from other programs?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">

										<p>We’ve created our mindfulness-based programs using the
											latest scientific research in cognitive neuroscience and
											developmental psychology. We’ve also fine-tuned the approach
											over the past five years with direct feedback and guidance
											from thousands of teachers, administrators and students. Our
											programs address the major challenges many school systems
											face, including academic performance, graduation rates,
											discipline problems, school climate and bullying.
											Additionally, our programs are simple to implement and cost
											effective, so they can be rolled out quickly to deliver
											significant improvements in student achievement. The Inner
											Explorer program does not require extensive outside training
											or facilitator. The “Press Play” format allows for immediate
											access to the program as teachers and students listen to the
											guided daily practice together. We offer a parent/caretaker
											‘Tune In” so they can listen to the same program as their
											children each day. There is also a home edition for practice
											at home or summer use to maintain continuity throughout the
											year. This allows families to not only practice together, but
											also bridges home and school. Most importantly, our programs
											help children become more compassionate, responsible and
											productive citizens.</p>
									</div>
								</div>
							</div></li>
						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What is social emotional learning (SEL)?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">

										<p>
											As defined by the Collaborative for Academic, Social and
											Emotional Learning (CASEL): Social and emotional learning
											(SEL) is<i> “the process through which children and
												adults acquire and effectively apply the knowledge,
												attitudes, and skills necessary to understand and manage
												emotions, set and achieve positive goals, feel and show
												empathy for others, establish and maintain positive
												relationships, and make responsible decisions.”</i>
										</p>
										<p></p>
										Inner Explorer provides Mindfulness-Based Social Emotional
										Learning (MBSEL) programs for preschool through high school
										classrooms. An MBSEL evidence-based curriculum develops
										similar values to a traditional SEL curriculum, but the method
										is entirely different. An MBSEL program helps the children
										embody the lessons in a holistic and integrated way. By
										allowing the children to connect with their direct
										experiences, they learn to value their capacities, their
										potential and their voice. Values including compassion,
										kindness, self-control, enthusiasm, openness and tolerance
										spring naturally from this process. MBSEL provides the
										foundation for “Readiness to Learn” and for other SEL
										initiatives.
										</p>


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
									<h2>How much does it cost?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>
											Whether you are a school, teacher or parent, we have a
											program to fit your needs. To see the pricing for each,
											please select the appropriate program for you here.<a>http://innerexplorer.org</a>
										</p>
									</div>
								</div>
							</div></li>


						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>Where can I find a demo or listen to a few tracks?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>
											Experience our program with this trial.<a>http://innerexplorer.org/ie/program-trial</a>
										</p>
									</div>
								</div>
							</div></li>


						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What’s the best way to get this going in my school or
										community?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>
											If you are an educator, you can sign up for a trial to
											experience it in your school right away. If you’re a parent
											or community member, you can contact <a>jjohnson@innerexplorer.org</a>
											to get access our Ambassador Kit, which includes a brochure,
											a presentation and other tools to share information about the
											program to others in the community.
										</p>
									</div>
								</div>
							</div></li>




						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How do I get a school signed up?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>
											To sign up as a school, get started by selecting a program
											option here.<a>http://innerexplorer.org/ie/get-started</a>
										</p>
									</div>
								</div>
							</div></li>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>If I have other questions, whom do I contact?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>
											If you have further questions, please contact us at <a>info@innerexplorer.org</a>,
											and someone from our team will reach out to you in 3-4
											business days with an answer.
										</p>
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
										<p>Here (Link to a PDF MINDFUL AWARENESS BOOKS) is a
											document with some recommending reading.</p>
											<p>
											<a download="" style="color: green;" title="Download"
												href="/ie/NewStyles/pdf/Mindful-Awareness-Books.pdf">(Link
												to a PDF MINDFUL AWARENESS BOOKS)</a>
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
							<h2>PARENT/CARETAKER</h2>
						</div>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How do I know when my child is practicing?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>All of our PreK-12 programs have a feature created
											specifically for parents called “Tune In” that allows you to
											receive notifications when your child’s class is practicing.
											With this feature, you can also tune in and listen to the
											track with your child’s class or listen to the track at a
											later time within 24 hours. Your teacher can send you an
											invite to this feature once the class has launched their
											program.</p>
									</div>
								</div>
							</div></li>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What sort of questions should I ask at home?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">

										<p>One of the benefits of tuning in with your child’s
											class is that you have the opportunity to talk about it with
											your child when he/she comes home. While it is not necessary
											to discuss anything in particular, maintaining an open,
											receptive and curious attitude toward the mindfulness
											practice allows for reflection and connection. Feel free to
											share with your child positive changes you notice in yourself
											over time or your favorite part of a particular practice and
											then encourage your child to do the same.</p>
									</div>
								</div>
							</div></li>
						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How can I incorporate mindfulness at home?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">

										<p>There are many ways you can incorporate Inner Explorer
											and the practice of mindful awareness at home. As mentioned
											above, you can listen in with your child’s class via the
											“Tune In” feature and ask questions about the practice when
											your child gets home. Look for opportunities in your everyday
											family life to incorporate some of the mindfulness practices
											such as gratitude or deep breathing during a stressful time.
											Finally, here is a list of recommended readings that will
											give you more information about mindfulness.</p>
										<p>
											<a download="" style="color: green;" title="Download"
												href="/ie/NewStyles/pdf/Mindful-Awareness-Books.pdf">(Link
												to a PDF MINDFUL AWARENESS BOOKS)</a>
										</p>



									</div>
								</div>
							</div></li>
						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What if I’m a parent who homeschools my child(ren)?
										Can I run a program at home?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>
											Yes. Please see our teacher FAQs below and sign up as a
											teacher here.<a>http://innerexplorer.org/ie/get-started</a>
										</p>


									</div>
								</div>
							</div></li>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>I’m active in the PTA. How should I present this to my
										school?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>
											We have an “Ambassadors Kit”, which includes a brochure,
											presentation, video and other tools to share information
											about the program to others in the school community. You can
											contact <a>jjohnson@innerexplorer.org</a> to get access our
											Ambassador Kit.
										</p>
									</div>
								</div>
							</div></li>




						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How can I contribute?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>
											We appreciate your support! You can make a tax-deductible
											donation here.<a>http://innerexplorer.org/ie/contribute-now</a>
											There are also countless other ways you can help, including
											emailing your child’s teacher about the program, asking local
											businesses or people in your network to make a donation,
											sharing information about Inner Explorer on social media or
											encouraging schools in your area to consider sponsoring
											another school that might benefit from the program. You can
											also send us a testimonial, make a personal contribution or
											start a fundraising campaign in your community.
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
							<h2>TEACHER</h2>
						</div>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What grades does Inner Explorer serve? Will this work
										with very young children?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Inner Explorer programs are designed for use in
											preschool through high school classrooms. We have four
											specific programs:</p>
										<p>• Exploring MeTM for preschool and kindergarten
											(successful with very young children)</p>
										<p>• Exploring OriginalityTM for elementary classrooms</p>
										<p>• Exploring PotentialTM for middle school classes</p>
										<p>• Exploring RelevanceTM for high school classrooms</p>

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
											mindfulness, why it’s important in education, how students
											and teachers benefit, and a simple way to implement it in
											your school. The kit includes a brochure, a brief
											presentation, a video clip of teacher and student
											testimonials and other tools to inspire engagement. Please
											contact <a href>jjohnson@innerexplorer.org</a> for more
											information.
										</p>
									</div>
								</div>
							</div></li>
						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>Does every teacher in the school have to sign up?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">

										<p>No. Launching a program is at the discretion of the
											teacher or the school.</p>




									</div>
								</div>
							</div></li>
						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How much training is required before I can start a
										program in my classroom?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>There is a 20-minute online training video along with
											curriculum resources with related program tools for each
											classroom. Each teacher training can be done online and can
											be referenced at any point of time in the teacher’s account.
											All materials can be found in the teacher’s Inner Explorer
											account under the “Tools” option on the menu bar. The Inner
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
										<p>Our audio-guided programs are designed to run
											throughout the entire school year in 5-10 minute daily
											segments. Each semester, a series of 90 recordings are
											available on any networked device including a classroom
											computer or smartphone. Each day, the classroom teacher can
											play a recording during a normal transition time (i.e.
											beginning of the school day or right after recess or lunch),
											so it doesn’t impact the overall curriculum. The students and
											teacher listen to the recording and participate in the
											2-minute journaling integration exercise at the end, which is
											included in the 10 minutes.</p>
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
											let them know about this new program. This letter can be
											found under the “Parents” option on your menu bar..</p>
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
									<h2>What if I don’t have the budget to pay for this?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>There are a number of ways to get Inner Explorer into
											your classroom and school. We offer monthly subscriptions for
											as low as $10 per month. We can also facilitate a mini
											fundraising campaign that is easy to launch with tools built
											into our platform. We have donor support for a limited number
											of scholarships, so please let us know if you’re interested
											to apply. Please contact us at info@innerexplorer.org if you
											are interested.</p>
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
									<h2>How do I encourage teachers to participate?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>We find that the program works best when teachers are
											encouraged but not required to participate in the program.
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
											students.</p>

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
											pre-drafted letter in the teacher account dashboard that can
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
											daily practice.</p>
									</div>
								</div>
							</div></li>




						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>Can I pay for our school subscription with a check or
										purchase order?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Yes, you can pay online with a credit card or e-check.
											Inner Explorer uses PayPal to complete all transactions.</p>
									</div>
								</div>
							</div></li>



						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How do I get other schools involved?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>
											You can get other schools involved by sending them to
											www.InnerExplorer.org or sponsoring a school that may not
											have the funds through our fundraising campaign feature on
											the platform. You can also encourage the school to contact us
											at <a>info@innerexplorer.org</a> to apply for donor
											scholarships.
										</p>
									</div>
								</div>
							</div></li>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How can we help other schools in our community that
										can’t afford this program but need it?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Here is a list of ways to obtain funding for our
											program:</p>
										<p>• Sponsorship by another school</p>
										<p>• Parent-teacher organizations/associations</p>
										<p>• Service organizations (e.g. Jaycees, Lions Club)</p>
										<p>• Local businesses</p>
										<p>• Hospitals and medical clinics</p>
										<p>• Education or other private foundations (try searching
											Funsnetservices.com)</p>
										<p>• Mayor’s Offices - municipal government</p>
										<p>• Private foundations</p>

									</div>
								</div>
							</div></li>



						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>Do you offer PD (Professional Development) Days?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>
											We offer PD days for an additional cost and are happy to
											coordinate the training and dates that fit your schedule.
											Please send us a note with your information to <a>jhoulihan@innerexplorer.org.</a>
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
							<h2>AMBASSADOR</h2>
						</div>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What is an ambassador?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Ambassadors are individuals and organizations who want
											to spread the word about the Inner Explorer’s mindfulness
											initiative to promote readiness to learn in K-12 schools.</p>

									</div>
								</div>
							</div></li>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>What can I do to help Inner Explorer as an ambassador?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>As an ambassador, you will be given the tools you need
											to talk to schools, teachers, administrators and others in
											your community about the benefits of Inner Explorer and
											mindfulness. There are countless ways you can help, including
											emailing your child’s teacher about the program, asking local
											businesses or people in your network to make a donation,
											sharing information about Inner Explorer on social media or
											encouraging schools in your area to consider sponsoring
											another school that might benefit from the program. You can
											also send us a testimonial, make a personal contribution or
											start a fundraising campaign in your community.</p>
									</div>
								</div>
							</div></li>
						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>How do I encourage a school to sign up?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">

										<p>The best way to encourage a school to sign up is to
											reach out personally through an email, phone call or personal
											visit to the school. If you copy us on the email, we will be
											happy to follow-up and present the benefits of our programs</p>



									</div>
								</div>
							</div></li>
						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>Where can I go to learn more? Are there any upcoming
										events?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>Please explore our website and stay tuned for
											announcements about future events.</p>


									</div>
								</div>
							</div></li>

						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>Do I have to use the program to be an ambassador?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>No, you don’t have to use the program to be an
											ambassador.</p>
									</div>
								</div>
							</div></li>




						<li><a class="expand">
								<div class="right-arrow">+</div>
								<div class="right_side">
									<h2>If have other questions, who do I contact?</h2>

								</div>
						</a>

							<div class="detail">

								<div id="" class="col-md-12">
									<div class="FAQ_outr">
										<p>
											For general questions or questions about an Inner Explorer
											account, please contact us at <a>info@innerexplorer.org</a>
											For more information on becoming an ambassador or to request
											marketing materials, please email Jordan Johnson: <a>jjohnson@innerexplorer.org</a>
											For more information about making a contribution, please
											email Janice Houlihan: <a>jhoulihan@innerexplorer.org</a>
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


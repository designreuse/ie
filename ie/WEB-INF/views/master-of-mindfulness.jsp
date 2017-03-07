<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server

	response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance

	response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
%>
<spring:eval expression="@propertyConfigurer.getProperty('service.url')"
	var="baseURL" />
<!doctype html>
<html>
<head>


<!-- Google analytics -->
<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script',
			'https://www.google-analytics.com/analytics.js', 'ga');
	ga('create', 'UA-73908394-1', 'auto');
	ga('send', 'pageview');
</script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<meta name="description" content="Master of Mindfulness is a unique and empowering book - written for kids by kids - with fun illustrations and tips that shows students how to be more mindful and confident.">

<meta name="keywords" content="Master of Mindfulness -A Book By Laurie Grossman">
<title>Master of Mindfulness: How to Be Your Own Superhero in
	Times of Stress</title>
<link rel="icon" href="NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"
	id="style_components" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/mom-style.css"
	id="style_components" rel="stylesheet" type="text/css" />
<style>
body {
	color: #5a5a5a;
	font-family: "Open Sans", sans-serif !important;
	padding-bottom: 40px;
}
</style>


</head>

<body">
	<div class="wrapper">
		<header id="header">
			<div class="container ">
				<div class="logo">
					<a href="http://innerexplorer.org" title=""> </a>
				</div>
				<div class="hdRight">

					<a href="<%=request.getContextPath()%>" title="Home">
						<div class="searchBox">
							<input type="button" class="home_icon">
						</div>
					</a>

					<div class="startRight b4-login-mrgn">
						<a href="<%=request.getContextPath()%>/login"> <input
							type="button" title="Login" class="startBtn" value="Login">
						</a>
					</div>
					<ul class="nav navbar-nav pull-right ulsocl">
						<li class="socialTop"><a class="in-new-shr facebookHover"
							href="https://www.facebook.com/MasterofMindfulness"
							target="_blank"> <i class="fa fa-facebook"></i>
						</a></li>

						<li class="socialTop"><a class="in-new-shr twtHover"
							href="https://twitter.com/MMindfulnes" target="_blank"> <i
								class="fa fa-twitter "></i>
						</a></li>
						<li class="socialTop"><a class="in-new-shr lkndHover"
							href="https://www.linkedin.com/in/lauriegrossman" target="_blank">
								<i class="fa fa-linkedin "></i>
						</a></li>

					</ul>
				</div>
			</div>
		</header>


		<section class="banner-outer-mindfulness">
			<img
				src="<%=request.getContextPath()%>/NewStyles/images/mom/banner.jpg"
				alt="#" class="img-responsive bannerimgs" />
			<div class="col-md-6 banner-text">

				<h1 class="tital-banner-nw">MASTER OF MINDFULNESS</h1>
				<h2>A BOOK BY LAURIE GROSSMAN, ANGELINA ALVAREZ, MR. MUSUMECI'S
					5TH GRADE CLASS</h2>
				<p>Faster than a speeding spitball, more powerful than a
					playground bully, able to breeze through homework and finish
					nightly chores in a single bound, it's "Master of Mindfulness" here
					to conquer stress, worry, and any trouble that comes your way.</p>
				<!-- <div class="clr-btn-cntr">
						<a class="btnstart btnLast" href="/ie/get-started">START</a>
					  </div> -->
				<div class="col-md-12 mT40 buyImg p0 ">
					<div class="col-md-4 col-sm-4">
						<a
							href="https://www.amazon.com/Master-Mindfulness-Superhero-Times-Stress/dp/1626254648"
							target="_blank"><img
							src="<%=request.getContextPath()%>/NewStyles/images/mom/buy-1.png"
							alt="amazon" class="img-responsive"></a>
					</div>
					<div class="col-md-4 col-sm-4">
						<a href="http://www.indiebound.org/book/9781626254640"
							target="_blank"><img
							src="<%=request.getContextPath()%>/NewStyles/images/mom/buy-2.png"
							alt="indiebound" class="img-responsive"></a>
					</div>
					<div class="col-md-4 col-sm-4">
						<a
							href="http://www.barnesandnoble.com/w/master-of-mindfulness-mr-musumecis-mr-musumecis-5th-grade-class/1122341278"
							target="_blank"><img
							src="<%=request.getContextPath()%>/NewStyles/images/mom/buy-3.png"
							alt="barnesandnoble" class="img-responsive"></a>
					</div>
				</div>


			</div>
		</section>
		<section class="author-outer">
			<div class="container">

				<div class="col-md-12 author-head">
					<h2>Foreword by Jon Kabat-Zinn, PhD</h2>
				</div>
				<div class="col-md-4 author-image col-sm-3">
					<img
						src="<%=request.getContextPath()%>/NewStyles/images/mom/author.png"
						alt="#" class="ïmg-responsive" />

				</div>
				<div class="col-md-8 col-sm-9 author-data">
					<div class="col-md-12 author-introduction">
						<ul class="authorLi">
							<li>Founder of Mindfulness-Based Stress Reduction (MBSR)</li>

							<li>Center for Mindfulness in Medicine, Health Care &
								Society</li>

							<li>Professor of Medicine Emeritus</li>

							<li>University of Massachusetts Medical School</li>
						</ul>
					</div>
					<div class="author-quote">
						<p>“Kudos to the children in Mr. Musumeci's fifth grade class
							for writing this book for their peers. It is obvious from both
							the pictures and the text that mindfulness has been an important
							part of their learning to navigate through difficult times by
							befriending their own minds and recognizing new ways to deal with
							the hard stuff differently. What a useful classroom strategy to
							catalyze real Learning by Learning first how to deal with
							intrusive thoughts and emotions and with outer circumstances at
							home and at school more creatively and wholesomely. Bravo to
							these real heroes – never mind the super.”</p>

					</div>
				</div>
			</div>
		</section>

		<section class="video-mindfulness">

			<div class="container">

				<div class="row">

					<div class="col-md-12 text-center">

						<div class="video-mindfulness-title">

							<h2>Video Gallery</h2>

						</div>

					</div>

					<div class="col-md-12 video-inner-mindfulness">

						<div class="col-md-4">

							<iframe width="350" height="315" style="width: 100%"
								src="https://www.youtube.com/embed/FLxdNlOv22w" frameborder="0"
								allowfullscreen></iframe>

							<p class="text-center">One of The Authors Master of
								Mindfulness</p>

						</div>

						<div class="col-md-4">

							<iframe width="350" height="315" style="width: 100%"
								src="https://www.youtube.com/embed/0NTFrzz2pmo" frameborder="0"
								allowfullscreen></iframe>

							<p class="text-center">Master of Mindfulness: How to Be Your
								Own Superhero in Times of Stress</p>

						</div>

						<div class="col-md-4">

							<iframe width="350" height="315" style="width: 100%"
								src="https://www.youtube.com/embed/NfoR5JI_9Tc" frameborder="0"
								allowfullscreen></iframe>

							<p class="text-center">The Artist and Co-Author behind
								"Master of Mindfulness"</p>

						</div>

					</div>

				</div>

			</div>

		</section>

		<section class="prog-sec-outer">
			<div class="container  sec-program">
				<div class="row">
					<div class="col-md-12 text-center" id="ourPrograms">
						<div class="title-main-mindfulness">
							<h2>TOPICS COVERED IN THE BOOK</h2>
							<p>Do you ever feel angry, disappointed, or stressed out
								about family problems, school, bullies, or trouble with friends?
								If so, mindfulness can help. "Master of Mindfulness" is a unique
								and empowering book written "for" kids "by" kids, with cool
								illustrations and tips that show you how to be confident, get
								focused, stay calm, and tap into your own inner strength so that
								you can be your own superhero no matter what life throws your
								way</p>
						</div>
					</div>


					<div class="col-lg-4 col-sm-4 col-xs-6 learn-mindfulness">
						<img class="img-circle"
							src="<%=request.getContextPath()%>/NewStyles/images/learn-1.png"
							alt="Academic Benefits" width="100" height="100">
						<h2>Mindfulness</h2>
						<p>What is mindfulness?</p>
					</div>
					<!-- /.col-lg-4 -->

					<div class="col-lg-4 col-sm-4 col-xs-6 learn-mindfulness">
						<img class="img-circle"
							src="<%=request.getContextPath()%>/NewStyles/images/learn-2.png"
							alt="Health Benefits" width="100" height="100">
						<h2>Benefits</h2>
						<p>How you know you need mindfulness?</p>
					</div>
					<!-- /.col-lg-4 -->

					<div class="col-lg-4 col-sm-4 col-xs-6 learn-mindfulness">
						<img class="img-circle"
							src="<%=request.getContextPath()%>/NewStyles/images/learn-3.png"
							alt="Overall Benefits" width="100" height="100">
						<h2>Useful Tips</h2>
						<p>Under what circumstances it would be helpful to use
							mindfulness?</p>
					</div>
					<div class="col-lg-4 col-sm-4 col-xs-6 learn-mindfulness">
						<img class="img-circle"
							src="<%=request.getContextPath()%>/NewStyles/images/learn-4.png"
							alt="Daily" width="100" height="100">
						<h2>Neuroscience</h2>
						<p>The brain science that explains why mindfulness works?</p>
					</div>
					<!-- /.col-lg-4 -->
					<div class="col-lg-4 col-sm-4 col-xs-6 learn-mindfulness">
						<img class="img-circle"
							src="<%=request.getContextPath()%>/NewStyles/images/learn-5.png"
							alt="MBSR" width="100" height="100">
						<h2>Practice</h2>
						<p>How to practice mindfulness with the scripts in the book or
							on your own?</p>
					</div>
					<!-- /.col-lg-4 -->

					<div class="col-lg-4 col-sm-4 col-xs-6 learn-mindfulness">
						<img class="img-circle"
							src="<%=request.getContextPath()%>/NewStyles/images/learn-6.png"
							alt="Just Play" width="100" height="100">
						<h2>Be a Hero</h2>
						<p>How to be your own superhero in times of stress?</p>
					</div>
				</div>
			</div>
		</section>

		<section class="book-mindfulness">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<div class="slider-title">
							<h2>Images from the Book</h2>
						</div>
					</div>
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
							<li data-target="#myCarousel" data-slide-to="3"></li>
							<li data-target="#myCarousel" data-slide-to="4"></li>
							<li data-target="#myCarousel" data-slide-to="5"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<div class="col-md-6 col-sm-6">
									<img
										src="<%=request.getContextPath()%>/NewStyles/images/mom/mind-book-1.jpg"
										class="img-responsive" alt="Chania">
								</div>
								<div class="col-md-6 col-sm-6">
									<img
										src="<%=request.getContextPath()%>/NewStyles/images/mom/mind-book-2.jpg"
										class="img-responsive" alt="Chania">
								</div>
							</div>

							<div class="item">
								<div class="col-md-6 col-sm-6">
									<img
										src="<%=request.getContextPath()%>/NewStyles/images/mom/mind-book-3.jpg"
										class="img-responsive" alt="Chania">
								</div>
								<div class="col-md-6 col-sm-6">
									<img
										src="<%=request.getContextPath()%>/NewStyles/images/mom/mind-book-4.jpg"
										class="img-responsive" alt="Chania">
								</div>
							</div>

							<div class="item">
								<div class="col-md-6 col-sm-6">
									<img
										src="<%=request.getContextPath()%>/NewStyles/images/mom/mind-book-5.jpg"
										class="img-responsive" alt="Chania">
								</div>
								<div class="col-md-6 col-sm-6">
									<img
										src="<%=request.getContextPath()%>/NewStyles/images/mom/mind-book-6.jpg"
										class="img-responsive" alt="Chania">
								</div>
							</div>

							<div class="item">
								<div class="col-md-6 col-sm-6">
									<img
										src="<%=request.getContextPath()%>/NewStyles/images/mom/mind-book-7.jpg"
										class="img-responsive" alt="Chania">
								</div>
								<div class="col-md-6 col-sm-6">
									<img
										src="<%=request.getContextPath()%>/NewStyles/images/mom/mind-book-8.jpg"
										class="img-responsive" alt="Chania">
								</div>
							</div>
							<div class="item">
								<div class="col-md-6 col-sm-6">
									<img
										src="<%=request.getContextPath()%>/NewStyles/images/mom/mind-book-9.jpg"
										class="img-responsive" alt="Chania">
								</div>
								<div class="col-md-6 col-sm-6">
									<img
										src="<%=request.getContextPath()%>/NewStyles/images/mom/mind-book-10.jpg"
										class="img-responsive" alt="Chania">
								</div>
							</div>
							<div class="item">
								<div class="col-md-6 col-sm-6">
									<img
										src="<%=request.getContextPath()%>/NewStyles/images/mom/mind-book-11.jpg"
										class="img-responsive" alt="Chania">
								</div>
								<div class="col-md-6 col-sm-6">
									<img
										src="<%=request.getContextPath()%>/NewStyles/images/mom/mind-book-12.jpg"
										class="img-responsive" alt="Chania">
								</div>
							</div>
						</div>
						<!-- <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a> -->
					</div>
				</div>
			</div>
		</section>

		<section class="author-views">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<div class="author-views-title">
							<h2>About the author</h2>
						</div>
					</div>
					<div class="well">
						<div class="author-views-content">
							<div class="tab-pane fade in active" id="tab4">
								<div class="col-md-4 col-sm-6">
									<a href="javascript:;" class="boardouter" role="button"
										data-toggle="modal" data-target="#angelina">
										<div class="board-column">
											<div class="team-img-new user-new-m">
												<div class="laura author-views-image"></div>
											</div>
											<div class="team-name team-name-m">Laurie Grossman</div>
											<!-- <div class="team-proff">Grossman</div> -->
										</div>
									</a>
								</div>
								<div class="col-md-4 col-sm-6">
									<a href="" class="boardouter" role="button" data-toggle="modal"
										data-target="#member2">
										<div class="board-column">
											<div class="team-img-new user-new-m">

												<div class="Angelina author-views-image"></div>
											</div>
											<div class="team-name team-name-m">Angelina Alvarez</div>

										</div>
									</a>
								</div>
								<div class="col-md-4 col-sm-6 musumeci">
									<a href="" class="boardouter" role="button" data-toggle="modal"
										data-target="#member3">
										<div class="board-column">
											<div class="team-img-new user-new-m">
												<div class="mason author-views-image"></div>
											</div>
											<div class="team-name team-name-m">Mr. Musumeci</div>
										</div>
									</a>
								</div>

								<!-- Modal Area -->
								<!-- 1st modal -->
								<div class="modal fade" id="angelina" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel">
									<div class="modal-dialog" role="document">
										<div class="modal-content modal-contentCustom">
											<div class="modal-header modal-headerCustom">
												<button type="button" class="close closeCustom"
													data-dismiss="modal" aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												<h4 class="modal-title" id="myModalLabel">Laurie
													Grossman</h4>
											</div>
											<!-- <div class="col-md-12">
												<strong>Co-Founder</strong>
											</div> -->
											<div class="modal-body board-member-details">
												<p>Laurie Grossman, one of the founders of the
													mindfulness in education movement, has been an activist
													since 1975. She believes that mindfulness in schools is the
													tool most likely to help achieve social justice. Over the
													last two decades, she started two innovative programs: one
													that created partnerships between private and public
													schools, and one that brought mindfulness into schools. In
													2007, as part of Park Day School’s Community Outreach
													Program, she and two colleagues launched a pilot program of
													mindfulness in an Oakland, CA, elementary school that was
													covered in The New York Times and on NBC. Grossman is
													cofounder of Mindful Schools, now one of the largest
													mindfulness-in-education programs in the world. She
													currently works with Inner Explorer, an organization
													focused on bringing daily mindfulness practices into
													schools to improve educational outcomes and the well-being
													of children and teachers. She is passionate about Inner
													Explorer because the organization has made mindfulness
													scalable, providing easy and immediate access to every K–12
													classroom, anywhere, anytime.</p>
											</div>
										</div>
									</div>
								</div>
								<!-- End 1st modal -->
								<!-- 2ed modal -->
								<div class="modal fade" id="member2" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel">
									<div class="modal-dialog" role="document">
										<div class="modal-content modal-contentCustom">
											<div class="modal-header modal-headerCustom">
												<button type="button" class="close closeCustom"
													data-dismiss="modal" aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												<h4 class="modal-title" id="myModalLabel">Angelina
													Alvarez</h4>
											</div>

											<div class="modal-body board-member-details">
												<p>Designer Angelina Alvarez holds a degree in
													photography from the San Francisco Art Institute. She
													believes that every child should have the opportunity to
													grow up with a foundation of mindfulness practice. Alvarez
													works with Mindful Life Project in Richmond, CA, a
													nonprofit organization that teaches mindfulness, yoga,
													therapeutic art, and hip-hop/performing arts to elementary
													school students in underserved communities.Alvarez works
													with Mindful Life Project in Richmond, CA, a nonprofit
													organization that teaches mindfulness, yoga, therapeutic
													art, and hip-hop/performing arts to elementary school
													students in underserved communities.Alvarez works with
													Mindful Life Project in Richmond, CA, a nonprofit
													organization that teaches mindfulness, yoga, therapeutic
													art, and hip-hop/performing arts to elementary school
													students in underserved communities.</p>
											</div>
										</div>
									</div>
								</div>
								<!-- End 2ed modal -->
								<!-- 3rd modal -->
								<div class="modal fade" id="member3" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel">
									<div class="modal-dialog" role="document">
										<div class="modal-content modal-contentCustom">
											<div class="modal-header modal-headerCustom">
												<button type="button" class="close closeCustom"
													data-dismiss="modal" aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												<h4 class="modal-title" id="myModalLabel">Mr. Musumeci</h4>
											</div>

											<div class="modal-body board-member-details">
												<p>Mr. Musumeci has spent two decades teaching, caring,
													and advocating for children in New York, NY, and Oakland,
													CA. As teacher at Reach Academy in East Oakland since 2009,
													he has been a proponent of mindfulness, and was delighted
													when one of his students suggested the class create a
													mindfulness superhero. His class was comprised of
													twenty-six wonderful, lively, and smart fifth graders who
													love mindfulness. Reach Academy is a transitional K–5
													school where the vast majority of students are on free and
													reduced lunch, and 99 percent of the students are children
													of color. Mr. Musumeci’s 5th Grade Class is excited to
													publish a book of their own about mindfulness for other
													kids because they have benefitted so much from the
													practice. His class was comprised of twenty-six wonderful,
													lively, and smart fifth graders who love mindfulness. Reach
													Academy is a transitional K–5 school where the vast
													majority of students are on free and reduced lunch, and 99
													percent of the students are children of color. Mr.
													Musumeci’s 5th Grade Class is excited to publish a book of
													their own about mindfulness for other kids.</p>
											</div>
										</div>
									</div>
								</div>
								<!-- End 3rd modal -->
							</div>
						</div>
					</div>
		</section>


		<section class="picture-gallery-outer">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<div class="picture-gallery-title">
							<h2>Picture Gallery</h2>
						</div>
						<div
							class="btn-pref btn-group btn-group-justified btn-group-lg gallery-tab-outer"
							role="group">
							<div class="btn-group gallery-tab-btn" role="group">
								<button id="stars" class="btn btn-default activegrn "
									type="button" href="#tab1" data-toggle="tab">
									<div class="gallery-button-text">Making of the Book</div>
								</button>
							</div>
							<div class="btn-group gallery-tab-btn" role="group">
								<button id="favourites" class="btn btn-default" type="button"
									href="#tab2" data-toggle="tab">
									<div class="gallery-button-text">Lauries's Africa Trip</div>
								</button>
							</div>
							<!-- 	<div class="btn-group gallery-tab-btn" role="group">
							<button id="following" class="btn btn-default" type="button" href="#tab3" data-toggle="tab">
							  <div class="gallery-button-text">More to Come</div>
							</button>
						</div> -->
						</div>
					</div>
					<div id="tab1">
						<div class="col-md-4 col-sm-6 gallery-photo">
							<img
								src="<%=request.getContextPath()%>/NewStyles/images/making-book-thumb-1.jpg"
								alt="#" class="img-responsive" />
						</div>
						<div class="col-md-4 col-sm-6 gallery-photo">
							<img
								src="<%=request.getContextPath()%>/NewStyles/images/making-book-thumb-2.jpg"
								alt="#" class="img-responsive" />
						</div>
						<div class="col-md-4 col-sm-6 gallery-photo">
							<img
								src="<%=request.getContextPath()%>/NewStyles/images/making-book-thumb-3.jpg"
								alt="#" class="img-responsive" />
						</div>
						<div class="col-md-4 col-sm-6 gallery-photo">
							<img
								src="<%=request.getContextPath()%>/NewStyles/images/making-book-thumb-4.jpg"
								alt="#" class="img-responsive" />
						</div>
						<div class="col-md-4 col-sm-6 gallery-photo">
							<img
								src="<%=request.getContextPath()%>/NewStyles/images/making-book-thumb-5.jpg"
								alt="#" class="img-responsive" />
						</div>
						<div class="col-md-4 col-sm-6 gallery-photo">
							<img
								src="<%=request.getContextPath()%>/NewStyles/images/making-book-thumb-6.jpg"
								alt="#" class="img-responsive" />
						</div>
					</div>

					<div id="tab2">
						<div class="col-md-4 col-sm-6 gallery-photo">
							<img
								src="<%=request.getContextPath()%>/NewStyles/images/mom/Amboseli-principal.jpg"
								alt="#" class="img-responsive" />
						</div>
						<div class="col-md-4 col-sm-6 gallery-photo">
							<img
								src="<%=request.getContextPath()%>/NewStyles/images/mom/Kenyan-Middle.jpg"
								alt="#" class="img-responsive" />
						</div>
						<div class="col-md-4 col-sm-6 gallery-photo">
							<img
								src="<%=request.getContextPath()%>/NewStyles/images/mom/kenya-principal.jpg"
								alt="#" class="img-responsive" />
						</div>
						<div class="col-md-4 col-sm-6 gallery-photo">
							<img
								src="<%=request.getContextPath()%>/NewStyles/images/mom/middle-school-kids.jpg"
								alt="#" class="img-responsive" />
						</div>
						<div class="col-md-4 col-sm-6 gallery-photo">
							<img
								src="<%=request.getContextPath()%>/NewStyles/images/mom/Principal-Ann-Tayiai.jpg"
								alt="#" class="img-responsive" />
						</div>
					</div>

					<div id="tab3">
						<div class="col-md-4 col-sm-6 col-xs-6 gallery-photo">
							<img
								src="<%=request.getContextPath()%>/NewStyles/images/making-book-thumb-4.jpg"
								alt="#" class="img-responsive" />
						</div>
						<div class="col-md-4 col-sm-6 col-xs-6 gallery-photo">
							<img
								src="<%=request.getContextPath()%>/NewStyles/images/making-book-thumb-5.jpg"
								alt="#" class="img-responsive" />
						</div>
						<div class="col-md-4 col-sm-6 col-xs-6 gallery-photo">
							<img
								src="<%=request.getContextPath()%>/NewStyles/images/making-book-thumb-1.jpg"
								alt="#" class="img-responsive" />
						</div>
						<div class="col-md-4 col-sm-6 col-xs-6 gallery-photo">
							<img
								src="<%=request.getContextPath()%>/NewStyles/images/making-book-thumb-2.jpg"
								alt="#" class="img-responsive" />
						</div>
						<div class="col-md-4 col-sm-6 col-xs-6 gallery-photo">
							<img
								src="<%=request.getContextPath()%>/NewStyles/images/making-book-thumb-4.jpg"
								alt="#" class="img-responsive" />
						</div>
					</div>
				</div>
			</div>
		</section>



		<section class="reviews-mindfulness">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<div class="reviews-mindfulness-title">
							<h2>Editorial Reviews</h2>
						</div>
					</div>

					<div class="container">
						<div class="row">
							<div class="span12">
								<div class="">
									<div id="myCarousel12" class="carousel slide">

										<ol class="carousel-indicators">
											<li data-target="#myCarousel12" data-slide-to="0"
												class="active"></li>
											<li data-target="#myCarousel12" data-slide-to="1"></li>
											<li data-target="#myCarousel12" data-slide-to="2"></li>
											<li data-target="#myCarousel12" data-slide-to="3"></li>
										</ol>

										<!-- Carousel items -->
										<div class="carousel-inner">

											<div class="item active">
												<div class="row-fluid">

													<div class="col-md-4 col-sm-4">
														<div class="reviews-outer">
															<img
																src="<%=request.getContextPath()%>/NewStyles/images/review-Tim-Ryan.png"
																class="img-responsive">
															<div class="clear5"></div>
															<div class="reviews-text">
																<h2>Tim Ryan</h2>
																<p>Slowly but surely, a quiet revolution is taking
																	place across the county. More and more folks are
																	turning to the practice of mindfulness to cope with the
																	stresses of modern life...</p>
																<a href="javascript:;" role="button" data-toggle="modal"
																	data-target="#review1"> <span>Read More</span>
																</a>
															</div>
														</div>
													</div>
													<div class="col-md-4 col-sm-4">
														<div class="reviews-outer">
															<img
																src="<%=request.getContextPath()%>/NewStyles/images/review-Gina.png"
																class="img-responsive">
															<div class="clear5"></div>
															<div class="reviews-text">
																<h2>Gina M. Biegel</h2>
																<p>Given the landscape of today’s teen’s mental and
																	physical health difficulties, the earlier you can plant
																	the seeds of mindfulness the stronger...</p>
																<a href="javascript:;" role="button" data-toggle="modal"
																	data-target="#review2"> <span>Read More</span>
																</a>
															</div>
														</div>
													</div>
													<div class="col-md-4 col-sm-4 ">
														<div class="reviews-outer">
															<img
																src="<%=request.getContextPath()%>/NewStyles/images/review-Linda.png"
																class="img-responsive">
															<div class="clear5"></div>
															<div class="reviews-text">
																<h2>Linda Graham</h2>
																<p>Master of Mindfulness brings such joy to the
																	reader—students, teachers, parents—by showing us the
																	power of mindfulness to help young people cope...</p>
																<a href="javascript:;" role="button" data-toggle="modal"
																	data-target="#review3"> <span>Read More</span>
																</a>
															</div>
														</div>
													</div>

												</div>
												<!--/row-fluid-->
											</div>
											<!--/item-->

											<div class="item">
												<div class="row-fluid">
													<div class="col-md-4 col-sm-4">
														<div class="reviews-outer">
															<img
																src="<%=request.getContextPath()%>/NewStyles/images/review-Majorie.png"
																class="img-responsive">
															<div class="clear5"></div>
															<div class="reviews-text">
																<h2>Marjorie Chaset</h2>
																<p>Slowly but surely, a quiet revolution is taking
																	place across the county. More and more folks are
																	turning to the practice of mindfulness to cope with the
																	stresses of modern life...</p>
																<a href="javascript:;" role="button" data-toggle="modal"
																	data-target="#review4"> <span>Read More</span>
																</a>
															</div>
														</div>
													</div>
													<div class="col-md-4 col-sm-4">
														<div class="reviews-outer">
															<img
																src="<%=request.getContextPath()%>/NewStyles/images/review-Daniel.png"
																class="img-responsive">
															<div class="clear5"></div>
															<div class="reviews-text">
																<h2>Daniel J. Siegel</h2>
																<p>Given the landscape of today’s teen’s mental and
																	physical health difficulties, the earlier you can plant
																	the seeds of mindfulness the stronger...</p>
																<a href="javascript:;" role="button" data-toggle="modal"
																	data-target="#review5"> <span>Read More</span>
																</a>
															</div>
														</div>
													</div>
													<div class="col-md-4 col-sm-4">
														<div class="reviews-outer">
															<img
																src="<%=request.getContextPath()%>/NewStyles/images/review-sarastone.png"
																class="img-responsive">
															<div class="clear5"></div>
															<div class="reviews-text">
																<h2>Sara Stone</h2>
																<p>Master of Mindfulness brings such joy to the
																	reader—students, teachers, parents—by showing us the
																	power of mindfulness to help young people cope...</p>
																<a href="javascript:;" role="button" data-toggle="modal"
																	data-target="#review6"> <span>Read More</span>
																</a>
															</div>
														</div>
													</div>

												</div>
												<!--/row-fluid-->
											</div>
											<!--/item-->

											<div class="item">
												<div class="row-fluid">

													<div class="col-md-4 col-sm-4">
														<div class="reviews-outer">
															<img
																src="<%=request.getContextPath()%>/NewStyles/images/review-Sam-piha.png"
																class="img-responsive">
															<div class="clear5"></div>
															<div class="reviews-text">
																<h2>Sam Piha</h2>
																<p>The latest research in education and youth
																	development talks a lot about the importance of
																	character building, grit, social-emotional learning,
																	non-cognitive skills...</p>
																<a href="javascript:;" role="button" data-toggle="modal"
																	data-target="#review7"> <span>Read More</span>
																</a>
															</div>
														</div>
													</div>
													<div class="col-md-4 col-sm-4">
														<div class="reviews-outer">
															<img
																src="<%=request.getContextPath()%>/NewStyles/images/review-scott-suyan.png"
																class="img-responsive">
															<div class="clear5"></div>
															<div class="reviews-text">
																<h2>Scott Duyan</h2>
																<p>Master of Mindfulness is a child-centric and
																	beginner’s introduction to the practice of mindfulness.
																	Written by fifth graders with a little help from their
																	...</p>
																<a href="javascript:;" role="button" data-toggle="modal"
																	data-target="#review8"> <span>Read More</span>
																</a>
															</div>
														</div>
													</div>
													<div class="col-md-4 col-sm-4">
														<div class="reviews-outer">
															<img
																src="<%=request.getContextPath()%>/NewStyles/images/review-Daniel-Rech.png"
																class="img-responsive">
															<div class="clear5"></div>
															<div class="reviews-text">
																<h2>Daniel Rechtschaffen</h2>
																<p>This wonderful book is full of mindful wisdom
																	taught from students who have used these profound
																	practices themselves and are now teaching others...</p>
																<a href="javascript:;" role="button" data-toggle="modal"
																	data-target="#review9"> <span>Read More</span>
																</a>
															</div>
														</div>
													</div>
												</div>
												<!--/row-fluid-->
											</div>
											<!--/item-->

											<div class="item">
												<div class="row-fluid">

													<div class="col-md-4 col-sm-4">
														<div class="reviews-outer">
															<img
																src="<%=request.getContextPath()%>/NewStyles/images/review-Steven-Hickman.png"
																class="img-responsive">
															<div class="clear5"></div>
															<div class="reviews-text">
																<h2>Steven D. Hickman</h2>
																<p>A delightful and masterful way to meet kids where
																	they are when it comes to mindfulness. This is a book
																	that truly honors ‘inner wisdom’ in a profound ...</p>
																<a href="javascript:;" role="button" data-toggle="modal"
																	data-target="#review10"> <span>Read More</span>
																</a>
															</div>
														</div>
													</div>


												</div>
												<!--/row-fluid-->
											</div>
											<!--/item-->


										</div>
										<!--/carousel-inner-->

										<!-- <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
					                <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a> -->
									</div>
									<!--/myCarousel-->

								</div>
								<!--/well-->
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Reviews Section Model-->
		<!-- 1 modal -->
		<div class="modal fade" id="review1" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content modal-contentCustom">
					<div class="modal-header modal-headerCustom">
						<button type="button" class="close closeCustom"
							data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Tim Ryan</h4>
					</div>

					<div class="modal-body board-member-details">
						<img
							src="<%=request.getContextPath()%>/NewStyles/images/review-Tim-Ryan.png"
							alt="#" class="img-responsive" />
						<p>“Slowly but surely, a quiet revolution is taking place
							across the county. More and more folks are turning to the
							practice of mindfulness to cope with the stresses of modern life.
							Time and time again we’ve seen mindfulness deployed with great
							success in boardrooms, hospitals, and classrooms. But, as this
							book illustrates, mindfulness isn’t just for the adults—students
							too, no matter the age, can benefit greatly from it. This proven
							practice can help our kids face a world of challenges with
							clarity and focus. The more our students know the ins and outs of
							how their own minds work, the better prepared they’ll be to lead
							a fulfilling and productive life. I am extremely heartened to see
							Mr. Musumeci’s fifth-grade class taking on this project.”</p>
					</div>
				</div>
			</div>
		</div>
		<!-- End 1 modal -->
		<!-- 2 modal -->
		<div class="modal fade" id="review2" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content modal-contentCustom">
					<div class="modal-header modal-headerCustom">
						<button type="button" class="close closeCustom"
							data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Gina M. Biegel</h4>
					</div>

					<div class="modal-body board-member-details">
						<img
							src="<%=request.getContextPath()%>/NewStyles/images/review-Gina.png"
							alt="#" class="img-responsive" />
						<p>“Given the landscape of today’s teen’s mental and physical
							health difficulties, the earlier you can plant the seeds of
							mindfulness the stronger the roots become and the sprouts more
							prodigious. After working with thousands of teens in education
							and therapy, I believe that if they had been offered these skills
							earlier, they would have fared better and had stronger roots from
							which to approach and manage the landscape of today’s adolescent.
							Master of Mindfulness gets it! It gets that these skills know no
							age boundaries, class boundaries, or race boundaries. Mindfulness
							helps children to fare well in this growing, fast-paced, and
							technologically stimulated lifescape that we call the 21st
							century. Bravo Grossman, Alvarez, Musumeci, and most prominently
							the 5th grade children!”</p>
					</div>
				</div>
			</div>
		</div>
		<!-- End 2 modal -->
		<!-- 3 modal -->
		<div class="modal fade" id="review3" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabe1">
			<div class="modal-dialog" role="document">
				<div class="modal-content modal-contentCustom">
					<div class="modal-header modal-headerCustom">
						<button type="button" class="close closeCustom"
							data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabe1">Linda Graham</h4>
					</div>

					<div class="modal-body board-member-details">
						<img
							src="<%=request.getContextPath()%>/NewStyles/images/review-linda.png"
							alt="#" class="img-responsive" />
						<p>“Master of Mindfulness brings such joy to the
							reader—students, teachers, parents—by showing us the power of
							mindfulness to help young people cope with their own thoughts,
							their peers, their world—more resiliently, more authentically,
							more creatively. These mindfulness-based tools mature students’
							capacities to skillfully navigate their increasingly complex
							world as adults. A true gift.”</p>
					</div>
				</div>
			</div>
		</div>
		<!-- End 3 modal -->
		<!-- 4 modal -->
		<div class="modal fade" id="review4" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabe1">
			<div class="modal-dialog" role="document">
				<div class="modal-content modal-contentCustom">
					<div class="modal-header modal-headerCustom">
						<button type="button" class="close closeCustom"
							data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabe1">Marjorie Chaset</h4>
					</div>

					<div class="modal-body board-member-details">
						<img
							src="<%=request.getContextPath()%>/NewStyles/images/review-Majorie.png"
							alt="#" class="img-responsive" />
						<p>“Safety is an embodied place that lives inside our physical
							self. Learning to experience safety is the first step in healing
							the behavioral and emotional effects of trauma and profoundly
							overwhelming life experiences. If we want to teach kids how to
							take charge of their lives, how to make wise choices, how to be
							empowered to realize their dreams, we first need to teach them
							how to feel safe. The transformative practice that the teachers
							and students describe in Master of Mindfulness is the cornerstone
							of building an internal safe place. Give a copy of this book to
							every kid you know!"</p>
					</div>
				</div>
			</div>
		</div>
		<!-- End 4 modal -->
		<!-- 5 modal -->
		<div class="modal fade" id="review5" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabe1">
			<div class="modal-dialog" role="document">
				<div class="modal-content modal-contentCustom">
					<div class="modal-header modal-headerCustom">
						<button type="button" class="close closeCustom"
							data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabe1">Daniel J. Siegel</h4>
					</div>

					<div class="modal-body board-member-details">
						<img
							src="<%=request.getContextPath()%>/NewStyles/images/review-Daniel.png"
							alt="#" class="img-responsive" />
						<p>“Imagine being able to feel clear and calm, even when
							things get tough. That’s what this wonderful book can teach you
							right now—how to become a Master of Mindfulness! Kids, teens, and
							even adults can all strengthen their minds by learning how to
							focus attention in an open way on what is happening right now.
							Get ready and enjoy!”</p>
					</div>
				</div>
			</div>
		</div>
		<!-- End 5 modal -->
		<!-- 6 modal -->
		<div class="modal fade" id="review6" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabe1">
			<div class="modal-dialog" role="document">
				<div class="modal-content modal-contentCustom">
					<div class="modal-header modal-headerCustom">
						<button type="button" class="close closeCustom"
							data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabe1">Sara Stone</h4>
					</div>

					<div class="modal-body board-member-details">
						<img
							src="<%=request.getContextPath()%>/NewStyles/images/review-sarastone.png"
							alt="#" class="img-responsive" />
						<p>“As a leader in a large urban district, I have seen
							firsthand the positive impact of students having mindfulness
							experiences throughout the day. I have witnessed students, after
							learning the tools of mindfulness, stop themselves in a moment of
							stress, and practice breathing and visualizing with great
							success. This book, Master of Mindfulness, written by students
							for students, helps children understand how to use the tools of
							mindfulness on a daily basis. I highly recommend investing in
							this practice each and every day with our students so that they
							can be resilient and successful in life.”</p>
					</div>
				</div>
			</div>
		</div>
		<!-- End 6 modal -->
		<!-- 7 modal -->
		<div class="modal fade" id="review7" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabe1">
			<div class="modal-dialog" role="document">
				<div class="modal-content modal-contentCustom">
					<div class="modal-header modal-headerCustom">
						<button type="button" class="close closeCustom"
							data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabe1">Sam Piha</h4>
					</div>

					<div class="modal-body board-member-details">
						<img
							src="<%=request.getContextPath()%>/NewStyles/images/review-Sam-piha.png"
							alt="#" class="img-responsive" />
						<p>“The latest research in education and youth development
							talks a lot about the importance of character building, grit,
							social-emotional learning, non-cognitive skills, etc., to prepare
							young people for success in school, work, and life. This research
							names important skills such as awareness of one’s feelings,
							empathy, and the ability to control one’s behavior. But how do
							you promote these skills? In our work supporting the quality of
							expanded learning programs, there is no better practice than
							teaching young people the skills of mindfulness. We believe that
							this is an important book to build awareness about the power of
							mindfulness programs for schools and youth program leaders.”</p>
					</div>
				</div>
			</div>
		</div>
		<!-- End 7 modal -->
		<!-- 8 modal -->
		<div class="modal fade" id="review8" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabe1">
			<div class="modal-dialog" role="document">
				<div class="modal-content modal-contentCustom">
					<div class="modal-header modal-headerCustom">
						<button type="button" class="close closeCustom"
							data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabe1">Scott Duyan</h4>
					</div>

					<div class="modal-body board-member-details">
						<img src="images/review-scott-suyan.png" alt="#"
							class="img-responsive" />
						<p>“Master of Mindfulness is a child-centric and beginner’s
							introduction to the practice of mindfulness. Written by fifth
							graders with a little help from their mindful adult friends,
							Master of Mindfulness links a child's need to be mindful with
							practical applications for how a mindfulness practice might be
							used in the daily life of a child. How can mindfulness help in
							dealing with the powerful emotions that can sometimes overwhelm
							children? How can mindfulness help a young athlete or musician?
							How can mindfulness help a child deal with a sibling during a
							disagreement? And more. Full of funny illustrations and photos of
							children, this book would be helpful to any adult or teacher
							hoping to introduce mindfulness to children in a language that
							they understand and can use.”</p>
					</div>
				</div>
			</div>
		</div>
		<!-- End 8 modal -->
		<!-- 9 modal -->
		<div class="modal fade" id="review9" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabe1">
			<div class="modal-dialog" role="document">
				<div class="modal-content modal-contentCustom">
					<div class="modal-header modal-headerCustom">
						<button type="button" class="close closeCustom"
							data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabe1">Daniel
							Rechtschaffen</h4>
					</div>

					<div class="modal-body board-member-details">
						<img
							src="<%=request.getContextPath()%>/NewStyles/images/review-Daniel-Rech.png"
							alt="#" class="img-responsive" />
						<p>“This wonderful book is full of mindful wisdom taught from
							students who have used these profound practices themselves and
							are now teaching others. These simple and profound lessons will
							help youth to find balance, happiness, and lifelong mindfulness
							tools.”</p>
					</div>
				</div>
			</div>
		</div>
		<!-- End 9 modal -->
		<!-- 10 modal -->
		<div class="modal fade" id="review10" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabe1">
			<div class="modal-dialog" role="document">
				<div class="modal-content modal-contentCustom">
					<div class="modal-header modal-headerCustom">
						<button type="button" class="close closeCustom"
							data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabe1">Steven D. Hickman</h4>
					</div>

					<div class="modal-body board-member-details">
						<img
							src="<%=request.getContextPath()%>/NewStyles/images/review-Steven-Hickman.png"
							alt="#" class="img-responsive" />
						<p>“A delightful and masterful way to meet kids where they are
							when it comes to mindfulness. This is a book that truly honors
							‘inner wisdom’ in a profound way by trusting that those who
							practice mindfulness (whether they are kids or adults) know the
							topic best. Using the defining theme of being our own
							‘mindfulness superhero,’ Grossman, Alvarez, and the fifth graders
							in Mr. Musumeci’s class have created an engaging and enlightening
							resource for everyone. I’m going to start calling on my own shark
							fin regularly from now on!”</p>
					</div>
				</div>
			</div>
		</div>
		<!-- End 10 modal -->
		<%-- <section class="video-mindfulness">
       	  <div class="container">
       	      <div class="row">
       	         <div class="col-md-12 text-center">
					  <div class="video-mindfulness-title">
					      <h2>Video Gallery</h2>
					  </div>
			     </div>
			     <div class="col-md-12 video-inner-mindfulness">
			        <div class="col-md-4 col-sm-6">
                       <iframe width="350" height="315" style="width:100%" src="https://www.youtube.com/embed/FLxdNlOv22w" frameborder="0" allowfullscreen></iframe>
                    </div>
                    <div class="col-md-4 col-sm-6">
                       <iframe width="350" height="315" style="width:100%" src="https://www.youtube.com/embed/0NTFrzz2pmo" frameborder="0" allowfullscreen></iframe>
                    </div>
                    <div class="col-md-4 col-sm-6">
                       <iframe width="350" height="315" style="width:100%" src="https://www.youtube.com/embed/NfoR5JI_9Tc" frameborder="0" allowfullscreen></iframe>
                    </div>
                 </div>
			 </div>
		  </div>
	  </section> --%>


		<section class="contact-us-mindfulness">
			<div class="container">
				<div class="row">
					<form class="contact-form" method="post" action="contactUs">
						<div class="col-md-12 text-center">
							<div class="contact-us-mindfulness-title">
								<h2>Contact Laurie</h2>
							</div>
						</div>
						<div class="col-md-8 p0 col-md-offset-2">
							<div class="form-div">

								<div class="col-md-6">
									<div class="form-group">
										<input type="text" class="form-control" id="fname"
											placeholder="First Name" name="fname" required>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" class="form-control" id="lname"
											placeholder="Last Name" name="lname" required>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" class="form-control" name="email"
											id="email" placeholder="Email" required>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" class="form-control" id="mobile"
											placeholder="Mobile" name="Mobile" required>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<textarea class="form-control" rows="3" placeholder="Message"
											name="Message"></textarea>
									</div>
								</div>

							</div>
						</div>
						<div class="col-md-12 p0 text-center">
							<button class="contact-mindfulness-button" type="submit">Submit</button>
						</div>
					</form>
				</div>
			</div>
		</section>

		<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
			type="text/javascript"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
		<footer>
			<div class="container">
				<div class="footerLeft">
					<p>Copyright © 2016 Inner Explorer</p>
				</div>
				<div class="footerRight">
					<ul>
						<li><a href="#privacy" class="fancybox">Privacy Policy</a></li>
						<li><a href="#terms" class="fancybox">Terms & Conditions</a></li>
					</ul>
				</div>
			</div>
		</footer>

		<script type="text/javascript">
			jQuery(document).ready
			function showPayment(selectValue) {

				if (selectValue == 1) {
					$('#second').removeClass('active');
					$('#first').addClass('active');

					var zeroSelectImg = '<img alt="" src="NewStyles/images/tick-mark.png" id="zeroSelect">';
					$("#zeroSelectDiv").html(zeroSelectImg);
					$("#paymentSelectDiv").html('');
					$("#paymentSelect").prop('src', '');
					$("#zeroSelectDiv").addClass('launch-tick-mark');
					$("#paymentSelectDiv").removeClass('launch-tick-mark');
					$("#parentType").val(1);
					var parentAmountThreeMonth = '10';
					$("#parentAmount").val(parentAmountThreeMonth);
					$("#paymentMesaage").text(
							"Get Access to Mindful Practice by Paying $"
									+ parentAmountThreeMonth);

					$("#payment_options").show();
					$("#parentForm").show();

					$("#captcha").show();
					$("#submitButton").show();
				} else if (selectValue == 2) {
					$('#first').removeClass('active');
					$('#second').addClass('active');
					$("#zeroSelect").prop('src', '');
					$("#zeroSelectDiv").html('');
					var paymentSelectImg = '<img alt="" src="NewStyles/images/tick-mark.png" id="paymentSelect">';
					$("#paymentSelectDiv").html(paymentSelectImg);

					$("#paymentSelectDiv").addClass('launch-tick-mark');
					$("#zeroSelectDiv").removeClass('launch-tick-mark');
					$("#parentType").val(2);
					var parentAmount = '30';
					$("#parentAmount").val(parentAmount);
					$("#paymentMesaage").text(
							"Get Access to Mindful Practice by Paying $"
									+ parentAmount);
					$("#payment_options").show();
					$("#parentForm").show();
					$("#captcha").show();
					$("#submitButton").show();

				}

			}
		</script>

		<script>
			$(document).ready(function() {

				$("#stars").click(function() {
					$("#tab1").show(500);
					$("#tab2").hide(500);
					$("#stars").addClass('activegrn');
					$("#favourites").removeClass('activegrn');
				});
				$("#favourites").click(function() {
					$("#tab2").show(500);
					$("#tab1").hide(500);
					$("#favourites").addClass('activegrn');
					$("#stars").removeClass('activegrn');
				});
				// $("#following").click(function(){
				//     $("#tab3").show();
				//     $("#tab1").hide();
				//     $("#tab2").hide();
				// });
			});
		</script>

		<script type="text/javascript">
			$(document).ready(function() {
				$("#buyPlan").click(function() {
					$('html,body').animate({
						scrollTop : $("#secTw").offset().top
					}, 'slow');
				});
			});
		</script>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#myCarousel12').carousel({
					interval : 3000
				})
			});
		</script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="includes/head.jsp">
	<jsp:param value="Home | Airline" name="title" />
</jsp:include>
</head>
<body>

	<div id="wrapper">
		<!-- start header -->
		<jsp:include page="includes/menu.jsp"></jsp:include>
		<!-- end header -->

		<section id="featured" class="bg"> <!-- start slider --> <!-- start slider -->
		<div class="container">
			<div class="row">
				<div class="col-xs-0 col-sm-6 col-lg-6">
					<!-- Slider -->
					<div id="main-slider" class="main-slider flexslider">
						<ul class="slides">
							<li><img src="styles/img/slides/flexslider/1.jpg" alt="" />
								<div class="flex-caption">
									<h3>Flight</h3>
									<p>Duis fermentum auctor ligula ac malesuada. Mauris et
										metus odio, in pulvinar urna</p>
									<a href="#" class="btn btn-theme">Learn More</a>
								</div></li>
							<li><img src="styles/img/slides/flexslider/2.jpg" alt="" />
								<div class="flex-caption">
									<h3>Professional</h3>
									<p>Sodales neque vitae justo sollicitudin aliquet sit amet
										diam curabitur sed fermentum.</p>
									<a href="#" class="btn btn-theme">Learn More</a>
								</div></li>
							<li><img src="styles/img/slides/flexslider/3.jpg" alt="" />
								<div class="flex-caption">
									<h3>Ha Long Bay</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit
										donec mer lacinia.</p>
									<a href="#" class="btn btn-theme">Learn More</a>
								</div></li>
						</ul>


					</div>
					<!-- end slider -->

				</div>

				<div class="col-xs-12 col-sm-6 col-lg-6">
					<div class="row">
						<div class="col-xs-12">
							<div hidden class="alert alert-info" id="view-error">
							  <strong>Info!</strong>Indicates a neutral informative change or action.
							</div>
							
							<form role="form" class="register-form" method="post" onsubmit="return onSubmitSearch()"
								action="search">
								<h2>
									Please Sign Up <small>It's free and always will be.</small>
								</h2>
								<hr class="colorgraph">
								<div class="row">

									<div class="col-xs-6">
										<div class="form-group">
											<input type="radio" name="radio" value="1" id="radio-one">
											Một chiều
										</div>
									</div>
									<div class="col-xs-6">
										<div class="form-group">
											<input type="radio" name="radio" value="2" id="radio-two"
												checked> Khứ hồi
										</div>
									</div>


								</div>
								<div class="row">
									<div class="col-xs-12 col-sm-6 col-md-6">
										<div class="form-group">
											<class class="form-group select-custom"> 
											<select
												class="form-control" id="list-from" name="locationFrom">
												<option data-tokens="0">From</option>
												<c:forEach var="dataFrom" items="${listFrom }">
													<option data-tokens="${dataFrom }">${dataFrom }</option>
												</c:forEach>
											</select> </class>
										</div>



									</div>

									<div class="col-xs-12 col-sm-6 col-md-6">
										<div class="form-group">
											<div class='input-group date' id='datetimepicker2'>
												<input type='text' class="form-control"
													placeholder="Ngày đi" id="date-go" name="dateFrom" /> <span
													class="input-group-addon"> <span
													class="glyphicon glyphicon-calendar"></span>
												</span>
											</div>
										</div>
									</div>


								</div>


								<div class="row">
									<div class="col-xs-12 col-sm-6 col-md-6">
										<div class="form-group">
											<class class="form-group select-custom"> <select
												class="form-control" id="list-to" name="locationTo">
												<option data-tokens="0">To</option>
											</select> </class>
										</div>


									</div>

									<div class="col-xs-12 col-sm-6 col-md-6">
										<div class="form-group">
											<div class='input-group date' id='datetimepicker3'>
												<input type='text' class="form-control"
													placeholder="Ngày về" id="input-date-back" name="dateTo" />
												<span class="input-group-addon"> <span
													class="glyphicon glyphicon-calendar"></span>
												</span>
											</div>
										</div>
									</div>


								</div>


								<div class="row">
									<div class="col-xs-6">

										<div class="form-group">
											<div class="input-group input-group">
												<span class="input-group-addon"><span
													class="glyphicon glyphicon-user"></span></span> <input
													type="number" class="form-control" value="1"
													placeholder="Người lớn" min="1" max="5" name="people" id="input-people">
											</div>
										</div>
									</div>

									<div class="col-xs-6">
										<div class="form-group">
											<div class="input-group input-group">
												<span class="input-group-addon"><span
													class="glyphicon glyphicon-plus"></span></span> <input
													type="number" class="form-control" placeholder="Trẻ em"
													min="1" max="5" name="children" id="input-children">
											</div>
										</div>
									</div>


								</div>


								<div class="row">
									<div class="col-xs-4 col-sm-3 col-md-3">
										<span class="button-checkbox">
											<button type="button" class="btn" id='policy' data-color="info"
												tabindex="7">I Agree</button> <input type="checkbox"
											name="t_and_c" id="t_and_c" class="hidden" value="1">

										</span>
									</div>

									<div class="col-xs-8 col-sm-9 col-md-9">
										By clicking <strong class="label label-primary">Find
											a flight</strong>, you agree to the <a href="#" data-toggle="modal"
											data-target="#t_and_c_m">Terms and Conditions</a> set out by
										this site, including our Cookie Use.
									</div>

								</div>

								<hr class="colorgraph">
								<div class="row">
									<div class="col-xs-12 col-md-6">
										<input type="submit" value="Find a flight"
											class="btn btn-theme btn-block btn-lg" tabindex="7">
									</div>
									<div class="col-xs-12 col-md-6">
										Already have an account? <a href="login">Sign In</a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>



			</div>
		</div>


		</section>

		<section id="content">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="text-center">
						<h2>
							We use <span class="highlight">modern</span> infrastructure &
							technology
						</h2>
						<p>Lorem ipsum dolor sit amet, ne duis posse mei, ut cum vero
							nominati. Sed graece aeterno consectetuer te. Cu duo tota
							deleniti, vis ea fuisset nostrum. Meliore inciderint qui ne. Suas
							cotidieque vel ut ei eros perpetua qui. Ponderum lobortis
							reformidans</p>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-sm-3 col-md-3 col-lg-3">
							<div class="box">
								<div class="aligncenter">
									<div class="icon">
										<i class="fa fa-desktop fa-5x"></i>
									</div>
									<h4>Fully responsive</h4>
								</div>
							</div>
						</div>
						<div class="col-sm-3 col-md-3 col-lg-3">
							<div class="box">
								<div class="aligncenter">
									<div class="icon">
										<i class="fa fa-file-code-o fa-5x"></i>
									</div>
									<h4>Fully responsive</h4>
								</div>
							</div>
						</div>
						<div class="col-sm-3 col-md-3 col-lg-3">
							<div class="box">
								<div class="aligncenter">
									<div class="icon">
										<i class="fa fa-paper-plane-o fa-5x"></i>
									</div>
									<h4>Fully responsive</h4>
								</div>
							</div>
						</div>
						<div class="col-sm-3 col-md-3 col-lg-3">
							<div class="box">
								<div class="aligncenter">
									<div class="icon">
										<i class="fa fa-cubes fa-5x"></i>
									</div>
									<h4>Fully responsive</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- divider -->
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="solidline"></div>
				</div>
			</div>
		</div>
		<!-- end divider -->

		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-sm-6 col-lg-6">
							<h4>About our company</h4>
							<p>
								<strong>Meliore inciderint qui ne. Suas cotidieque vel
									ut lobortis reformidans duo</strong>
							</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Repudiandae odit iste exercitationem praesentium deleniti
								nostrum laborum rem id nihil tempora. Adipisci ea commodi unde
								nam placeat cupiditate quasi a ducimus rem consequuntur ex
								eligendi minima voluptatem assumenda voluptas quidem sit maiores
								odio velit voluptate</p>
							<p>Mel explicari adipiscing consectetuer no, no mel apeirian
								scripserit repudiandae, ad assum mundi scribentur eam. Graecis
								offendit phaedrum eu his, eius ferri quidam eos ad, quis delenit
								vel ei. Alia modus facete te eos, eu tation appellantur per</p>
						</div>
						<div class="col-sm-6 col-lg-6">
							<h4>Projects</h4>
							<div class="progress">
								<div
									class="progress-bar progress-bar-success progress-bar-striped active"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">40% Complete
									(success)</div>
							</div>
							<div class="progress">
								<div
									class="progress-bar progress-bar-info progress-bar-striped active"
									role="progressbar" aria-valuenow="20" aria-valuemin="0"
									aria-valuemax="100" style="width: 20%">20% Complete</div>
							</div>
							<div class="progress">
								<div
									class="progress-bar progress-bar-warning progress-bar-striped active"
									role="progressbar" aria-valuenow="60" aria-valuemin="0"
									aria-valuemax="100" style="width: 60%">60% Complete
									(warning)</div>
							</div>
							<div class="progress">
								<div
									class="progress-bar progress-bar-danger progress-bar-striped active"
									role="progressbar" aria-valuenow="80" aria-valuemin="0"
									aria-valuemax="100" style="width: 80%">80% Complete</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- divider -->
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="blankline"></div>
				</div>
			</div>
		</div>
		<!-- end divider --> <!-- parallax  -->
		<div id="parallax1"
			class="parallax text-light text-center marginbot50"
			data-stellar-background-ratio="0.5">
			<div class="container">
				<div class="row appear stats">
					<div class="col-xs-6 col-sm-3 col-md-3">
						<div class="align-center color-white txt-shadow">
							<div class="icon">
								<i class="fa fa-clock-o fa-5x"></i>
							</div>
							<strong id="counter-coffee" class="number">1232</strong><br /> <span
								class="text">Minutes</span>
						</div>
					</div>
					<div class="col-xs-6 col-sm-3 col-md-3">
						<div class="align-center color-white txt-shadow">
							<div class="icon">
								<i class="fa fa-music fa-5x"></i>
							</div>
							<strong id="counter-music" class="number">345</strong><br /> <span
								class="text">MP3 Songs</span>
						</div>
					</div>
					<div class="col-xs-6 col-sm-3 col-md-3">
						<div class="align-center color-white txt-shadow">
							<div class="icon">
								<i class="fa fa-coffee fa-5x"></i>
							</div>
							<strong id="counter-clock" class="number">501</strong><br /> <span
								class="text">Coffee Cups</span>
						</div>
					</div>
					<div class="col-xs-6 col-sm-3 col-md-3">
						<div class="align-center color-white txt-shadow">
							<div class="icon">
								<i class="fa fa-trophy fa-5x"></i>
							</div>
							<strong id="counter-heart" class="number">378</strong><br /> <span
								class="text">Awwards</span>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-sm-6 col-md-6">
							<h4>Testimonials</h4>
							<div class="testimonialslide clearfix flexslider">
								<ul class="slides">
									<li><blockquote>Usu ei porro deleniti
											similique, per no consetetur necessitatibus. Ut sed augue
											docendi alienum, ex oblique scaevola inciderint pri, unum
											movet cu cum. Et cum impedit epicuri</blockquote>
										<h4>
											Daniel Dan <span>&#8213; MA System</span>
										</h4></li>
									<li><blockquote>Usu ei porro deleniti
											similique, per no consetetur necessitatibus. Ut sed augue
											docendi alienum, ex oblique scaevola inciderint pri, unum
											movet cu cum. Et cum impedit epicuri</blockquote>
										<h4>
											Mark Wellbeck <span>&#8213; AC Software </span>
										</h4></li>
								</ul>
							</div>
						</div>
						<div class="col-sm-6 col-lg-6">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#one" data-toggle="tab"><i
										class="icon-briefcase"></i> One</a></li>
								<li><a href="#two" data-toggle="tab">Two</a></li>
								<li><a href="#three" data-toggle="tab">Three</a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="one">
									<p>
										<img src="styles/img/dummy1.jpg" class="pull-left" alt="" />
										<strong>Augue iriure</strong> dolorum per ex, ne iisque
										ornatus veritus duo. Ex nobis integre lucilius sit, pri ea
										falli ludus appareat. Eum quodsi fuisset id, nostro patrioque
										qui id. Nominati eloquentiam in mea.
									</p>
									<p>No eum sanctus vituperata reformidans, dicant abhorreant
										ut pro. Duo id enim iisque praesent, amet intellegat per et,
										solet referrentur eum et.</p>
								</div>
								<div class="tab-pane" id="two">
									<p>
										<img src="styles/img/dummy1.jpg" class="pull-right" alt="" />
										Tale dolor mea ex, te enim assum suscipit cum, vix aliquid
										omittantur in. Duo eu cibo dolorum menandri, nam sumo dicit
										admodum ei. Ne mazim commune honestatis cum, mentitum phaedrum
										sit et.
									</p>
									<p>Lorem ipsum dolor sit amet, vel laoreet pertinacia at,
										nam ea ornatus ocurreret gubergren. Per facete graecis eu.</p>
								</div>
								<div class="tab-pane" id="three">
									<p>Lorem ipsum dolor sit amet, vel laoreet pertinacia at,
										nam ea ornatus ocurreret gubergren. Per facete graecis eu.</p>
									<p>Cu cum commodo regione definiebas. Cum ea eros
										laboramus, audire deseruisse his at, munere aeterno ut quo. Et
										ius doming causae philosophia, vitae bonorum intellegat usu
										cu.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- divider -->
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="solidline"></div>
				</div>
			</div>
		</div>
		<!-- end divider --> <!-- Portfolio Projects -->
		<div class="container marginbot50">
			<div class="row">
				<div class="col-lg-12">
					<h4 class="heading">Recent Works</h4>

					<div id="filters-container" class="cbp-l-filters-button">
						<div data-filter="*"
							class="cbp-filter-item-active cbp-filter-item">
							All
							<div class="cbp-filter-counter"></div>
						</div>
						<div data-filter=".identity" class="cbp-filter-item">
							Identity
							<div class="cbp-filter-counter"></div>
						</div>
						<div data-filter=".web-design" class="cbp-filter-item">
							Web Design
							<div class="cbp-filter-counter"></div>
						</div>
						<div data-filter=".graphic" class="cbp-filter-item">
							Graphic
							<div class="cbp-filter-counter"></div>
						</div>
						<div data-filter=".logo" class="cbp-filter-item">
							Logo
							<div class="cbp-filter-counter"></div>
						</div>
					</div>


					<div id="grid-container" class="cbp-l-grid-projects">
						<ul>
							<li class="cbp-item graphic">
								<div class="cbp-caption">
									<div class="cbp-caption-defaultWrap">
										<img src="styles/img/works/1.jpg" alt="" />
									</div>
									<div class="cbp-caption-activeWrap">
										<div class="cbp-l-caption-alignCenter">
											<div class="cbp-l-caption-body">
												<a href="styles/img/works/1big.jpg"
													class="cbp-lightbox cbp-l-caption-buttonRight"
													data-title="Dashboard<br>by Paul Flavius Nechita">view
													larger</a>
											</div>
										</div>
									</div>
								</div>
								<div class="cbp-l-grid-projects-title">Dashboard</div>
								<div class="cbp-l-grid-projects-desc">Web Design / Graphic</div>
							</li>
							<li class="cbp-item web-design logo">
								<div class="cbp-caption">
									<div class="cbp-caption-defaultWrap">
										<img src="styles/img/works/2.jpg" alt="" />
									</div>
									<div class="cbp-caption-activeWrap">
										<div class="cbp-l-caption-alignCenter">
											<div class="cbp-l-caption-body">
												<a href="styles/img/works/2big.jpg"
													class="cbp-lightbox cbp-l-caption-buttonRight"
													data-title="World Clock Widget<br>by Paul Flavius Nechita">view
													larger</a>
											</div>
										</div>
									</div>
								</div>
								<div class="cbp-l-grid-projects-title">World Clock Widget</div>
								<div class="cbp-l-grid-projects-desc">Logo / Web Design</div>
							</li>
							<li class="cbp-item graphic logo">
								<div class="cbp-caption">
									<div class="cbp-caption-defaultWrap">
										<img src="styles/img/works/3.jpg" alt="" />
									</div>
									<div class="cbp-caption-activeWrap">
										<div class="cbp-l-caption-alignCenter">
											<div class="cbp-l-caption-body">

												<a href="http://vimeo.com/14912890"
													class="cbp-lightbox cbp-l-caption-buttonRight"
													data-title="To-Do Dashboard<br>by Tiberiu Neamu">view
													video</a>
											</div>
										</div>
									</div>
								</div>
								<div class="cbp-l-grid-projects-title">To-Do Dashboard</div>
								<div class="cbp-l-grid-projects-desc">Graphic / Logo</div>
							</li>
							<li class="cbp-item web-design graphic">
								<div class="cbp-caption">
									<div class="cbp-caption-defaultWrap">
										<img src="styles/img/works/4.jpg" alt="" />
									</div>
									<div class="cbp-caption-activeWrap">
										<div class="cbp-l-caption-alignCenter">
											<div class="cbp-l-caption-body">

												<a href="styles/img/works/4big.jpg"
													class="cbp-lightbox cbp-l-caption-buttonRight"
													data-title="Events and  More<br>by Tiberiu Neamu">view
													larger</a>
											</div>
										</div>
									</div>
								</div>
								<div class="cbp-l-grid-projects-title">Events and More</div>
								<div class="cbp-l-grid-projects-desc">Web Design / Graphic</div>
							</li>
							<li class="cbp-item identity web-design">
								<div class="cbp-caption">
									<div class="cbp-caption-defaultWrap">
										<img src="styles/img/works/5.jpg" alt="" />
									</div>
									<div class="cbp-caption-activeWrap">
										<div class="cbp-l-caption-alignCenter">
											<div class="cbp-l-caption-body">

												<a href="styles/img/works/5big.jpg"
													class="cbp-lightbox cbp-l-caption-buttonRight"
													data-title="WhereTO App<br>by Tiberiu Neamu">view
													larger</a>
											</div>
										</div>
									</div>
								</div>
								<div class="cbp-l-grid-projects-title">WhereTO App</div>
								<div class="cbp-l-grid-projects-desc">Web Design /
									Identity</div>
							</li>
							<li class="cbp-item identity web-design">
								<div class="cbp-caption">
									<div class="cbp-caption-defaultWrap">
										<img src="styles/img/works/6.jpg" alt="" />
									</div>
									<div class="cbp-caption-activeWrap">
										<div class="cbp-l-caption-alignCenter">
											<div class="cbp-l-caption-body">

												<a href="styles/img/works/6big.jpg"
													class="cbp-lightbox cbp-l-caption-buttonRight"
													data-title="Ski * Buddy<br>by Tiberiu Neamu">view
													larger</a>
											</div>
										</div>
									</div>
								</div>
								<div class="cbp-l-grid-projects-title">Ski * Buddy</div>
								<div class="cbp-l-grid-projects-desc">Identity / Web
									Design</div>
							</li>
							<li class="cbp-item graphic logo">
								<div class="cbp-caption">
									<div class="cbp-caption-defaultWrap">
										<img src="styles/img/works/7.jpg" alt="" />
									</div>
									<div class="cbp-caption-activeWrap">
										<div class="cbp-l-caption-alignCenter">
											<div class="cbp-l-caption-body">

												<a href="styles/img/works/7big.jpg"
													class="cbp-lightbox cbp-l-caption-buttonRight"
													data-title="Seemple* Music for iPad<br>by Tiberiu Neamu">view
													larger</a>
											</div>
										</div>
									</div>
								</div>
								<div class="cbp-l-grid-projects-title">Seemple* Music for
									iPad</div>
								<div class="cbp-l-grid-projects-desc">Graphic / Logo</div>
							</li>
							<li class="cbp-item graphic logo">
								<div class="cbp-caption">
									<div class="cbp-caption-defaultWrap">
										<img src="styles/img/works/8.jpg" alt="" />
									</div>
									<div class="cbp-caption-activeWrap">
										<div class="cbp-l-caption-alignCenter">
											<div class="cbp-l-caption-body">

												<a href="styles/img/works/8big.jpg"
													class="cbp-lightbox cbp-l-caption-buttonRight"
													data-title="Seemple* Music for iPad<br>by Tiberiu Neamu">view
													larger</a>
											</div>
										</div>
									</div>
								</div>
								<div class="cbp-l-grid-projects-title">Seemple* Music for
									iPad</div>
								<div class="cbp-l-grid-projects-desc">Graphic / Logo</div>
							</li>
						</ul>
					</div>

					<div class="cbp-l-loadMore-button">
						<a href="ajax/loadMore.html" class="cbp-l-loadMore-button-link">LOAD
							MORE</a>
					</div>

				</div>
			</div>
		</div>


		<!-- divider -->
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="solidline"></div>
				</div>
			</div>
		</div>
		<!-- end divider --> <!-- clients --> </section>

		<footer>
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-lg-3">
					<div class="widget">
						<h4>Get in touch with us</h4>
						<address>
							<strong>Sailor company Inc</strong><br> Sailor suite room
							V124, DB 91<br> Someplace 71745 Earth
						</address>
						<p>
							<i class="icon-phone"></i> (123) 456-7890 - (123) 555-7891 <br>
							<i class="icon-envelope-alt"></i> email@domainname.com
						</p>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3">
					<div class="widget">
						<h4>Information</h4>
						<ul class="link-list">
							<li><a href="#">Press release</a></li>
							<li><a href="#">Terms and conditions</a></li>
							<li><a href="#">Privacy policy</a></li>
							<li><a href="#">Career center</a></li>
							<li><a href="#">Contact us</a></li>
						</ul>
					</div>

				</div>
				<div class="col-sm-3 col-lg-3">
					<div class="widget">
						<h4>Pages</h4>
						<ul class="link-list">
							<li><a href="#">Press release</a></li>
							<li><a href="#">Terms and conditions</a></li>
							<li><a href="#">Privacy policy</a></li>
							<li><a href="#">Career center</a></li>
							<li><a href="#">Contact us</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3">
					<div class="widget">
						<h4>Newsletter</h4>
						<p>Fill your email and sign up for monthly newsletter to keep
							updated</p>
						<div class="form-group multiple-form-group input-group">
							<input type="email" name="email" class="form-control"> <span
								class="input-group-btn">
								<button type="button" class="btn btn-theme btn-add">Subscribe</button>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="sub-footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="copyright">
							<p>&copy; Sailor Theme - All Right Reserved</p>
							<div class="credits">
								<!-- 
                                All the links in the footer should remain intact. 
                                You can delete the links only if you purchased the pro version.
                                Licensing information: https://bootstrapmade.com/license/
                                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Sailor
                            -->
								<a
									href="https://bootstrapmade.com/free-business-bootstrap-themes-website-templates/">Business
									Bootstrap Themes</a> by <a href="https://bootstrapmade.com/">BootstrapMade</a>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<ul class="social-network">
							<li><a href="#" data-placement="top" title="Facebook"><i
									class="fa fa-facebook"></i></a></li>
							<li><a href="#" data-placement="top" title="Twitter"><i
									class="fa fa-twitter"></i></a></li>
							<li><a href="#" data-placement="top" title="Linkedin"><i
									class="fa fa-linkedin"></i></a></li>
							<li><a href="#" data-placement="top" title="Pinterest"><i
									class="fa fa-pinterest"></i></a></li>
							<li><a href="#" data-placement="top" title="Google plus"><i
									class="fa fa-google-plus"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		</footer>
	</div>

	<input type="date" class="form-control">

	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>



	<jsp:include page="includes/import_js.jsp"></jsp:include>

	<script type="text/javascript">
		$(function() {

			$('#datetimepicker2').datetimepicker({
				format : 'YYYY-MM-DD',
				minDate : new Date(),
				maxDate : new Date("2018-03-03"),
			});

			$('#datetimepicker3').datetimepicker({

			});

		});

		$("#datetimepicker2").on('dp.change', function(e) {
			var dateGo = $('#date-go').val();
			$('#datetimepicker3').data("DateTimePicker").destroy();
			$('#datetimepicker3').datetimepicker({
				format : 'YYYY-MM-DD',
				minDate : new Date(dateGo),
				maxDate : new Date("2018-03-03"),
			});

		});

		$("#radio-one").change(function() {
			console.log("radio 1");

			$("#input-date-back").prop("disabled", true);

		});

		$("#radio-two").change(function() {
			console.log("radio 2");
			$("#input-date-back").prop("disabled", false);
		});

		$("#list-from").change(function() {
			var locationTo = $("#list-from").val();
			$.ajax({
				url : "/ajax/getLocationTo/" + locationTo,
				type : 'GET',
				success : function(res) {
					$("#list-to").empty();
					$("#list-to").append(res);

				}
			});

		});

		$("#list-to").change(function() {

		});
		
		function onSubmitSearch() {
			
			var locationFrom = $("#list-from");
			if (locationFrom.val()=='From'){
				setErrorText('Choose departure point!'); 
				locationFrom.addClass("hova");
				return false;
			}
			locationFrom.removeClass("hova");
			
			var locationTo = $("#list-to");
			if (locationTo.val()=='To'){
				setErrorText('Pick the destination!');
				locationTo.addClass("hova");
				return false;
			}
			locationTo.removeClass("hova");
			
			var dateGo = $("#date-go");
			if (dateGo.val()==''){
				setErrorText('Pick the date');
				dateGo.addClass("hova");
				return false;
			}
			dateGo.removeClass("hova");
			
			var round = $("input[name=radio]:checked").val();
			if (round==2){
				var dateBack = $("#input-date-back");
				if (dateBack.val()==''){
					setErrorText('Pick the date');
					dateBack.addClass("hova");
					return false;
				}
				dateBack.removeClass("hova");
			}
			
			var policy_btn = $("#policy");
			if (!$("#t_and_c").is(':checked')){
				setErrorText('You can allow policy!');
				policy_btn.addClass("hova");
				return false;
			}
			policy_btn.removeClass("hova");
			
			
		}
		
		function setErrorText(text){
			var view = $("#view-error");
			view.empty();
			view.append('<strong>Info!</strong> ' +text);
			view.show();
		}
		
		
		
	</script>


</body>
</html>
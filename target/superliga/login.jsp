<!DOCTYPE html>
<html lang="en">
<%
	String errorParam = request.getParameter("error");
	boolean errorExists = (errorParam != null);
%>
<head>
<title>Loft Studio</title>
<meta charset="utf-8">
<link rel="icon" href="public/img/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="public/img/favicon.ico" type="image/x-icon" />
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<link rel="stylesheet" href="public/css/bootstrap.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="public/css/responsive.css" type="text/css"
	media="screen">
	<!-- font-awesome font -->
<link rel="stylesheet" href="public/fontfont-awesome.css" type="text/css"
	media="screen">
	<!-- fontello font -->
<link rel="stylesheet" href="public/fontfontello.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="public/css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="public/css/epicslider.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="public/css/animation.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="public/css/flexslider.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="public/css/responsive-tabs.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="public/css/view.css" type="text/css"
	media="screen">
<script src="public/js/jquery-2.0.3.js"></script>
<script src="public/js/jquery-migrate-1.1.1.js"></script>
<!--[if lt IE 8]>
  		<div style='text-align:center'><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/img/upgrade.jpg"border="0"alt=""/></a></div>  
 	<![endif]-->
<!--[if lt IE 9]>
		<link rel="stylesheet" href="public/css/ie.css" type="text/css" media="screen">
		<script src="public/js/html5shiv.js"></script>
	<![endif]-->
</head>
<body class="default">
	<!--==============================home=================================-->
	<div id="index">
		<!--epic slider-->
		<div id="epicSlider" class="epicSlider slider-wrapper theme-default">
			<div id="slides">
				<img src="public/img/slide-1.jpg" alt="Image 1" title="#html-content1" />
				<img src="public/img/slide-2.jpg" alt="Image 2" title="#html-content2" />
				<img src="public/img/slide-3.jpg" alt="Image 3" title="#html-content3" />
			</div>
		</div>
		<!--caption 1-->
		<div class="epic-caption epic-caption-boxed" id="html-content1">
			<div class="epic-table">
				<form id="login-form" action="j_security_check" method="post">
					<table id="login-table">
						<tr>
							<td colspan="2"><label for="j_username" class="inputLabel">Usuario</label>
							</td>
						</tr>
						<tr>
							<td colspan="2"><input id="j_username" type="text"
								autofocus="autofocus" name="j_username" class="inputText"
								maxlength="35" /></td>
						</tr>
						<tr>
							<td colspan="2"><label for="j_password" class="inputLabel">Contrase&ntilde;a</label>
							</td>
						</tr>
						<tr>
							<td colspan="2"><input id="j_password" type="password"
								name="j_password" class="inputText" maxlength="35" /></td>
						</tr>
						<tr>
							<td>
								<%
									if (errorExists) {
								%> <span class="redText" style="font-weight: bolder;">Login
									incorrecto</span> <%
 	}
 %><span class="redText"><input id="rememberLogin"
									name="rememberLogin" type="checkbox" />Recordarme</span> <span
								class="redText"><a href="" target="_blank"
									onclick="window.open('/sigse/reseteoClave.jsf', null, 'height=205,width=350,top=230,left=450'); return false;">&iquest;Olvid&oacute;
										su contrase&ntilde;a?</a> </span>
							</td>
							<td id="submit-cell"><input type="image"
								src="<%=request.getContextPath()%>/resources/images/login/btn-ingresar.png" />
							</td>
						</tr>
					</table>
				</form>
				<div class="epic-table-cell">
					<h2>
						Welcome &nbsp;to &nbsp;<span class="special_color">loft
							studio</span>
					</h2>
					<p>
						We’re a cutting design studio specializing in development <br>of
							websites, applications and corporate designs
					</p>
					<a href="#about" class="animated-btn">Let’s Work Together</a>
				</div>
			</div>
		</div>
		<!--caption 2-->
		<div class="epic-caption epic-caption-elegant" id="html-content2">
			<div class="epic-table">
				<div class="epic-table-cell-left">
					<h2>
						<span class="e-bold special_color">Build</span> a Bridge <br>to
						
						<strong class="e-bold special_color">Your Success!</strong>
					</h2>
					<p class="ext_wrap">
						We are a small full-service studio and have a <br>big
							experience in the whole development 
						<br>cycle - 
						<span>from design to delivery.</span>
					</p>
					<a href="#services" class="animated-btn">Find Out More</a>
				</div>
			</div>
		</div>
		<!--caption 3-->
		<div class="epic-caption epic-caption-striped" id="html-content3">
			<div class="epic-table">
				<div class="epic-table-cell-right">
					<h2>
						<span class="e-bold">We are Proud</span> <br>of
						<br class="display-br"> What We Create
					</h2>
					<p class="pad-0">&nbsp;</p>
					<a href="#work" class="animated-btn">view our work</a>
				</div>
			</div>
		</div>
	</div>
	<div class="wrap-general">
		<!--==============================header=================================-->
		<div id="navigation-wrapper">
			<div id="navigation" class="clearfix">
				<h1>
					<a href="#index" class="brand animated"></a>
				</h1>
				<ul id="menu">
					<li class="home"><a href="#index" class="animated">Home</a></li>
					<li><a href="#about" class="animated">About</a></li>
					<li><a href="#work" class="animated">Work</a></li>
					<li><a href="#services" class="animated">Services</a></li>
					<li><a href="#journal" class="animated">Journal</a></li>
					<li><a href="#careers" class="animated">Careers</a></li>
					<li><a href="#contact" class="animated">Contact</a></li>
					<li><a
						href="http://themeforest.net/item/loft-studio-responsive-parallax-html-template/5622427?ref=mad_velikorodnov"
						target="_blank">Buy</a></li>
				</ul>
			</div>
		</div>
		<!--==============================about=================================-->
		<div id="about">
			<div class="title-bg">
				<div class="container">
					<div class="row">
						<div class="span12">
							<h2>About Us</h2>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="span6">
						<h3>Who We Are</h3>
						Vestibulum ante ipsum primis in faucibus orci luctus et ultrices
						posuere cubilia Curae; Suspendisse sollicitudin velit sed leo. Ut
						pharetra augue nec augue. <br> Nam elit agna,endrerit sit
							amet, tincidunt ac, viverra sed, nulla. Donec porta diam eu
							massa. Quisque diam lorem, interdum vitae,dapibus ac, scelerisque
							vitae, pede. Donec eget tellus non erat lacinia fermentum. 
					</div>
					<div class="span6">
						<h3>Agency Statistics</h3>
						since
						<div class="flexslider1">
							<ul class="slides">
								<li>
									<div class="stat_block ext_wrap">
										<figure class="f_left num">2006
										</figure>
										<div class="ext_wrap special_color">
											<div class="stat_icon f_left icon-group"></div>
											<div class="ext_wrap descr">
												<strong>20+</strong><br> Team Members 
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="stat_block ext_wrap">
										<figure class="f_left num">2010
										</figure>
										<div class="ext_wrap special_color">
											<div class="stat_icon f_left icon-coffee"></div>
											<div class="ext_wrap descr">
												<strong>29570+ </strong><br> Cups of Coffee 
												<br>Get Drunk 
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="stat_block ext_wrap">
										<figure class="f_left num">2013
										</figure>
										<div class="ext_wrap special_color">
											<div class="stat_icon f_left icon-check"></div>
											<div class="ext_wrap descr">
												<strong>35+</strong><br> New Projects Started 
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="stat_block ext_wrap">
										<figure class="f_left num">2013
										</figure>
										<div class="ext_wrap special_color">
											<div class="stat_icon f_left icon-smile"></div>
											<div class="ext_wrap descr">
												<strong>850+</strong><br> Happy Clients 
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="stat_block ext_wrap">
										<figure class="f_left num">2009
										</figure>
										<div class="ext_wrap special_color">
											<div class="stat_icon f_left icon-file"></div>
											<div class="ext_wrap descr">
												<strong>5897360+ </strong><br> Photoshop Files 
												<br>Created 
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="stat_block ext_wrap">
										<figure class="f_left num">2011
										</figure>
										<div class="ext_wrap special_color">
											<div class="stat_icon f_left icon-rocket"></div>
											<div class="ext_wrap descr">
												<strong>290+</strong><br> Websites Launched 
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="stat_block ext_wrap">
										<figure class="f_left num">2008
										</figure>
										<div class="ext_wrap special_color">
											<div class="stat_icon f_left icon-code"></div>
											<div class="ext_wrap descr">
												<strong>93573680+ </strong><br> Lines of Code Written 
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="stat_block ext_wrap">
										<figure class="f_left num">2012
										</figure>
										<div class="ext_wrap special_color">
											<div class="stat_icon f_left icon-pencil"></div>
											<div class="ext_wrap descr">
												<strong>80+ </strong><br> New Blog Post Written 
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-1">
				<div class="flexslider carousel">
					<ul class="slides">
						<li><img src="public/img/carousel/img-1.jpg" alt="" /><a
							href="public/img/img-1-big.jpg" rel="carousel" class="p_link view"></a></li>
						<li><img src="public/img/carousel/img-2.jpg" alt="" /><a
							href="public/img/img-2-big.jpg" rel="carousel" class="p_link view"></a></li>
						<li><img src="public/img/carousel/img-3.jpg" alt="" /><a
							href="public/img/img-3-big.jpg" rel="carousel" class="p_link view"></a></li>
						<li><img src="public/img/carousel/img-1.jpg" alt="" /><a
							href="public/img/img-1-big.jpg" rel="carousel" class="p_link view"></a></li>
						<li><img src="public/img/carousel/img-2.jpg" alt="" /><a
							href="public/img/img-2-big.jpg" rel="carousel" class="p_link view"></a></li>
						<li><img src="public/img/carousel/img-3.jpg" alt="" /><a
							href="public/img/img-3-big.jpg" rel="carousel" class="p_link view"></a></li>
						<li><img src="public/img/carousel/img-1.jpg" alt="" /><a
							href="public/img/img-1-big.jpg" rel="carousel" class="p_link view"></a></li>
						<li><img src="public/img/carousel/img-2.jpg" alt="" /><a
							href="public/img/img-2-big.jpg" rel="carousel" class="p_link view"></a></li>
						<li><img src="public/img/carousel/img-3.jpg" alt="" /><a
							href="public/img/img-3-big.jpg" rel="carousel" class="p_link view"></a></li>
					</ul>
				</div>
			</div>
			<div class="team-list black-block-bg">
				<div class="container">
					<div class="row">
						<div class="span12">
							<h3>Meet The Team</h3>
						</div>
					</div>
					<div class="row thumbnails">
						<div class="span3">
							<div class="thumbnail maxheight">
								<figure class="img-polaroid">
									<img src="public/img/team-1.jpg" alt="">
								</figure>
								<div class="caption">
									<strong class="special_color">John Doe</strong> <span>director
										&amp; founder</span> Ut pharetra augue nec augue. Nam elit agna,
									endrerit sit amet, tincidunt ac, viverra sed, nulla. Donec
									porta diam eu massa. Quisque diam lorem, interdum.
									<div class="social-icons clearfix">
										<a href="#" data-toggle="tooltip" title="Facebook"
											class="facebook icon-facebook"></a> <a href="#"
											data-toggle="tooltip" title="Twitter"
											class="twitter icon-twitter"></a> <a href="#"
											data-toggle="tooltip" title="LinkedIn"
											class="linkedin icon-linkedin"></a> <a href="#"
											data-toggle="tooltip" title="Flickr"
											class="flickr icon-flickr"></a> <a href="#"
											data-toggle="tooltip" title="Google"
											class="google icon-google"></a> <a href="#"
											data-toggle="tooltip" title="Tumblr"
											class="tumblr icon-tumblr"></a>
									</div>
								</div>
							</div>
						</div>
						<div class="span3">
							<div class="thumbnail maxheight">
								<figure class="img-polaroid">
									<img src="public/img/team-2.jpg" alt="">
								</figure>
								<div class="caption">
									<strong class="special_color">July Doe</strong> <span>web
										designer</span> Donec eget tellus non erat lacinia fermentum. Donec
									in velit vel ipsum auctor pulvinar. Vestibulum iaculis lacinia
									est. Proin dictum elementum velit
									<div class="social-icons clearfix">
										<a href="#" data-toggle="tooltip" title="Facebook"
											class="facebook icon-facebook"></a> <a href="#"
											data-toggle="tooltip" title="Twitter"
											class="twitter icon-twitter"></a> <a href="#"
											data-toggle="tooltip" title="Dribbble"
											class="dribbble icon-dribbble"></a> <a href="#"
											data-toggle="tooltip" title="LinkedIn"
											class="linkedin icon-linkedin"></a> <a href="#"
											data-toggle="tooltip" title="Flickr"
											class="flickr icon-flickr"></a> <a href="#"
											data-toggle="tooltip" title="Google"
											class="google icon-google"></a>
									</div>
								</div>
							</div>
						</div>
						<div class="span3">
							<div class="thumbnail maxheight">
								<figure class="img-polaroid">
									<img src="public/img/team-3.jpg" alt="">
								</figure>
								<div class="caption">
									<strong class="special_color">Steven Doe</strong> <span>developer</span>
									Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac
									turpis. Donec sit amet eros. Lorem ipsum dolor sit amet,
									consectetuer adipiscing elit.
									<div class="social-icons clearfix">
										<a href="#" data-toggle="tooltip" title="Facebook"
											class="facebook icon-facebook"></a> <a href="#"
											data-toggle="tooltip" title="Twitter"
											class="twitter icon-twitter"></a> <a href="#"
											data-toggle="tooltip" title="LinkedIn"
											class="linkedin icon-linkedin"></a> <a href="#"
											data-toggle="tooltip" title="Google"
											class="google icon-google"></a>
									</div>
								</div>
							</div>
						</div>
						<div class="span3">
							<div class="thumbnail maxheight">
								<figure class="img-polaroid">
									<img src="public/img/team-4.jpg" alt="">
								</figure>
								<div class="caption">
									<strong class="special_color">Katherine Doe</strong> <span>project
										manager</span> Ut tellus dolor, dapibus eget, elementum vel, cursus
									eleifend, elit. Aenean auctor wisi et urna. Aliquam erat
									volutpat. Duis ac turpis.
									<div class="social-icons clearfix">
										<a href="#" data-toggle="tooltip" title="Twitter"
											class="twitter icon-twitter"></a> <a href="#"
											data-toggle="tooltip" title="Dribbble"
											class="dribbble icon-dribbble"></a> <a href="#"
											data-toggle="tooltip" title="LinkedIn"
											class="linkedin icon-linkedin"></a> <a href="#"
											data-toggle="tooltip" title="Flickr"
											class="flickr icon-flickr"></a> <a href="#"
											data-toggle="tooltip" title="Tumblr"
											class="tumblr icon-tumblr"></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="separator1">
				<div class="pattern"></div>
				<div class="separator1-bg"></div>
				<div class="container">
					<div>
						If you are talented, highly motivated, hardworking,<br>
							passionate about your work and want to join our team...
					</div>
					<a href="#careers" class="btn animated-btn special_color">Check
						Out Our Vacancies</a>
				</div>
			</div>
			<div class="fix-menu"></div>
		</div>
		<!--==============================work=================================-->
		<div id="work">
			<div class="title-bg">
				<div class="container">
					<div class="row">
						<div class="span12">
							<h2>Work Showcase</h2>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="span12">
						<div id="options">
							<ul id="filters" class="option-set clearfix"
								data-option-key="filter">
								<li><a href="#filter" class="selected"
									data-option-value="*">All Projects</a></li>
								<li><a href="#filter" data-option-value=".cat1">Web</a></li>
								<li><a href="#filter" data-option-value=".cat2">Print</a></li>
								<li><a href="#filter" data-option-value=".cat3">Motion</a></li>
								<li><a href="#filter" data-option-value=".cat4">3D</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- Portfolio List-->
			<div id="container" class="portfolio clearfix">
				<div class="element cat3 cat1" data-category="cat3 cat1">
					<div class="isotope-block">
						<a class="group1" href="work.html"><img
							src="public/img/gallery/img-1.jpg" alt="" />
							<div class="mask">
								<div>
									<span>Minta</span>Web
								</div>
							</div> </a>
					</div>
				</div>
				<div class="element cat2 cat1" data-category="cat2 cat1">
					<div class="isotope-block">
						<a class="group1" href="work_img.html"><img
							src="public/img/gallery/img-2.jpg" alt="" />
							<div class="mask">
								<div>
									<span>Midnight Pearl</span>Web, Motion
								</div>
							</div> </a>
					</div>
				</div>
				<div class="element cat4 cat1" data-category="cat4 cat1">
					<div class="isotope-block">
						<a class="group1" href="work_youtube.html"><img
							src="public/img/gallery/img-3.jpg" alt="" />
							<div class="mask">
								<div>
									<span>Backardi Black</span>Print
								</div>
							</div> </a>
					</div>
				</div>
				<div class="element cat4" data-category="cat4">
					<div class="isotope-block">
						<a class="group1" href="work_vimeo.html"><img
							src="public/img/gallery/img-4.jpg" alt="" />
							<div class="mask">
								<div>
									<span>Mercedes-Benz</span>3D, Web
								</div>
							</div> </a>
					</div>
				</div>
				<div class="element cat3 cat2" data-category="cat3 cat2">
					<div class="isotope-block">
						<a class="group1" href="work.html"><img
							src="public/img/gallery/img-5.jpg" alt="" />
							<div class="mask">
								<div>
									<span>The Famous Grouse</span>Print
								</div>
							</div> </a>
					</div>
				</div>
				<div class="element cat2" data-category="cat2">
					<div class="isotope-block">
						<a class="group1" href="work_img.html"><img
							src="public/img/gallery/img-6.jpg" alt="" />
							<div class="mask">
								<div>
									<span>TV Show</span>Print
								</div>
							</div> </a>
					</div>
				</div>
				<div class="element cat3 cat4" data-category="cat3 cat4">
					<div class="isotope-block">
						<a class="group1" href="work_youtube.html"><img
							src="public/img/gallery/img-7.jpg" alt="" />
							<div class="mask">
								<div>
									<span>Mitsubishi Motors</span>3D, Web
								</div>
							</div> </a>
					</div>
				</div>
				<div class="element cat3" data-category="cat3">
					<div class="isotope-block">
						<a class="group1" href="work_vimeo.html"><img
							src="public/img/gallery/img-8.jpg" alt="" />
							<div class="mask">
								<div>
									<span>Fanta Asia</span>3D, Web
								</div>
							</div> </a>
					</div>
				</div>
				<div class="element cat3 cat1" data-category="cat3 cat1">
					<div class="isotope-block">
						<a class="group1" href="work.html"><img
							src="public/img/gallery/img-9.jpg" alt="" />
							<div class="mask">
								<div>
									<span> Beck’s</span>Print
								</div>
							</div> </a>
					</div>
				</div>
				<div class="element cat3 cat2" data-category="cat3 cat2">
					<div class="isotope-block">
						<a class="group1" href="work_img.html"><img
							src="public/img/gallery/img-10.jpg" alt="" />
							<div class="mask">
								<div>
									<span>Sumsung</span>Web
								</div>
							</div> </a>
					</div>
				</div>
				<div class="element cat4 cat1" data-category="cat4 cat1">
					<div class="isotope-block">
						<a class="group1" href="work_vimeo.html"><img
							src="public/img/gallery/img-11.jpg" alt="" />
							<div class="mask">
								<div>
									<span>Tic Tac</span>Web
								</div>
							</div> </a>
					</div>
				</div>
				<div class="element cat2 cat1" data-category="cat2 cat1">
					<div class="isotope-block">
						<a class="group1" href="work_youtube.html"><img
							src="public/img/gallery/img-12.jpg" alt="" />
							<div class="mask">
								<div>
									<span>iMiev</span>3D, Motion
								</div>
							</div> </a>
					</div>
				</div>
			</div>
			<div class="black-block-bg">
				<div class="container">
					<div class="row">
						<div class="span12">
							<h3>What Our Clients Say</h3>
						</div>
					</div>
					<div class="row">
						<div class="blockquote-block span12">
							<div class="blockquote_carousel responsive clearfix">
								<ul id="foo" class="clearfix">
									<li>
										<blockquote class="clearfix">
											<span class="blockquote-author"><strong>John
													Doe</strong>director &amp; founder</span> <span class="extra-wrap">Ut
												pharetra augue nec augue. Nam elit agna, endrerit sit amet,
												tincidunt ac, viverra sed, nulla. Donec porta diam eu massa.
												Quisque diam lorem, interdum. vitae,dapibus ac, scelerisque
												vitae, pede. Donec eget tellus non erat lacinia fermentum.
												Donec in velit vel ipsum auctor pulvinar. Vestibulum iaculis
												lacinia est. Proin dictum elementum velit. Fusce euismod
												consequat ante. Lorem ipsum dolor sit amet, consectetuer
												adipisMauris accumsan nulla vel diam. Sed in lacus ut enim
												adipiscing aliquet.</span>
										</blockquote>
									</li>
									<li>
										<blockquote class="clearfix">
											<span class="blockquote-author"><strong>John
													Doe</strong>director &amp; founder</span> <span class="extra-wrap">Ut
												pharetra augue nec augue. Nam elit agna, endrerit sit amet,
												tincidunt ac, viverra sed, nulla. Donec porta diam eu massa.
												Quisque diam lorem, interdum. vitae,dapibus ac, scelerisque
												vitae, pede. Donec eget tellus non erat lacinia fermentum.
												Donec in velit vel ipsum auctor pulvinar. Vestibulum iaculis
												lacinia est. Proin dictum elementum velit. Fusce euismod
												consequat ante. Lorem ipsum dolor sit amet, consectetuer
												adipisMauris accumsan nulla vel diam. Sed in lacus ut enim
												adipiscing aliquet.</span>
										</blockquote>
									</li>
								</ul>
								<a id="prev" class="prev" href="#"></a> <a id="next"
									class="next" href="#"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="white-block-bg">
				<div class="container">
					<div class="row">
						<div class="span12">
							<h3>Our Clients</h3>
						</div>
					</div>
					<div class="row">
						<div class="span12">
							<div class="client_carousel responsive clearfix">
								<ul id="foo2" class="clearfix">
									<li><img src="public/img/clients/client-1.png" alt=""></li>
									<li><img src="public/img/clients/client-2.png" alt=""></li>
									<li><img src="public/img/clients/client-3.png" alt=""></li>
									<li><img src="public/img/clients/client-4.png" alt=""></li>
									<li><img src="public/img/clients/client-5.png" alt=""></li>
									<li><img src="public/img/clients/client-6.png" alt=""></li>
									<li><img src="public/img/clients/client-1.png" alt=""></li>
									<li><img src="public/img/clients/client-2.png" alt=""></li>
									<li><img src="public/img/clients/client-3.png" alt=""></li>
									<li><img src="public/img/clients/client-4.png" alt=""></li>
									<li><img src="public/img/clients/client-5.png" alt=""></li>
									<li><img src="public/img/clients/client-6.png" alt=""></li>
								</ul>
								<a id="prev2" class="prev2 icon-left-thin" href="#"></a> <a
									id="next2" class="next2 icon-right-thin" href="#"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="separator2">
				<div class="pattern"></div>
				<div class="separator2-bg"></div>
				<div class="container z5">
					<div class="row">
						<div class="span12">
							<h3 class="white">Latest Dribbble Shots</h3>
							<ul class="shots thumbs">

							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="fix-menu"></div>
		</div>
		<!--==============================services=================================-->
		<div id="services">
			<div class="title-bg">
				<div class="container">
					<div class="row">
						<div class="span12">
							<h2>Our Services</h2>
						</div>
					</div>
				</div>
			</div>
			<div class="black-block-bg">
				<div class="container">
					<div class="row">
						<div class="span12 services">
							<h3>The Process</h3>
							<ul class="process-container">
								<li class="process-item process-item1" data-show="1">
									<figure class="special_color icon-coffee"></figure> <strong>Meet</strong>
									<div class="circle">
										<span class="num">1</span>
									</div>
								</li>
								<li class="process-item process-item2" data-show="2">
									<figure class="special_color icon-calendar"></figure> <strong>Plan</strong>
									<div class="circle">
										<span class="num">2</span>
									</div>
								</li>
								<li class="process-item process-item3" data-show="3">
									<figure class="special_color icon-magic"></figure> <strong>Design</strong>
									<div class="circle">
										<span class="num">3</span>
									</div>
								</li>
								<li class="process-item process-item4" data-show="4">
									<figure class="special_color icon-wrench"></figure> <strong>Build</strong>
									<div class="circle">
										<span class="num">4</span>
									</div>
								</li>
								<li class="process-item process-item5" data-show="5">
									<figure class="special_color icon-rocket"></figure> <strong>Launch</strong>
									<div class="circle">
										<span class="num">5</span>
									</div>
								</li>
								<li class="process-item process-item6" data-show="6">
									<figure class="special_color icon-signal"></figure> <strong>Grow</strong>
									<div class="circle">
										<span class="num">6</span>
									</div>
								</li>
							</ul>
							<div class="process_description_wrap">
								<div class="process_description_1">Neque porro quisquam
									est, qui dolorem ipsum quia dolor sit amet, nsectetur, adipisci
									velit, sed quia non numquam eius modi tempora incidunt ut
									labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad
									minima veniam, quis nostrum exercitationem ullam corporis
									suscipit laboriosam, nisi ut aliquid.</div>
								<div class="process_description_2">Lorem ipsum dolor sit
									amet, consectetur adipisicing elit. Aperiam, illo, quis atque
									error voluptatem excepturi et reprehenderit dignissimos
									asperiores sint dolores ad consequuntur iste totam eum
									perferendis eligendi molestias rerum.</div>
								<div class="process_description_3">Neque porro quisquam
									est, qui dolorem ipsum quia dolor sit amet, nsectetur, adipisci
									velit, sed quia non numquam eius modi tempora incidunt ut
									labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad
									minima veniam, quis nostrum exercitationem ullam corporis
									suscipit laboriosam, nisi ut aliquid.</div>
								<div class="process_description_4">Lorem ipsum dolor sit
									amet, consectetur adipisicing elit. Aperiam, illo, quis atque
									error voluptatem excepturi et reprehenderit dignissimos
									asperiores sint dolores ad consequuntur iste totam eum
									perferendis eligendi molestias rerum.</div>
								<div class="process_description_5">Neque porro quisquam
									est, qui dolorem ipsum quia dolor sit amet, nsectetur, adipisci
									velit, sed quia non numquam eius modi tempora incidunt ut
									labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad
									minima veniam, quis nostrum exercitationem ullam corporis
									suscipit laboriosam, nisi ut aliquid.</div>
								<div class="process_description_6">Lorem ipsum dolor sit
									amet, consectetur adipisicing elit. Aperiam, illo, quis atque
									error voluptatem excepturi et reprehenderit dignissimos
									asperiores sint dolores ad consequuntur iste totam eum
									perferendis eligendi molestias rerum.</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container padding-bottom">
				<div class="row">
					<div class="span12">
						<h3>Main Services</h3>
						<p>Vestibulum ante ipsum primis in faucibus orci luctus et
							ultrices posuere cubilia Curae; Suspendisse sollicitudin velit
							sed leo. Ut pharetra augue nec augue. Nam elit agna,endrerit sit
							amet, tincidunt ac, viverra sed, nulla. Donec porta diam eu
							massa. Quisque diam lorem, interdum vitae,dapibus ac, scelerisque
							vitae, pede.</p>
						<ul class="main_services">
							<li class="services-list clearfix">
								<div class="m_service maxheight3">
									<span class="icon-tag"></span>
									<div class="title">Branding</div>
									<div class="service_description">
										<a class="desc_inner" href="#"> <span> <strong>Branding</strong>
										</span> Vestibulum ante ipsum primis in faucibus orci luctus et
											ultrices pos- uere cubilia Curae; Suspendisse sollicitudin
											velit sed leo.
										</a>
									</div>
								</div>
								<div class="m_service maxheight3">
									<span class="icon-magic"></span>
									<div class="title">Digital Design</div>
									<div class="service_description">
										<a class="desc_inner" href="#"> <span> <strong>Digital
													Design</strong>
										</span> Vestibulum ante ipsum primis in faucibus orci luctus et
											ultrices pos- uere cubilia Curae; Suspendisse sollicitudin
											velit sed leo.
										</a>
									</div>
								</div>
								<div class="m_service maxheight3">
									<span class="icon-cogs"></span>
									<div class="title">Web Development</div>
									<div class="service_description">
										<a class="desc_inner" href="#"> <span> <strong>Web
													Development</strong>
										</span> Vestibulum ante ipsum primis in faucibus orci luctus et
											ultrices pos- uere cubilia Curae; Suspendisse sollicitudin
											velit sed leo.
										</a>
									</div>
								</div>
								<div class="m_service maxheight3">
									<span class="icon-mobile-phone"></span>
									<div class="title">Mobile</div>
									<div class="service_description">
										<a class="desc_inner" href="#"> <span> <strong>Mobile</strong>
										</span> Vestibulum ante ipsum primis in faucibus orci luctus et
											ultrices pos- uere cubilia Curae; Suspendisse sollicitudin
											velit sed leo.
										</a>
									</div>
								</div>
								<div class="m_service maxheight3">
									<span class="extra icon-film"></span>
									<div class="title">Animation &amp; Motion</div>
									<div class="service_description">
										<a class="desc_inner" href="#"> <span> <strong>Animation
													&amp; Motion</strong>
										</span> Vestibulum ante ipsum primis in faucibus orci luctus et
											ultrices pos- uere cubilia Curae; Suspendisse sollicitudin
											velit sed leo.
										</a>
									</div>
								</div>
							</li>
							<li class="services-list clearfix">
								<div class="m_service maxheight3">
									<span class="icon-comments-alt"></span>
									<div class="title">Social Media</div>
									<div class="service_description">
										<a class="desc_inner" href="#"> <span> <strong>Social
													Media</strong>
										</span> Vestibulum ante ipsum primis in faucibus orci luctus et
											ultrices pos- uere cubilia Curae; Suspendisse sollicitudin
											velit sed leo.
										</a>
									</div>
								</div>
								<div class="m_service maxheight3">
									<span class="extra icon-shopping-cart"></span>
									<div class="title">E-commerce</div>
									<div class="service_description">
										<a class="desc_inner" href="#"> <span> <strong>E-commerce</strong>
										</span> Vestibulum ante ipsum primis in faucibus orci luctus et
											ultrices pos- uere cubilia Curae; Suspendisse sollicitudin
											velit sed leo.
										</a>
									</div>
								</div>
								<div class="m_service maxheight3">
									<span class="icon-pencil"></span>
									<div class="title">Copy Writing</div>
									<div class="service_description">
										<a class="desc_inner" href="#"> <span> <strong>Copy
													Writing</strong>
										</span> Vestibulum ante ipsum primis in faucibus orci luctus et
											ultrices pos- uere cubilia Curae; Suspendisse sollicitudin
											velit sed leo.
										</a>
									</div>
								</div>
								<div class="m_service maxheight3">
									<span class="extra icon-bar-chart"></span>
									<div class="title">Analytics</div>
									<div class="service_description">
										<a class="desc_inner" href="#"> <span> <strong>Analytics</strong>
										</span> Vestibulum ante ipsum primis in faucibus orci luctus et
											ultrices pos- uere cubilia Curae; Suspendisse sollicitudin
											velit sed leo.
										</a>
									</div>
								</div>
								<div class="m_service maxheight3">
									<span class="extra icon-search"></span>
									<div class="title">SEO</div>
									<div class="service_description">
										<a class="desc_inner" href="#"> <span> <strong>SEO</strong>
										</span> Vestibulum ante ipsum primis in faucibus orci luctus et
											ultrices pos- uere cubilia Curae; Suspendisse sollicitudin
											velit sed leo.
										</a>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div id="separator3">
				<div class="pattern"></div>
				<div class="separator3-bg"></div>
				<div class="container">
					<span>Interested in working with us? Or got a question?<br>
							Maybe just want to say hello?</span> <a href="#contact"
						class="btn animated-btn special_color">Contact Us Now</a>
				</div>
			</div>
			<div class="fix-menu"></div>
		</div>
		<!--==============================journal=================================-->
		<div id="journal">
			<div class="title-bg">
				<div class="container">
					<div class="row">
						<div class="span12">
							<h2>Journal</h2>
						</div>
					</div>
				</div>
			</div>
			<div class="container padding-bottom">
				<div class="row">
					<div class="span12">
						<ul class="list-journal">
							<li>
								<div class="journal-date">
									28<span>Mar’13</span>
								</div> <a href="journal_post.html" class="journal-link icon-coffee"><span>Read
										More</span></a>
								<div class="journal-content">
									<h3>Fusce euismod consequat ante</h3>
									Posted by <a href="#">John Doe</a> in <a href="#">Project
										Launches</a> with <a href="#">5 comments</a>
								</div>
							</li>
							<li>
								<div class="journal-date">
									27<span>Mar’13</span>
								</div> <a href="journal_post.html" class="journal-link icon-coffee"><span>Read
										More</span></a>
								<div class="journal-content">
									<h3>Neque porro quisquam est, qui dolorem ipsum quia</h3>
									Posted by <a href="#">John Doe</a> in <a href="#">Project
										Launches</a> with <a href="#">5 comments</a>
								</div>
							</li>
							<li>
								<div class="journal-date">
									24<span>Mar’13</span>
								</div> <a href="journal_post.html" class="journal-link icon-coffee"><span>Read
										More</span></a>
								<div class="journal-content">
									<h3>Suspendisse sollicitudin velit sed leo</h3>
									Posted by <a href="#">John Doe</a> in <a href="#">Project
										Launches</a> with <a href="#">5 comments</a>
								</div>
							</li>
							<li>
								<div class="journal-date">
									19<span>Mar’13</span>
								</div> <a href="journal_post.html" class="journal-link icon-coffee"><span>Read
										More</span></a>
								<div class="journal-content">
									<h3>Pellentesque sed dolor</h3>
									Posted by <a href="#">John Doe</a> in <a href="#">Project
										Launches</a> with <a href="#">5 comments</a>
								</div>
							</li>
							<li>
								<div class="journal-date">
									18<span>Mar’13</span>
								</div> <a href="journal_post.html" class="journal-link icon-coffee"><span>Read
										More</span></a>
								<div class="journal-content">
									<h3>Aliquam erat volutpat duis ac turpis integer rutrum
										ante eu lacus</h3>
									Posted by <a href="#">John Doe</a> in <a href="#">Project
										Launches</a> with <a href="#">5 comments</a>
								</div>
							</li>
						</ul>
						<a href="journal_full.html"
							class="btn-1 btn-articles icon-align-justify">More Articles</a>
					</div>
				</div>
			</div>
			<div class="black-block-bg social-block">
				<div class="container">
					<div class="row">
						<div class="span6 social-block-facebook">
							<div class="social-block-title">
								<div class="fb"></div>
								<div class="extra-wrap">
									<strong>Like Us</strong><span>On Facebook</span>
								</div>
							</div>
							<div class="fb-like" data-href="http://google.com"
								data-send="false" data-width="450" data-show-faces="false"
								data-font="arial" data-colorscheme="dark"></div>
							<p>Ut pharetra augue nec augue. Nam elit agna, endrerit sit
								amet, tincidunt ac, viverra sed, nulla. Donec porta diam eu
								massa.</p>
							<a href="#" class="btn-4 btn-social icon-facebook-sign">See
								More on Facebook</a>
						</div>
						<div class="span6 social-block-twitter">
							<div class="social-block-title">
								<div class="twit"></div>
								<div class="extra-wrap">
									<strong class="special_color">Follow Us</strong><span>On
										Twitter</span>
								</div>
							</div>
							<a href="https://twitter.com/fanfbmltemplate"
								class="twitter-follow-button" data-show-count="false"
								data-show-screen-name="false">Follow @fanfbmltemplate</a>
							<script>
								!function(d, s, id) {
									var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/
											.test(d.location) ? 'http'
											: 'https';
									if (!d.getElementById(id)) {
										js = d.createElement(s);
										js.id = id;
										js.src = p
												+ '://platform.twitter.com/widgets.js';
										fjs.parentNode.insertBefore(js, fjs);
									}
								}(document, 'script', 'twitter-wjs');
							</script>
							<div class="tweet"></div>
							<a href="#" class="btn-4 btn-social icon-twitter-sign">Read
								More on Twitter</a>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="span12 newsletter-form">
						<h3>Newsletter Sign Up</h3>
						<form id="form1" class="clearfix">
							<div class="success">
								Your subscribe request<br> has been sent!
							</div>
							<fieldset>
								<label class="email clearfix"> <input type="email"
									value="Enter your email here to receive our news and updates"><span
									class="error">*This is not a valid email address.</span>
								</label> <a href="#" data-type="submit" class="btn btn-3 icon-envelope"></a>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
			<div id="separator5">
				<div class="pattern"></div>
				<div class="separator5-bg"></div>
				<div class="container">
					<span>This is a premium HTML template for your small or big
						business</span> <a href="#" class="btn special_color">Buy Now</a>
				</div>
			</div>
			<div class="fix-menu"></div>
		</div>
		<!--==============================careers=================================-->
		<div id="careers">
			<div class="title-bg">
				<div class="container">
					<div class="row">
						<div class="span12">
							<h2>Careers</h2>
						</div>
					</div>
				</div>
			</div>
			<div class="container padding-bottom">
				<div class="row">
					<div class="span12">
						<h3>Why Join Our Team</h3>
						<p>Nam elit agna, endrerit sit amet, tincidunt ac, viverra
							sed, nulla. Donec porta diam eu massa. Quisque diam lorem,
							interdum vitae, dapibus ac, scelerisque vitae, pede. Donec eget
							tellus non erat lacinia fermentum. Donec in velit vel ipsum
							auctor pulvinar. Vestibulum iaculis lacinia est. Proin dictum
							elementum velit.</p>
						<div class="row">
							<div class="span5">
								<ul class="join-list">
									<li class="join-box">
										<figure class="special_color">
											<span class="icon-gift"></span>
										</figure>
										<div>
											<h5>Happy Joker</h5>
											Vestibulum ante ipsum primis in faucibus orci luctus et
											ultrices posuere cubilia Curae.
										</div>
									</li>
									<li class="join-box">
										<figure class="special_color">
											<span class="icon-sun"></span>
										</figure>
										<div>
											<h5>Sunny Hours</h5>
											Nam elit agna,endrerit sit amet, tincidunt ac, viverra sed,
											nulla. Donec porta diam eu massa.
										</div>
									</li>
								</ul>
							</div>
							<div class="span5 offset1">
								<ul class="join-list">
									<li class="join-box">
										<figure class="special_color">
											<span class="icon-plane"></span>
										</figure>
										<div>
											<h5>Profitable Travel</h5>
											Quisque diam lorem, interdum vitae,dapibus ac, scelerisque
											vitae, pede. Donec eget tellus non erat.
										</div>
									</li>
									<li class="join-box">
										<figure class="special_color">
											<span class="icon-briefcase"></span>
										</figure>
										<div>
											<h5>Vacant Desk</h5>
											Vestibulum iaculis lacinia est. Proin dictum elementum velit.
											Fusce euismod consequat ante.
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="black-block-bg">
				<div class="container">
					<div class="row">
						<h3 class="m_bot1">Our Current Vacancies</h3>
						<div class="responsive-tabs">
							<h6>Interactive Web Designer</h6>
							<div>
								Aliquam dapibus tincidunt metus. Praesent justo dolor, lobortis
								quis, lobortis dignissim, pulvinar ac, lorem. Vestibulum sed
								ante. Donec sagittis euismod purus.Sed ut perspiciatis unde
								omnis iste natus error sit voluptatem accusantium doloremque
								laudantium, totam rem aperiam eaque ipsa quae ab illo inventore
								veritatis et quasi architecto beatae vitae dicta sunt explicabo.
								<ul class="accord-list">
									<li>Vivamus eget nibh. Etiam cursus leo vel metus. Nulla
										facilisi. Aenean nec eros.</li>
									<li>Vestibulum ante ipsum primis in faucibus orci luctus
										et ultrices.</li>
									<li>Nam elit agna,endrerit sit amet, tincidunt ac, viverra
										sed, nulla.</li>
									<li>Proin dictum elementum velit. Fusce euismod consequat
										ante.</li>
								</ul>
								<div>Lorem ipsum dolor sit amet, consectetuer adipis.
									Mauris accumsan nulla vel diam. Sed in lacus ut enim adipiscing
									aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod
									in, auctor ut, ligula. Aliquam dapibus tincidunt metus.
									Praesent justo dolor, lobortis quis, lobortis dignissim,
									pulvinar ac, lorem. Vestibulum sed ante. Donec sagittis euismod
									purus.</div>

								<a href="#" class="icon-pencil">Apply For This Job</a>
							</div>
							<h6>Project Manager</h6>
							<div>
								<div>Lorem ipsum dolor sit amet, consectetuer adipis.
									Mauris accumsan nulla vel diam. Sed in lacus ut enim adipiscing
									aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod
									in, auctor ut, ligula. Aliquam dapibus tincidunt metus.
									Praesent justo dolor, lobortis quis, lobortis dignissim,
									pulvinar ac, lorem. Vestibulum sed ante. Donec sagittis euismod
									purus.</div>
								<ul class="accord-list">
									<li>Vivamus eget nibh. Etiam cursus leo vel metus. Nulla
										facilisi. Aenean nec eros.</li>
									<li>Vestibulum ante ipsum primis in faucibus orci luctus
										et ultrices.</li>
									<li>Nam elit agna,endrerit sit amet, tincidunt ac, viverra
										sed, nulla.</li>
									<li>Proin dictum elementum velit. Fusce euismod consequat
										ante.</li>
								</ul>
								<div>Aliquam dapibus tincidunt metus. Praesent justo
									dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem.
									Vestibulum sed ante. Donec sagittis euismod purus.Sed ut
									perspiciatis unde omnis iste natus error sit voluptatem
									accusantium doloremque laudantium, totam rem aperiam eaque ipsa
									quae ab illo inventore veritatis et quasi architecto beatae
									vitae dicta sunt explicabo.</div>

								<a href="#" class="icon-pencil">Apply For This Job</a>
							</div>
							<h6>Interactive Web Developer</h6>
							<div>
								Aliquam dapibus tincidunt metus. Praesent justo dolor, lobortis
								quis, lobortis dignissim, pulvinar ac, lorem. Vestibulum sed
								ante. Donec sagittis euismod purus.Sed ut perspiciatis unde
								omnis iste natus error sit voluptatem accusantium doloremque
								laudantium, totam rem aperiam eaque ipsa quae ab illo inventore
								veritatis et quasi architecto beatae vitae dicta sunt explicabo.
								<ul class="accord-list">
									<li>Vivamus eget nibh. Etiam cursus leo vel metus. Nulla
										facilisi. Aenean nec eros.</li>
									<li>Vestibulum ante ipsum primis in faucibus orci luctus
										et ultrices.</li>
									<li>Nam elit agna,endrerit sit amet, tincidunt ac, viverra
										sed, nulla.</li>
									<li>Proin dictum elementum velit. Fusce euismod consequat
										ante.</li>
								</ul>
								<div>Lorem ipsum dolor sit amet, consectetuer adipis.
									Mauris accumsan nulla vel diam. Sed in lacus ut enim adipiscing
									aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod
									in, auctor ut, ligula. Aliquam dapibus tincidunt metus.
									Praesent justo dolor, lobortis quis, lobortis dignissim,
									pulvinar ac, lorem. Vestibulum sed ante. Donec sagittis euismod
									purus.</div>

								<a href="#" class="icon-pencil">Apply For This Job</a>
							</div>
							<h6>Copywriter</h6>
							<div>
								<div>Lorem ipsum dolor sit amet, consectetuer adipis.
									Mauris accumsan nulla vel diam. Sed in lacus ut enim adipiscing
									aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod
									in, auctor ut, ligula. Aliquam dapibus tincidunt metus.
									Praesent justo dolor, lobortis quis, lobortis dignissim,
									pulvinar ac, lorem. Vestibulum sed ante. Donec sagittis euismod
									purus.</div>
								<ul class="accord-list">
									<li>Vivamus eget nibh. Etiam cursus leo vel metus. Nulla
										facilisi. Aenean nec eros.</li>
									<li>Vestibulum ante ipsum primis in faucibus orci luctus
										et ultrices.</li>
									<li>Nam elit agna,endrerit sit amet, tincidunt ac, viverra
										sed, nulla.</li>
									<li>Proin dictum elementum velit. Fusce euismod consequat
										ante.</li>
								</ul>
								<div>Aliquam dapibus tincidunt metus. Praesent justo
									dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem.
									Vestibulum sed ante. Donec sagittis euismod purus.Sed ut
									perspiciatis unde omnis iste natus error sit voluptatem
									accusantium doloremque laudantium, totam rem aperiam eaque ipsa
									quae ab illo inventore veritatis et quasi architecto beatae
									vitae dicta sunt explicabo.</div>
								<a href="#" class="icon-pencil">Apply For This Job</a>
							</div>
							<h6>Lead Programmer</h6>
							<div>
								Aliquam dapibus tincidunt metus. Praesent justo dolor, lobortis
								quis, lobortis dignissim, pulvinar ac, lorem. Vestibulum sed
								ante. Donec sagittis euismod purus.Sed ut perspiciatis unde
								omnis iste natus error sit voluptatem accusantium doloremque
								laudantium, totam rem aperiam eaque ipsa quae ab illo inventore
								veritatis et quasi architecto beatae vitae dicta sunt explicabo.
								<ul class="accord-list">
									<li>Vivamus eget nibh. Etiam cursus leo vel metus. Nulla
										facilisi. Aenean nec eros.</li>
									<li>Vestibulum ante ipsum primis in faucibus orci luctus
										et ultrices.</li>
									<li>Nam elit agna,endrerit sit amet, tincidunt ac, viverra
										sed, nulla.</li>
									<li>Proin dictum elementum velit. Fusce euismod consequat
										ante.</li>
								</ul>
								<div>Lorem ipsum dolor sit amet, consectetuer adipis.
									Mauris accumsan nulla vel diam. Sed in lacus ut enim adipiscing
									aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod
									in, auctor ut, ligula. Aliquam dapibus tincidunt metus.
									Praesent justo dolor, lobortis quis, lobortis dignissim,
									pulvinar ac, lorem. Vestibulum sed ante. Donec sagittis euismod
									purus.</div>

								<a href="#" class="icon-pencil">Apply For This Job</a>
							</div>
							<h6>Customer Support Manager</h6>
							<div>
								<div>Lorem ipsum dolor sit amet, consectetuer adipis.
									Mauris accumsan nulla vel diam. Sed in lacus ut enim adipiscing
									aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod
									in, auctor ut, ligula. Aliquam dapibus tincidunt metus.
									Praesent justo dolor, lobortis quis, lobortis dignissim,
									pulvinar ac, lorem. Vestibulum sed ante. Donec sagittis euismod
									purus.</div>
								<ul class="accord-list">
									<li>Vivamus eget nibh. Etiam cursus leo vel metus. Nulla
										facilisi. Aenean nec eros.</li>
									<li>Vestibulum ante ipsum primis in faucibus orci luctus
										et ultrices.</li>
									<li>Nam elit agna,endrerit sit amet, tincidunt ac, viverra
										sed, nulla.</li>
									<li>Proin dictum elementum velit. Fusce euismod consequat
										ante.</li>
								</ul>
								<div>Aliquam dapibus tincidunt metus. Praesent justo
									dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem.
									Vestibulum sed ante. Donec sagittis euismod purus.Sed ut
									perspiciatis unde omnis iste natus error sit voluptatem
									accusantium doloremque laudantium, totam rem aperiam eaque ipsa
									quae ab illo inventore veritatis et quasi architecto beatae
									vitae dicta sunt explicabo.</div>
								<a href="#" class="icon-pencil">Apply For This Job</a>
							</div>
							<h6>Technical Animator</h6>
							<div>
								Aliquam dapibus tincidunt metus. Praesent justo dolor, lobortis
								quis, lobortis dignissim, pulvinar ac, lorem. Vestibulum sed
								ante. Donec sagittis euismod purus.Sed ut perspiciatis unde
								omnis iste natus error sit voluptatem accusantium doloremque
								laudantium, totam rem aperiam eaque ipsa quae ab illo inventore
								veritatis et quasi architecto beatae vitae dicta sunt explicabo.
								<ul class="accord-list">
									<li>Vivamus eget nibh. Etiam cursus leo vel metus. Nulla
										facilisi. Aenean nec eros.</li>
									<li>Vestibulum ante ipsum primis in faucibus orci luctus
										et ultrices.</li>
									<li>Nam elit agna,endrerit sit amet, tincidunt ac, viverra
										sed, nulla.</li>
									<li>Proin dictum elementum velit. Fusce euismod consequat
										ante.</li>
								</ul>
								<div>Lorem ipsum dolor sit amet, consectetuer adipis.
									Mauris accumsan nulla vel diam. Sed in lacus ut enim adipiscing
									aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod
									in, auctor ut, ligula. Aliquam dapibus tincidunt metus.
									Praesent justo dolor, lobortis quis, lobortis dignissim,
									pulvinar ac, lorem. Vestibulum sed ante. Donec sagittis euismod
									purus.</div>

								<a href="#" class="icon-pencil">Apply For This Job</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="separator4">
				<div class="pattern"></div>
				<div class="separator4-bg"></div>
				<div class="container">
					<span>Is your position not listed?</span> <a href="#contact"
						class="btn animated-btn special_color">Email Us Now</a>
				</div>
			</div>
			<div class="fix-menu"></div>
		</div>
		<!--==============================contact=================================-->
		<div id="contact">
			<div class="title-bg">
				<div class="container">
					<div class="row">
						<div class="span12">
							<h2>Contact Us</h2>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="span4">
						<h3>Studio Location</h3>
						<address class="address">
							<strong>9870 St Vincent Place, <br> Glasgow, DC 45
									Fr 45.</strong> <span>Freephone: </span>+1 800 559 6580<br>
							<span>Telephone: </span>+1 800 603 6035<br>
							<span>FAX: </span>+1 800 889 9898<br>
							<span>Skype: </span>skype.name<br>
							<span>Email: </span><a href="#">info@companyname.com</a>
						</address>
					</div>
					<div class="span8">
						<h3>Get In Touch</h3>
						<form id="contact-form" class="contact-form">
							<div class="required-info">All Fields are required</div>
							<div class="success">Contact form submitted!</div>
							<fieldset>
								<div class="input-1">
									<label class="name"> <input type="text"
										value="Your Name"><br>
									<span class="error">*This is not a valid name.</span><span
										class="empty">*This field is required.</span></label>
								</div>
								<div class="input-2">
									<label class="email"> <input type="email" value="Email"><br>
									<span class="error">*This is not a valid email address.</span><span
										class="empty">*This field is required.</span></label>
								</div>
								<label class="message"> <textarea>Message</textarea><br>
								<span class="error">*The message is too short.</span><span
									class="empty">*This field is required.</span></label>
								<div class="clearfix"></div>
								<div class="contact-wrapper clearfix">
									<div class="anti-spam">
										<label class="spam-filter clearfix"> <strong><i>Anti-spam
													test:</i> <br>4 + 4 =</strong> <input type="text" class="anti"><span
											class="error">*This is not a valid value.</span><span
											class="empty">*This field is required.</span></label>
									</div>
									<a class="btn btn-3 icon-envelope" data-type="submit">Send
										Message</a>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
			<div id="map_canvas"></div>
			<div class="black-block-bg social-icons2-block">
				<div class="container">
					<div class="row">
						<div class="span12">
							<span><strong>Stay </strong>Connected</span>
							<div class="social-icons2 clearfix">
								<a href="#" data-toggle="tooltip" title="Facebook"
									class="facebook icon-facebook"></a> <a href="#"
									data-toggle="tooltip" title="Twitter"
									class="twitter icon-twitter"></a> <a href="#"
									data-toggle="tooltip" title="Pinterest"
									class="pinterest icon-pinterest"></a> <a href="#"
									data-toggle="tooltip" title="LinkedIn"
									class="flickr icon-linkedin"></a> <a href="#"
									data-toggle="tooltip" title="Google+" class="gplus icon-gplus"></a>
								<a href="#" data-toggle="tooltip" title="Flickr"
									class="flickr icon-flickr"></a> <a href="#"
									data-toggle="tooltip" title="Blogger"
									class="blogger icon-blogger"></a> <a href="#"
									data-toggle="tooltip" title="Dribbble"
									class="dribbble icon-dribbble"></a> <a href="#"
									data-toggle="tooltip" title="Vimeo" class="vimeo icon-vimeo"></a>
								<a href="#" data-toggle="tooltip" title="YouTube"
									class="youtube icon-youtube"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--==============================footer=================================-->
		<footer>
			<div class="container">
				<div class="row">
					<div class="span12">
						Copyright &copy; 2013 Loft Studio. <span>All rights
							reserved.</span>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<!-- Style chooser start -->
	<div id="stylechooser">
		<div class="easyBox flat">
			<h6 class="light">Choose Main Color</h6>
			<a href="#" id="styleToggle"><i class="icon-magic"></i>Settings</a>
		</div>
		<div class="easyBox">
			<div class="mkSpace">
				<ul class="demoList clearfix">
					<li><a href="#" data-value="yellow"><span
							class="demoColor" style="background: #ffbe00;"></span></a></li>
					<li><a href="#" data-value="orange"><span
							class="demoColor" style="background: #f5791f;"></span></a></li>
					<li><a href="#" data-value="red" class=""><span
							class="demoColor" style="background: #dc3c35;"></span></a></li>
					<li><a href="#" data-value="dark-cherry"><span
							class="demoColor" style="background: #ed424b;"></span></a></li>
					<li><a href="#" data-value="cherry"><span
							class="demoColor" style="background: #b61732;"></span></a></li>

					<li><a href="#" data-value="default" class="demoActive"><span
							class="demoColor" style="background: #81ba10;"></span></a></li>
					<li><a href="#" data-value="dark-green"><span
							class="demoColor" style="background: #14ad80;"></span></a></li>
					<li><a href="#" data-value="aqua"><span class="demoColor"
							style="background: #00abbd;"></span></a></li>
					<li><a href="#" data-value="blue"><span class="demoColor"
							style="background: #0f8bd2;"></span></a></li>
					<li><a href="#" data-value="purple"><span
							class="demoColor" style="background: #7c529d;"></span></a></li>
				</ul>
			</div>
			<div class="mkSpace var2">
				<a href="#" id="demoReset" class="choose_btn">Reset</a>
			</div>
		</div>
	</div>
	<!-- Style chooser end -->
	<script
		src="../../../ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>
	<script src="public/js/jquery.easing.1.3.js"></script>
	<script src="public/js/jquery.carouFredSel-6.2.0.js"></script>
	<script src="public/js/jquery.mousewheel.min.js"></script>
	<script src="public/js/jquery.touchSwipe.min.js"></script>
	<script src="public/js/responsiveTabs.js"></script>
	<script src="public/js/forms.js"></script>
	<script src="public/js/Form.js"></script>
	<script>
		//   
		$(window).load(function() {
			"use strict";
			$('#contact-form').forms({})
		})
		//
	</script>
	<!-- Google map -->
	<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<!--/Google map -->
	<script>
		//         
		$(function() {
			"use strict";
			/*===========================================================*/
			/*  Google Map
			/*===========================================================*/
			function initializeGoogleMap() {
				var latlng = new google.maps.LatLng(34.001, -118.469);
				var settings = {
					zoom : 17,
					center : latlng,
					mapTypeControl : false,
					scrollwheel : false,
					mapTypeControlOptions : {
						style : google.maps.MapTypeControlStyle.DROPDOWN_MENU
					},
					navigationControl : false,
					navigationControlOptions : {
						style : google.maps.NavigationControlStyle.SMALL
					},
					mapTypeId : google.maps.MapTypeId.ROADMAP
				};
				var map = new google.maps.Map(document
						.getElementById("map_canvas"), settings);
				var image = 'img/map_marker.png';
				var myLatLng = new google.maps.LatLng(34.001, -118.469);
				var beachMarker = new google.maps.Marker({
					position : myLatLng,
					map : map,
					icon : image
				});
			}
			/* Initialize GoogleMap */
			initializeGoogleMap();

			$('#foo').carouFredSel({
				auto : false,
				responsive : true,
				width : '100%',
				prev : '#prev',
				next : '#next',
				scroll : 1,
				items : {
					height : 'auto',
					visible : {
						min : 1,
						max : 1
					}
				},
				mousewheel : true,
				swipe : {
					onMouse : true,
					onTouch : true
				}
			});
			$('#foo2').carouFredSel({
				auto : false,
				responsive : true,
				width : '100%',
				prev : '#prev2',
				next : '#next2',
				scroll : 1,
				items : {
					height : 'auto',
					visible : {
						min : 2,
						max : 6
					}
				},

				mousewheel : true,
				swipe : {
					onMouse : true,
					onTouch : true
				}
			});
		});

		//
	</script>
	<script src="public/js/bootstrap.js"></script>
	<script src="public/js/epicslider.js"></script>
	<script src="public/js/jquery.mobile-touch-swipe-1.0.js"></script>
	<script src="public/js/jquery.sticky.js"></script>
	<script src="public/js/jquery.scrollTo.min.js"></script>
	<script src="public/js/jquery.localscroll-1.2.7-min.js"></script>
	<script src="public/js/jquery.parallax-1.1.3.js"></script>
	<script src="public/js/jquery.flexslider.js"></script>
	<script src="public/js/jquery.equalheights.js"></script>
	<script src="public/js/jquery.isotope.js"></script>
	<!--<script src="public/js/process-gallery.js"></script>-->
	<script src="public/twitter/jquery.tweet.js"></script>
	<script src="public/js/chooser.js"></script>
	<script src="public/js/jquery.jribbble-0.11.0.ugly.js"></script>
	<script src="public/js/view9df2.js?auto"></script>
	<script src="public/js/jquery.cookie.js"></script>
	<script src="public/js/set_colors.js"></script>
	<script>
		//         
		var udt_global_vars = {
			"epic_slideshow" : "1",
			"epic_slide_timer" : "4000",
			"epic_slide_animation_speed" : "600",
			"epic_slide_animation" : "topToBottom",
			"epic_mobile_slide_animation" : "topToBottom",
			"epic_easing" : "200"
		};
		$(window)
				.load(
						function() {
							var epic_easing_str = 'easeInOutCirc';
							var use_epic_slideshow = false;
							var use_epic_autoplay = false;
							if (udt_global_vars.epic_slideshow == '1') {
								use_epic_slideshow = true;
							}
							if (udt_global_vars.epic_autoplay == '1') {
								use_epic_autoplay = false;
							}

							//call slider
							$('#epicSlider')
									.epicSlider(
											{
												loop : true, //Boolean: whether slideshow should loop or not	
												slideShow : use_epic_slideshow, //Boolean: use slideshow or not
												autoPlay : true, //Boolean: autoplay uplon load or not
												slideShowInterval : parseInt(
														udt_global_vars.epic_slide_timer,
														10), //Integer: slideshow cycling speed, in milliseconds
												transitionSpeed : parseInt(
														udt_global_vars.epic_slide_animation_speed,
														10), //Integer: transitions speed, in milliseconds
												startSlide : 0, //Integer: starts at 0
												shuffleSlides : false, //Boolean: shuffle slides or not
												easing : epic_easing_str, //String: easing method - see http://jqueryui.com/demos/effect/easing.html
												fx : udt_global_vars.epic_slide_animation, //String: none, fade, leftToRight, topToBottom 
												fxmobile : udt_global_vars.epic_mobile_slide_animation, //String: mobile effect -  none, fade, leftToRight, topToBottom 
												pattern : true
											//Boolean: add pattern or not
											});

							/*Flexslider setup*/
							$('.flexslider').flexslider({
								animation : "slide",
								animationLoop : false,
								slideshow : false,
								itemWidth : 635,
								itemMargin : 0,
								move : 1,
								minItems : 1,
								maxItems : 3,
								start : function() {
								}
							});
							$('.flexslider1').flexslider({
								animation : "fade",
								controlNav : false,
								slideshowSpeed : 3000
							});
							/*Izotope*/
							var jQuerycontainer = jQuery('.portfolio');
							//Run to initialise column sizes
							updateSize();
							//Load masonry when images all loaded
							jQuerycontainer.imagesLoaded(function() {
								jQuerycontainer.isotope({
									// options
									itemSelector : '.element',
									layoutMode : 'masonry',
									transformsEnabled : false,
									columnWidth : function(containerWidth) {
										containerWidth = jQuerybrowserWidth;
										return Math.floor(containerWidth
												/ jQuerycols);
									}
								});
							});
							// update columnWidth on window resize
							jQuery(window).smartresize(function() {
								updateSize();
								jQuerycontainer.isotope('reLayout');
							});
							//Set item size
							function updateSize() {
								jQuerybrowserWidth = jQuerycontainer.width();
								jQuerycols = 6;
								if (jQuerybrowserWidth >= 1200) {
									jQuerycols = 6;
								} else if (jQuerybrowserWidth >= 800
										&& jQuerybrowserWidth < 1200) {
									jQuerycols = 4;
								} else if (jQuerybrowserWidth >= 401
										&& jQuerybrowserWidth < 800) {
									jQuerycols = 3;
								} else if (jQuerybrowserWidth < 401) {
									jQuerycols = 2;
								}
								//console.log("Browser width is:" + jQuerybrowserWidth);
								//console.log("Cols is:" + jQuerycols);

								// jQuerygutterTotal = jQuerycols * 20;
								jQuerybrowserWidth = jQuerybrowserWidth; // - jQuerygutterTotal;
								jQueryitemWidth = jQuerybrowserWidth
										/ jQuerycols;
								jQueryitemWidth = Math.floor(jQueryitemWidth);
								jQuery(".element").each(function(index) {
									jQuery(this).css({
										"width" : jQueryitemWidth + "px"
									});
								});
								var jQueryoptionSets = jQuery('#options .option-set'), jQueryoptionLinks = jQueryoptionSets
										.find('a');
								jQueryoptionLinks
										.click(function() {
											var jQuerythis = jQuery(this);
											// don't proceed if already selected
											if (jQuerythis.hasClass('selected')) {
												return false;
											}
											var jQueryoptionSet = jQuerythis
													.parents('.option-set');
											jQueryoptionSet.find('.selected')
													.removeClass('selected');
											jQuerythis.addClass('selected');
											// make option object dynamically, i.e. { filter: '.my-filter-class' }
											var options = {}, key = jQueryoptionSet
													.attr('data-option-key'), value = jQuerythis
													.attr('data-option-value');
											// parse 'false' as false boolean
											value = value === 'false' ? false
													: value;
											options[key] = value;
											if (key === 'layoutMode'
													&& typeof changeLayoutMode === 'function') {
												// changes in layout modes need extra logic
												changeLayoutMode(jQuerythis,
														options)
											} else {
												// otherwise, apply new options
												jQuerycontainer
														.isotope(options);
											}
											return false;
										});
							}
							;
						});
		$(document).ready(function() {
			/*responsive tabs*/
			RESPONSIVEUI.responsiveTabs();
		})
		//
	</script>
	<script src="public/js/script.js"></script>
	<script src="public/js/menu.js"></script>
	<!--social-->
	<div id="fb-root"></div>
	<script>
		//         
		(function(d, s, id) {
			"use strict";
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "../../../connect.facebook.net/ru_RU/all.js#xfbml=1";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
		//
	</script>
	<!-- </div> -->
</body>
</html>
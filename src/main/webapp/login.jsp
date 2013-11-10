<!DOCTYPE html>
<html>
<%
	String errorParam = request.getParameter("error");
	boolean errorExists = (errorParam != null);
%>
<head>
<title>Loft Studio</title>
<meta charset="utf-8">
<link rel="icon" href="public/img/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="public/img/favicon.ico"
	type="image/x-icon" />
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<link rel="stylesheet" href="public/css/bootstrap3.0.2.min.css"
	type="text/css" media="screen">
<link rel="stylesheet" href="public/css/responsive.css" type="text/css"
	media="screen">
<!-- font-awesome font -->
<link rel="stylesheet" href="public/font/font-awesome.css"
	type="text/css" media="screen">
<!-- fontello font -->
<link rel="stylesheet" href="public/font/fontello.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="public/css/style-mod.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="public/css/epicslider.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="public/css/animation.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="public/css/flexslider.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="public/css/responsive-tabs.css"
	type="text/css" media="screen">
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

	<div class="wrap-general">
		<!--==============================header=================================-->
		<div id="navigation-wrapper">
			<div id="navigation" class="clearfix">
				<h1>
					<a href="#index" class="brand animated"></a>
				</h1>
				<ul id="menu">
					<li><a href="#" class="animated">inicio</a></li>
					<li><a href="#" class="animated">club</a></li>
					<li><a href="#" class="animated">torneo</a></li>
					<li><a href="#" class="animated">perfil</a></li>
					<li><a href="#" class="animated">salir</a></li>
				</ul>
			</div>
		</div>
		<!--==============================about=================================-->
		<div id="inicio">
			<div class="title-bg">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h2>Superliga </h2>
						</div>
					</div>
				</div>
			</div>
			<div id="separator1">
				<div class="pattern"></div>
				<div class="separator1-bg"></div>
				<div class="container left">
					<div>
						<div class="col-md-4"></div>
						<div class="col-md-8">Ingresa al Sitio</div>

					</div>

				</div>
			</div>
			<div class="container new-block ">
				<div class="row">


					<div class="col-md-4  col-md-offset-4 login">
						<div class="panel panel-default panel-primary">
							<div class="panel-heading login-header">
								<h4>Ingresar</h4>
							</div>
							<div class="panel-body">
								<form id="login-form" action="j_security_check" method="post">
									<div class="form-group">
										<label for="j_username">Usuario</label> <input type="text"
											class="form-control" id="j_username" placeholder="Usuario">
									</div>
									<div class="form-group">
										<label for="j_password">Contrase&ntilde;a</label> <input
											type="password" class="form-control" id="j_password"
											placeholder="Contrase&ntilde;a">
									</div>
									<button type="submit" class="btn btn-default">Entrar</button>
								</form>
							</div>

							<div class="panel-footer">
								<%
									if (errorExists) {
								%>
								<span >Login
									incorrecto</span>
								<%
									}
								%>
							</div>
						</div>


					</div>
				</div>
			</div>

			//
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


		<!--==============================footer=================================-->
		<footer>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						Copyright &copy; 2013 Loft Studio. <span>All rights
							reserved.</span>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<script
		src="../../../ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>
	<script src="public/js/jquery.easing.1.3.js"></script>
	<script src="public/js/jquery.carouFredSel-6.2.0.js"></script>
	<script src="public/js/jquery.mousewheel.min.js"></script>
	<script src="public/js/jquery.touchSwipe.min.js"></script>
	<script src="public/js/responsiveTabs.js"></script>
	<script src="public/js/forms.js"></script>
	<script src="public/js/sForm.js"></script>
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
	<script src="public/js/menu-mod.js"></script>
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
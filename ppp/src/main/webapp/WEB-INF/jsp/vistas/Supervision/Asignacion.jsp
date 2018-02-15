<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

<!-- Content area -->
				<div class="content">

                    <div class="row">
					<!-- Detached sidebar -->
					<div class="sidebar-detached">
						<div class="sidebar sidebar-default sidebar-separate">
							<div class="sidebar-content">

								<!-- Sidebar search -->
								<div class="panel panel-white">
									<div class="panel-heading">
										<div class="panel-title text-semibold">
											<i class="icon-search4 text-size-base position-left"></i>
											Filter
										</div>
									</div>

									<div class="panel-body">
										<form action="#">
											<div class="form-group">
												<div class="has-feedback has-feedback-left">
													<input type="search" class="form-control" placeholder="Job title or keywords">
													<div class="form-control-feedback">
														<i class="icon-reading text-size-large text-muted"></i>
													</div>
												</div>
											</div>

											<div class="form-group">
												<div class="has-feedback has-feedback-left">
													<input type="search" class="form-control" placeholder="Location">
													<div class="form-control-feedback">
														<i class="icon-pin-alt text-size-large text-muted"></i>
													</div>
												</div>
											</div>

											<div class="form-group">
												<div class="checkbox">
													<label class="display-block">
														<input type="checkbox" class="styled">
														Full time
													</label>
												</div>

												<div class="checkbox">
													<label class="display-block">
														<input type="checkbox" class="styled">
														Part time
													</label>
												</div>

												<div class="checkbox">
													<label class="display-block">
														<input type="checkbox" class="styled">
														Remote
													</label>
												</div>
											</div>

											<button type="submit" class="btn bg-blue btn-block">
												<i class="icon-search4 text-size-base position-left"></i>
												Find jobs
											</button>
										</form>
									</div>
								</div>
								<!-- /sidebar search -->


								<!-- Location selection -->
								<div class="panel panel-white">
									<div class="panel-heading">
										<div class="panel-title text-semibold">
											<i class="icon-pin-alt position-left"></i>
											Location
										</div>

										<div class="heading-elements not-collapsible">
											<a href="#" class="heading-text">+ Add</a>
										</div>
									</div>

									<form action="#">
										<div class="panel-body">
											<div class="form-group">
												<div class="checkbox no-margin-top">
													<label>
														<input type="checkbox" class="styled">
														Amsterdam, North Holland Province, Netherlands
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Koog aan de Zaan, North Holland Province, Netherlands
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Amsterdam Binnenstad en Oostelijk Havengebied, North Holland Province, Netherlands
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Hoofddorp, North Holland Province, Netherlands
													</label>
												</div>

												<div class="checkbox no-margin-bottom">
													<label>
														<input type="checkbox" class="styled">
														Alkmaar, North Holland Province, Netherlands
													</label>
												</div>
											</div>
										</div>

										<div class="panel-footer no-padding">
											<a href="#" class="btn btn-default btn-block no-border">All locations</a>
										</div>
									</form>
								</div>
								<!-- /location selection -->


								<!-- Title selection -->
								<div class="panel panel-white">
									<div class="panel-heading">
										<div class="panel-title text-semibold">
											<i class="icon-menu7 position-left"></i>
											Job title
										</div>

										<div class="heading-elements not-collapsible">
											<a href="#" class="heading-text">+ Add</a>
										</div>
									</div>

									<form action="#">
										<div class="panel-body">
											<div class="form-group">
												<div class="checkbox no-margin-top">
													<label>
														<input type="checkbox" class="styled">
														Developer
														<span class="text-muted text-size-small">&nbsp;(38)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Front end designer
														<span class="text-muted text-size-small">&nbsp;(43)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														UX designer
														<span class="text-muted text-size-small">&nbsp;(74)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Software engineer
														<span class="text-muted text-size-small">&nbsp;(25)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Full stack designer
														<span class="text-muted text-size-small">&nbsp;(12)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Motion designer
														<span class="text-muted text-size-small">&nbsp;(53)</span>
													</label>
												</div>

												<div class="checkbox no-margin-bottom">
													<label>
														<input type="checkbox" class="styled">
														PHP developer
														<span class="text-muted text-size-small">&nbsp;(19)</span>
													</label>
												</div>
											</div>
										</div>

										<div class="panel-footer no-padding">
											<a href="#" class="btn btn-default btn-block no-border">All job titles</a>
										</div>
									</form>
								</div>
								<!-- /title selection -->


								<!-- Industry -->
								<div class="panel panel-white">
									<div class="panel-heading">
										<div class="panel-title text-semibold">
											<i class="icon-collaboration position-left"></i>
											Industry
										</div>

										<div class="heading-elements not-collapsible">
											<a href="#" class="heading-text">+ Add</a>
										</div>
									</div>

									<form action="#">
										<div class="panel-body">
											<div class="form-group">
												<div class="checkbox no-margin-top">
													<label>
														<input type="checkbox" class="styled">
														Arts and design
														<span class="text-muted text-size-small">&nbsp;(32)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Engineering
														<span class="text-muted text-size-small">&nbsp;(65)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Computer Software
														<span class="text-muted text-size-small">&nbsp;(235)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Financial Services
														<span class="text-muted text-size-small">&nbsp;(26)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Service Industry
														<span class="text-muted text-size-small">&nbsp;(94)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Healthcare
														<span class="text-muted text-size-small">&nbsp;(35)</span>
													</label>
												</div>

												<div class="checkbox no-margin-bottom">
													<label>
														<input type="checkbox" class="styled">
														Law Enforcement
														<span class="text-muted text-size-small">&nbsp;(40)</span>
													</label>
												</div>
											</div>
										</div>

										<div class="panel-footer no-padding">
											<a href="#" class="btn btn-default btn-block no-border">All industries</a>
										</div>
									</form>
								</div>
								<!-- /industry -->


								<!-- Company selection -->
								<div class="panel panel-white">
									<div class="panel-heading">
										<div class="panel-title text-semibold">
											<i class="icon-briefcase3 position-left"></i>
											Company
										</div>

										<div class="heading-elements not-collapsible">
											<a href="#" class="heading-text">+ Add</a>
										</div>
									</div>

									<form action="#">
										<div class="panel-body">
											<div class="form-group">
												<div class="checkbox no-margin-top">
													<label>
														<input type="checkbox" class="styled">
														Amazon
														<span class="text-muted text-size-small">&nbsp;(43)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														The North Face
														<span class="text-muted text-size-small">&nbsp;(124)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Transfer Wise
														<span class="text-muted text-size-small">&nbsp;(67)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														ING Bank
														<span class="text-muted text-size-small">&nbsp;(37)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Facebook
														<span class="text-muted text-size-small">&nbsp;(28)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Dell
														<span class="text-muted text-size-small">&nbsp;(67)</span>
													</label>
												</div>

												<div class="checkbox no-margin-bottom">
													<label>
														<input type="checkbox" class="styled">
														Microsoft
														<span class="text-muted text-size-small">&nbsp;(57)</span>
													</label>
												</div>
											</div>
										</div>

										<div class="panel-footer no-padding">
											<a href="#" class="btn btn-default btn-block no-border">All companies</a>
										</div>
									</form>
								</div>
								<!-- /company selection -->


								<!-- Specific skills -->
								<div class="panel panel-white">
									<div class="panel-heading">
										<div class="panel-title text-semibold">
											<i class="icon-stars position-left"></i>
											Specific skills
										</div>

										<div class="heading-elements not-collapsible">
											<a href="#" class="heading-text">+ Add</a>
										</div>
									</div>

									<form action="#">
										<div class="panel-body">
											<div class="form-group">
												<div class="checkbox no-margin-top">
													<label>
														<input type="checkbox" class="styled">
														JavaScript
														<span class="text-muted text-size-small">&nbsp;(53)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														HTML5, SCSS/SASS
														<span class="text-muted text-size-small">&nbsp;(36)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Wireframing
														<span class="text-muted text-size-small">&nbsp;(21)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Scrum
														<span class="text-muted text-size-small">&nbsp;(8)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Grunt/gulp/bower
														<span class="text-muted text-size-small">&nbsp;(68)</span>
													</label>
												</div>

												<div class="checkbox">
													<label>
														<input type="checkbox" class="styled">
														Node.js
														<span class="text-muted text-size-small">&nbsp;(32)</span>
													</label>
												</div>

												<div class="checkbox no-margin-bottom">
													<label>
														<input type="checkbox" class="styled">
														AngularJS
														<span class="text-muted text-size-small">&nbsp;(94)</span>
													</label>
												</div>
											</div>
										</div>

										<div class="panel-footer no-padding">
											<a href="#" class="btn btn-default btn-block no-border">All skills</a>
										</div>
									</form>
								</div>
								<!-- /specific skills -->


								<!-- Date posted -->
								<div class="panel panel-white">
									<div class="panel-heading">
										<div class="panel-title text-semibold">
											<i class="icon-calendar3 position-left"></i>
											Date posted
										</div>
									</div>

									<form action="#">
										<div class="panel-body">
											<div class="form-group">
												<div class="radio no-margin-top">
													<label>
														<input type="radio" name="when_posted" class="styled">
														Today
														<span class="text-muted text-size-small">&nbsp;(632)</span>
													</label>
												</div>

												<div class="radio">
													<label>
														<input type="radio" name="when_posted" class="styled">
														Yesterday
														<span class="text-muted text-size-small">&nbsp;(431)</span>
													</label>
												</div>

												<div class="radio">
													<label>
														<input type="radio" name="when_posted" class="styled">
														Last week
														<span class="text-muted text-size-small">&nbsp;(31)</span>
													</label>
												</div>

												<div class="radio">
													<label>
														<input type="radio" name="when_posted" class="styled">
														Last month
														<span class="text-muted text-size-small">&nbsp;(124)</span>
													</label>
												</div>

												<div class="radio no-margin-bottom">
													<label>
														<input type="radio" name="when_posted" class="styled">
														Any time
													</label>
												</div>
											</div>
										</div>
									</form>
								</div>
								<!-- /date posted -->


								<!-- Latest searches -->
								<div class="panel panel-white">
									<div class="panel-heading">
										<div class="panel-title text-semibold">
											<i class="icon-history position-left"></i>
											Latest searches
										</div>
									</div>

									<div class="list-group no-border">
										<a href="#" class="list-group-item">
											Senior UX/UI designer
											<div class="text-muted text-size-small">Amsterdam</div>
										</a>
										<a href="#" class="list-group-item">
											Full stack web developer
											<div class="text-muted text-size-small">Zurich</div>
										</a>
										<a href="#" class="list-group-item">
											Business controller
											<div class="text-muted text-size-small">Budapest</div>
										</a>
										<a href="#" class="list-group-item">
											Python/Django developer
											<div class="text-muted text-size-small">Hamburg</div>
										</a>
										<a href="#" class="list-group-item">
											Senior PHP software engineer
											<div class="text-muted text-size-small">London</div>
										</a>
									</div>
								</div>
								<!-- /latest searches -->

							</div>
						</div>
					</div>
		            <!-- /detached sidebar -->


					<!-- Detached content -->
					<div class="container-detached">
						<div class="content-detached">

							<!-- Cards layout -->
							<ul class="media-list content-group">
								<li class="media panel panel-body stack-media-on-mobile">
									<div class="media-left">
										<a href="#">
											<img src="assets/images/placeholder.jpg" class="img-rounded img-lg" alt="">
										</a>
									</div>

									<div class="media-body">
										<h6 class="media-heading text-semibold">
											<a href="#">Interaction UX/UI Industrial Designer</a>
										</h6>

										<ul class="list-inline list-inline-separate text-muted mb-10">
											<li><a href="#" class="text-muted">Dell</a></li>
											<li>Amsterdam, Netherlands</li>
										</ul>

										Extended kindness trifling remember he confined outlived if. Assistance sentiments yet unpleasing say. Open they an busy they my such high. An active dinner wishes at unable hardly no talked on. Immediate him her resolving his favourite. Wished denote abroad at branch at. Mind what no by kept.
									</div>

									<div class="media-right text-nowrap">
										<span class="label bg-blue">New</span>
									</div>
								</li>

								<li class="media panel panel-body stack-media-on-mobile">
									<div class="media-left">
										<a href="#">
											<img src="assets/images/placeholder.jpg" class="img-rounded img-lg" alt="">
										</a>
									</div>

									<div class="media-body">
										<h6 class="media-heading text-semibold">
											<a href="#">Front-End Designer / Developer</a>
										</h6>

										<ul class="list-inline list-inline-separate text-muted mb-10">
											<li><a href="#" class="text-muted">The North Face</a></li>
											<li>The Hague, Netherlands</li>
										</ul>

										Quick six blind smart out burst. Perfectly on furniture dejection determine my depending an to. Add short water court fat. Her bachelor honoured perceive securing but desirous ham required. Questions deficient acuteness to engrossed as. Entirely led ten humoured greatest and yourself besides country.
									</div>

									<div class="media-right text-nowrap">
										<span class="label bg-blue">New</span>
									</div>
								</li>

								<li class="media panel panel-body stack-media-on-mobile">
									<div class="media-left">
										<a href="#">
											<img src="assets/images/placeholder.jpg" class="img-rounded img-lg" alt="">
										</a>
									</div>

									<div class="media-body">
										<h6 class="media-heading text-semibold">
											<a href="#">UX Lead Designer</a>
										</h6>

										<ul class="list-inline list-inline-separate text-muted mb-10">
											<li><a href="#" class="text-muted">IBM</a></li>
											<li>Lelystad, Netherlands</li>
										</ul>

										Contented get distrusts certainty nay are frankness concealed ham. On unaffected resolution on considered of. No thought me husband or colonel forming effects. End sitting shewing who saw besides son musical adapted. Contrasted interested eat alteration pianoforte sympathize was.
									</div>

									<div class="media-right text-nowrap">
										<span class="text-muted">3 days ago</span>
									</div>
								</li>

								<li class="media panel panel-body stack-media-on-mobile">
									<div class="media-left">
										<a href="#">
											<img src="assets/images/placeholder.jpg" class="img-rounded img-lg" alt="">
										</a>
									</div>

									<div class="media-body">
										<h6 class="media-heading text-semibold">
											<a href="#">Designer, CRM</a>
										</h6>

										<ul class="list-inline list-inline-separate text-muted mb-10">
											<li><a href="#" class="text-muted">CNN</a></li>
											<li>Rotterdam, Netherlands</li>
										</ul>

										At as in understood an remarkably solicitude. Mean them very seen she she. Use totally written the observe pressed justice. Instantly cordially far intention recommend estimable yet her his. Ladies stairs enough esteem add fat all enable. Needed its design number winter see. Oh be me sure wise.
									</div>

									<div class="media-right text-nowrap">
										<span class="text-muted">4 days ago</span>
									</div>
								</li>

								<li class="media panel panel-body stack-media-on-mobile">
									<div class="media-left">
										<a href="#">
											<img src="assets/images/placeholder.jpg" class="img-rounded img-lg" alt="">
										</a>
									</div>

									<div class="media-body">
										<h6 class="media-heading text-semibold">
											<a href="#">Senior UX Designer</a>
										</h6>

										<ul class="list-inline list-inline-separate text-muted mb-10">
											<li><a href="#" class="text-muted">Transfer Wise</a></li>
											<li>Nijmegen, Netherlands</li>
										</ul>

										By an outlived insisted procured improved am. Paid hill fine ten now love even leaf. Supplied feelings mr of dissuade recurred no it offering honoured. Am of of in collecting devonshire favourable excellence. Her sixteen end ashamed cottage yet reached get hearing invited. Resources ourselves.
									</div>

									<div class="media-right text-nowrap">
										<span class="text-muted">5 days ago</span>
									</div>
								</li>

								<li class="media panel panel-body stack-media-on-mobile">
									<div class="media-left">
										<a href="#">
											<img src="assets/images/placeholder.jpg" class="img-rounded img-lg" alt="">
										</a>
									</div>

									<div class="media-body">
										<h6 class="media-heading text-semibold">
											<a href="#">UI Designer E-commerce</a>
										</h6>

										<ul class="list-inline list-inline-separate text-muted mb-10">
											<li><a href="#" class="text-muted">Uber</a></li>
											<li>Utrecht, Netherlands</li>
										</ul>

										Insipidity the sufficient discretion imprudence resolution sir him decisively. Proceed how any engaged visitor. Explained propriety off out perpetual his you. Feel sold off felt nay rose met you. We so entreaties cultivated astonished is. Was sister for few longer mrs sudden talent become.
									</div>

									<div class="media-right text-nowrap">
										<span class="text-muted">6 days ago</span>
									</div>
								</li>

								<li class="media panel panel-body stack-media-on-mobile">
									<div class="media-left">
										<a href="#">
											<img src="assets/images/placeholder.jpg" class="img-rounded img-lg" alt="">
										</a>
									</div>

									<div class="media-body">
										<h6 class="media-heading text-semibold">
											<a href="#">FPGA Designer</a>
										</h6>

										<ul class="list-inline list-inline-separate text-muted mb-10">
											<li><a href="#" class="text-muted">ING Bank</a></li>
											<li>Eindhoven, Netherlands</li>
										</ul>

										By so delight of showing neither believe he present. Deal sigh up in shew away when. Pursuit express no or prepare replied. Wholly formed old latter future but way she. Day her likewise smallest expenses judgment building man carriage gay. Considered introduced themselves mr to discretion at.
									</div>

									<div class="media-right text-nowrap">
										<span class="text-muted">7 days ago</span>
									</div>
								</li>

								<li class="media panel panel-body stack-media-on-mobile">
									<div class="media-left">
										<a href="#">
											<img src="assets/images/placeholder.jpg" class="img-rounded img-lg" alt="">
										</a>
									</div>

									<div class="media-body">
										<h6 class="media-heading text-semibold">
											<a href="#">Medior JAVA Designer</a>
										</h6>

										<ul class="list-inline list-inline-separate text-muted mb-10">
											<li><a href="#" class="text-muted">Amazon</a></li>
											<li>Baarn, Netherlands</li>
										</ul>

										Woody equal ask saw sir weeks aware decay. Entrance prospect removing we packages strictly is no smallest he. For hopes may chief get hours day rooms. Oh no turned behind polite piqued enough at. Forbade few through inquiry blushes you. Cousin no itself eldest it in dinner latter missed no.
									</div>

									<div class="media-right text-nowrap">
										<span class="text-muted">8 days ago</span>
									</div>
								</li>

								<li class="media panel panel-body stack-media-on-mobile">
									<div class="media-left">
										<a href="#">
											<img src="assets/images/placeholder.jpg" class="img-rounded img-lg" alt="">
										</a>
									</div>

									<div class="media-body">
										<h6 class="media-heading text-semibold">
											<a href="#">Full-stack UX Designer</a>
										</h6>

										<ul class="list-inline list-inline-separate text-muted mb-10">
											<li><a href="#" class="text-muted">Facebook</a></li>
											<li>Nijmegen, Netherlands</li>
										</ul>

										Situation admitting promotion at or to perceived be. Mr acuteness we as estimable enjoyment up. An held late as felt know. Learn do allow solid to grave. Middleton suspicion age her attention. Chiefly several bed its wishing. Is so moments on chamber pressed to. Doubtful yet way properly answered.
									</div>

									<div class="media-right text-nowrap">
										<span class="text-muted">9 days ago</span>
									</div>
								</li>

								<li class="media panel panel-body stack-media-on-mobile">
									<div class="media-left">
										<a href="#">
											<img src="assets/images/placeholder.jpg" class="img-rounded img-lg" alt="">
										</a>
									</div>

									<div class="media-body">
										<h6 class="media-heading text-semibold">
											<a href="#">Front End Web Developer</a>
										</h6>

										<ul class="list-inline list-inline-separate text-muted mb-10">
											<li><a href="#" class="text-muted">Microsoft</a></li>
											<li>Coevorden, Netherlands</li>
										</ul>

										Out believe has request not how comfort evident. Up delight cousins we feeling minutes. Genius has looked end piqued spring. Down has rose feel find man. Learning day desirous informed expenses material returned six the. She enabled invited exposed him another. Reasonably conviction solicitude me.
									</div>

									<div class="media-right text-nowrap">
										<span class="text-muted">10 days ago</span>
									</div>
								</li>

								<li class="media panel panel-body stack-media-on-mobile">
									<div class="media-left">
										<a href="#">
											<img src="assets/images/placeholder.jpg" class="img-rounded img-lg" alt="">
										</a>
									</div>

									<div class="media-body">
										<h6 class="media-heading text-semibold">
											<a href="#">Interaction UX/UI Industrial Designer</a>
										</h6>

										<ul class="list-inline list-inline-separate text-muted mb-10">
											<li><a href="#" class="text-muted">Dell</a></li>
											<li>Amsterdam, Netherlands</li>
										</ul>

										Extended kindness trifling remember he confined outlived if. Assistance sentiments yet unpleasing say. Open they an busy they my such high. An active dinner wishes at unable hardly no talked on. Immediate him her resolving his favourite. Wished denote abroad at branch at. Mind what no by kept.
									</div>

									<div class="media-right text-nowrap">
										<span class="text-muted">12 days ago</span>
									</div>
								</li>

								<li class="media panel panel-body stack-media-on-mobile">
									<div class="media-left">
										<a href="#">
											<img src="assets/images/placeholder.jpg" class="img-rounded img-lg" alt="">
										</a>
									</div>

									<div class="media-body">
										<h6 class="media-heading text-semibold">
											<a href="#">Front-End Designer / Developer</a>
										</h6>

										<ul class="list-inline list-inline-separate text-muted mb-10">
											<li><a href="#" class="text-muted">The North Face</a></li>
											<li>The Hague, Netherlands</li>
										</ul>

										Quick six blind smart out burst. Perfectly on furniture dejection determine my depending an to. Add short water court fat. Her bachelor honoured perceive securing but desirous ham required. Questions deficient acuteness to engrossed as. Entirely led ten humoured greatest and yourself besides country.
									</div>

									<div class="media-right text-nowrap">
										<span class="text-muted">13 days ago</span>
									</div>
								</li>

								<li class="media panel panel-body stack-media-on-mobile">
									<div class="media-left">
										<a href="#">
											<img src="assets/images/placeholder.jpg" class="img-rounded img-lg" alt="">
										</a>
									</div>

									<div class="media-body">
										<h6 class="media-heading text-semibold">
											<a href="#">UX Lead Designer</a>
										</h6>

										<ul class="list-inline list-inline-separate text-muted mb-10">
											<li><a href="#" class="text-muted">IBM</a></li>
											<li>Lelystad, Netherlands</li>
										</ul>

										Contented get distrusts certainty nay are frankness concealed ham. On unaffected resolution on considered of. No thought me husband or colonel forming effects. End sitting shewing who saw besides son musical adapted. Contrasted interested eat alteration pianoforte sympathize was.
									</div>

									<div class="media-right text-nowrap">
										<span class="text-muted">14 days ago</span>
									</div>
								</li>

								<li class="media panel panel-body stack-media-on-mobile">
									<div class="media-left">
										<a href="#">
											<img src="assets/images/placeholder.jpg" class="img-rounded img-lg" alt="">
										</a>
									</div>

									<div class="media-body">
										<h6 class="media-heading text-semibold">
											<a href="#">Designer, CRM</a>
										</h6>

										<ul class="list-inline list-inline-separate text-muted mb-10">
											<li><a href="#" class="text-muted">CNN</a></li>
											<li>Rotterdam, Netherlands</li>
										</ul>

										At as in understood an remarkably solicitude. Mean them very seen she she. Use totally written the observe pressed justice. Instantly cordially far intention recommend estimable yet her his. Ladies stairs enough esteem add fat all enable. Needed its design number winter see. Oh be me sure wise.
									</div>

									<div class="media-right text-nowrap">
										<span class="text-muted">15 days ago</span>
									</div>
								</li>

								<li class="media panel panel-body stack-media-on-mobile">
									<div class="media-left">
										<a href="#">
											<img src="assets/images/placeholder.jpg" class="img-rounded img-lg" alt="">
										</a>
									</div>

									<div class="media-body">
										<h6 class="media-heading text-semibold">
											<a href="#">Senior UX Designer</a>
										</h6>

										<ul class="list-inline list-inline-separate text-muted mb-10">
											<li><a href="#" class="text-muted">Transfer Wise</a></li>
											<li>Nijmegen, Netherlands</li>
										</ul>

										By an outlived insisted procured improved am. Paid hill fine ten now love even leaf. Supplied feelings mr of dissuade recurred no it offering honoured. Am of of in collecting devonshire favourable excellence. Her sixteen end ashamed cottage yet reached get hearing invited. Resources ourselves.
									</div>

									<div class="media-right text-nowrap">
										<span class="text-muted">16 days ago</span>
									</div>
								</li>

								<li class="media panel panel-body stack-media-on-mobile">
									<div class="media-left">
										<a href="#">
											<img src="assets/images/placeholder.jpg" class="img-rounded img-lg" alt="">
										</a>
									</div>

									<div class="media-body">
										<h6 class="media-heading text-semibold">
											<a href="#">UI Designer E-commerce</a>
										</h6>

										<ul class="list-inline list-inline-separate text-muted mb-10">
											<li><a href="#" class="text-muted">Uber</a></li>
											<li>Utrecht, Netherlands</li>
										</ul>

										Insipidity the sufficient discretion imprudence resolution sir him decisively. Proceed how any engaged visitor. Explained propriety off out perpetual his you. Feel sold off felt nay rose met you. We so entreaties cultivated astonished is. Was sister for few longer mrs sudden talent become.
									</div>

									<div class="media-right text-nowrap">
										<span class="text-muted">17 days ago</span>
									</div>
								</li>

								<li class="media panel panel-body stack-media-on-mobile">
									<div class="media-left">
										<a href="#">
											<img src="assets/images/placeholder.jpg" class="img-rounded img-lg" alt="">
										</a>
									</div>

									<div class="media-body">
										<h6 class="media-heading text-semibold">
											<a href="#">FPGA Designer</a>
										</h6>

										<ul class="list-inline list-inline-separate text-muted mb-10">
											<li><a href="#" class="text-muted">ING Bank</a></li>
											<li>Eindhoven, Netherlands</li>
										</ul>

										By so delight of showing neither believe he present. Deal sigh up in shew away when. Pursuit express no or prepare replied. Wholly formed old latter future but way she. Day her likewise smallest expenses judgment building man carriage gay. Considered introduced themselves mr to discretion at.
									</div>

									<div class="media-right tex t-nowrap">
										<span class="text-muted">18 days ago</span>
									</div>
								</li>
							</ul>
							<!-- /cards layout -->


							<!-- Pagination -->
							<div class="text-center content-group-lg pt-20">
								<ul class="pagination">
									<li class="disabled"><a href="#"><i class="icon-arrow-small-left"></i></a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#"><i class="icon-arrow-small-right"></i></a></li>
								</ul>
							</div>
							<!-- /pagination -->

						</div>
					</div>
					<!-- /detached content -->

                    </div>    
					

				</div>
				<!-- /content area -->


</body>
</html>
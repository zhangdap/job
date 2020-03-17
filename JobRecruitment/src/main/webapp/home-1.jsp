﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Oficiona</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!-- External Css -->
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css" />
    <link rel="stylesheet" href="assets/css/et-line.css" />
    <link rel="stylesheet" href="assets/css/bootstrap-select.min.css" />
    <link rel="stylesheet" href="assets/css/plyr.css" />
    <link rel="stylesheet" href="assets/css/flag.css" />
    <link rel="stylesheet" href="assets/css/slick.css" /> 
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="assets/css/jquery.nstSlider.min.css" />

    <!-- Custom Css -->
    <link rel="stylesheet" type="text/css" href="css/main.css">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600%7CRoboto:300i,400,500" rel="stylesheet">

    <!-- Favicon -->
    <link rel="icon" href="images/favicon.png">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/icon-114x114.png">


    <!--[if lt IE 9]>
    <script src="assets/js/html5shiv.min.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->

  </head>
  <body>

    <!-- Header -->
    <header>
      <nav class="navbar navbar-expand-xl absolute-nav transparent-nav cp-nav navbar-light bg-light fluid-nav">
        <a class="navbar-brand" href="index.html"> 
          <img src="images/logo.png" class="img-fluid" alt="">
        </a>
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto job-browse">
            <li class="nav-item dropdown">
              <a class="dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Browse Jobs</a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li class="search-by">
                  <h5>BY Category</h5>
                  <ul>
                    <li><a href="#">Accounting / Finance <span>(233)</span></a></li>
                    <li><a href="#">Education <span>(46)</span></a></li>
                    <li><a href="#">Design & Creative <span>(156)</span></a></li>
                    <li><a href="#">Health Care <span>(98)</span></a></li>
                    <li><a href="#">Engineer & Architects <span>(188)</span></a></li>
                    <li><a href="#">Marketing & Sales <span>(124)</span></a></li>
                    <li><a href="#">Garments / Textile <span>(584)</span></a></li>
                    <li><a href="#">Customer Support <span>(233)</span></a></li>
                  </ul>
                </li>
                <li class="search-by">
                  <h5>BY LOcation</h5>
                  <ul>
                    <li><a href="#">New York City <span>(508)</span></a></li>
                    <li><a href="#">Washington, D.C <span>(96)</span></a></li>
                    <li><a href="#">Chicago <span>(155)</span></a></li>
                    <li><a href="#">San Francisco <span>(24)</span></a></li>
                    <li><a href="#">Los Angeles <span>(268)</span></a></li>
                    <li><a href="#">Boston <span>(46)</span></a></li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
          <ul class="navbar-nav ml-auto main-nav">
            <li class="menu-item active"><a title="Home" href="home-1.html">Home</a></li>
            <li class="menu-item dropdown">
              <a title="" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false">Jobs</a>
              <ul  class="dropdown-menu">
                <li class="menu-item"><a title="About" href="job-listing.html">Job Listing</a></li>
                <li class="menu-item"><a title="About" href="job-listing-with-map.html">Job Listing With Map</a></li>
                <li class="menu-item"><a title="About" href="job-details.html">Job Details</a></li>
                <li class="menu-item"><a title="About" href="post-job.html">Post Job</a></li>
              </ul>
            </li>
            <li class="menu-item dropdown">
              <a title="" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false">Employer</a>
              <ul  class="dropdown-menu">
                <li class="menu-item"><a title="About" href="employer-listing.html">Employer Listing</a></li>
                <li class="menu-item"><a title="About" href="employer-details.html">Employer Details</a></li>
                <li class="menu-item"><a title="About" href="employer-dashboard.html">Dashboard</a></li>
                <li class="menu-item"><a title="About" href="employer-dashboard-edit-profile.html">Edit Profile</a></li>
                <li class="menu-item"><a title="About" href="employer-dashboard-manage-candidate.html">Manage Candidate</a></li>
                <li class="menu-item"><a title="About" href="employer-dashboard-manage-job.html">Manage Job</a></li>
                <li class="menu-item"><a title="About" href="employer-dashboard-post-job.html">Post Job</a></li>
              </ul>
            </li>
            <li class="menu-item dropdown">
              <a title="" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false">Candidate</a>
              <ul  class="dropdown-menu">
                <li class="menu-item"><a title="About" href="candidate.html">Candidate List</a></li>
                <li class="menu-item"><a title="About" href="candidate-details.html">Candidate Details</a></li>
                <li class="menu-item"><a title="About" href="dashboard.html">Dashboard</a></li>
                <li class="menu-item"><a title="About" href="dashboard-edit-profile.html">Edit Profile</a></li>
                <li class="menu-item"><a title="About" href="add-resume.html">Add Resume</a></li>
                <li class="menu-item"><a title="About" href="resume.html">Resume</a></li>
                <li class="menu-item"><a title="About" href="edit-resume.html">Edit Resume</a></li>
                <li class="menu-item"><a title="About" href="dashboard-bookmark.html">Bookmarked</a></li>
                <li class="menu-item"><a title="About" href="dashboard-applied.html">Applied</a></li>
                <li class="menu-item"><a title="About" href="dashboard-pricing.html">Pricing</a></li>
                <li class="menu-item"><a title="About" href="dashboard-message.html">Message</a></li>
                <li class="menu-item"><a title="About" href="dashboard-alert.html">Alert</a></li>
              </ul>
            </li>
            <li class="menu-item dropdown">
              <a title="" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false">Pages</a>
              <ul  class="dropdown-menu">
                <li class="menu-item"><a title="About" href="about-us.html">About Us</a></li>
                <li class="menu-item"><a title="About" href="blog.html">Blog</a></li>
                <li class="menu-item"><a title="About" href="blog-grid.html">Blog Grid</a></li>
                <li class="menu-item"><a title="About" href="blog-details.html">Blog Details</a></li>
                <li class="menu-item"><a title="About" href="contact.html">Contact Us</a></li>
                <li class="menu-item"><a title="About" href="pricing.html">Pricing</a></li>
                <li class="menu-item"><a title="About" href="how-it-work.html">How It Works</a></li>
                <li class="menu-item"><a title="About" href="faq.html">FAQ</a></li>
                <li class="menu-item"><a title="About" href="checkout.html">Checkout</a></li>
                <li class="menu-item"><a title="About" href="payment-complete.html">Payment Complete</a></li>
                <li class="menu-item"><a title="About" href="invoice.html">Invoice</a></li>
                <li class="menu-item"><a title="About" href="terms-and-condition.html">Terms And Condition</a></li>
              </ul>
            </li>
            <li class="menu-item post-job"><a title="Title" href="post-job.html"><i class="fas fa-plus"></i>Post a Job</a></li>
          </ul>
          <ul class="navbar-nav ml-auto account-nav">
            <li class="dropdown menu-item header-top-notification">
              <a href="#" class="notification-button"></a>
              <div class="notification-card">
                <div class="notification-head">
                  <span>Notifications</span>
                  <a href="#">Mark all as read</a>
                </div>
                <div class="notification-body">
                  <a href="home-2.html" class="notification-list">
                    <i class="fas fa-bolt"></i>
                    <p>Your Resume Updated!</p>
                    <span class="time">5 hours ago</span>
                  </a>
                  <a href="#" class="notification-list">
                    <i class="fas fa-arrow-circle-down"></i>
                    <p>Someone downloaded resume</p>
                    <span class="time">11 hours ago</span>
                  </a>
                  <a href="#" class="notification-list">
                    <i class="fas fa-check-square"></i>
                    <p>You applied for Project Manager <span>@homeland</span></p>
                    <span class="time">11 hours ago</span>
                  </a>
                  <a href="#" class="notification-list">
                    <i class="fas fa-user"></i>
                    <p>You changed password</p>
                    <span class="time">5 hours ago</span>
                  </a>
                  <a href="#" class="notification-list">
                    <i class="fas fa-arrow-circle-down"></i>
                    <p>Someone downloaded resume</p>
                    <span class="time">11 hours ago</span>
                  </a>
                </div>
                <div class="notification-footer">
                  <a href="#">See all notification</a>
                </div>
              </div>
            </li>
            <li class="menu-item login-popup"><button title="Title" type="button" data-toggle="modal" data-target="#exampleModalLong">Login</button></li>
            <li class="menu-item login-popup"><button title="Title" type="button" data-toggle="modal" data-target="#exampleModalLong2">Registration</button></li>
          </ul> 
        </div>
      </nav>
      <!-- Modal -->
      <div class="account-entry">
        <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title"><i data-feather="user"></i>Login</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <form action="#">
                  <div class="form-group">
                    <input type="email" placeholder="Email Address" class="form-control">
                  </div>
                  <div class="form-group">
                    <input type="password" placeholder="Password" class="form-control">
                  </div>
                  <div class="more-option">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                      <label class="form-check-label" for="defaultCheck1">
                        Remember Me
                      </label>
                    </div>
                    <a href="#">Forget Password?</a>
                  </div>
                  <button class="button primary-bg btn-block">Login</button>
                </form>
                <div class="shortcut-login">
                  <span>Or connect with</span>
                  <div class="buttons">
                    <a href="#" class="facebook"><i class="fab fa-facebook-f"></i>Facebook</a>
                    <a href="#" class="google"><i class="fab fa-google"></i>Google</a>
                  </div>
                  <p>Don't have an account? <a href="#">Register</a></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="modal fade" id="exampleModalLong2" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title"><i data-feather="edit"></i>Registration</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <div class="account-type">
                  <a href="#" class="candidate-acc active"><i data-feather="user"></i>Candidate</a>
                  <a href="#" class="employer-acc"><i data-feather="briefcase"></i>Employer</a>
                </div>
                <form action="#">
                  <div class="form-group">
                    <input type="text" placeholder="Username" class="form-control">
                  </div>
                  <div class="form-group">
                    <input type="email" placeholder="Email Address" class="form-control">
                  </div>
                  <div class="form-group">
                    <input type="password" placeholder="Password" class="form-control">
                  </div>
                  <div class="more-option terms">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
                      <label class="form-check-label" for="defaultCheck2">
                        I accept the <a href="#">terms & conditions</a>
                      </label>
                    </div>
                  </div>
                  <button class="button primary-bg btn-block">Register</button>
                </form>
                <div class="shortcut-login">
                  <span>Or connect with</span>
                  <div class="buttons">
                    <a href="#" class="facebook"><i class="fab fa-facebook-f"></i>Facebook</a>
                    <a href="#" class="google"><i class="fab fa-google"></i>Google</a>
                  </div>
                  <p>Already have an account? <a href="#">Login</a></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- Header End -->

            
    <!-- Banner -->
    <div class="banner banner-1 banner-1-bg">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="banner-content">
              <h1>58,246 Job Listed</h1>
              <p>Create free account to find thousands Jobs, Employment & Career Opportunities around you!</p>
              <a href="add-resume.html" class="button">Upload Resume</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Banner End -->

    <!-- Search and Filter -->
    <div class="searchAndFilter-wrapper">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="searchAndFilter-block">
              <div class="searchAndFilter">
                <form action="#" class="search-form">
                  <input type="text" placeholder="Enter Keywords">
                  <select class="selectpicker" id="search-location">
                    <option value="" selected>Location</option>
                    <option value="california">California</option>
                    <option value="las-vegas">Las Vegas</option>
                    <option value="new-work">New Work</option>
                    <option value="carolina">Carolina</option>
                    <option value="chicago">Chicago</option>
                    <option value="silicon-vally">Silicon Vally</option>
                    <option value="washington">Washington DC</option>
                    <option value="neveda">Neveda</option>
                  </select>
                  <select class="selectpicker" id="search-category">
                    <option value="" selected>Category</option>
                    <option value="real-state">Real State</option>
                    <option value="vehicales">Vehicales</option>
                    <option value="electronics">Electronics</option>
                    <option value="beauty">Beauty</option>
                    <option value="furnitures">Furnitures</option>
                  </select>
                  <button class="button primary-bg"><i class="fas fa-search"></i>Search Job</button>
                </form>
                <div class="filter-categories">
                  <h4>Job Category</h4>
                  <ul>
                    <li><a href="job-listing.html"><i data-feather="bar-chart-2"></i>Accounting / Finance <span>(233)</span></a></li>
                    <li><a href="job-listing.html"><i data-feather="edit-3"></i>Education <span>(46)</span></a></li>
                    <li><a href="job-listing.html"><i data-feather="feather"></i>Design & Creative <span>(156)</span></a></li>
                    <li><a href="job-listing.html"><i data-feather="briefcase"></i>Health Care <span>(98)</span></a></li>
                    <li><a href="job-listing.html"><i data-feather="package"></i>Engineer & Architects <span>(188)</span></a></li>
                    <li><a href="job-listing.html"><i data-feather="pie-chart"></i>Marketing & Sales <span>(124)</span></a></li>
                    <li><a href="job-listing.html"><i data-feather="command"></i>Garments / Textile <span>(584)</span></a></li>
                    <li><a href="job-listing.html"><i data-feather="globe"></i>Customer Support <span>(233)</span></a></li>
                    <li><a href="job-listing.html"><i data-feather="headphones"></i>Digital Media <span>(15)</span></a></li>
                    <li><a href="job-listing.html"><i data-feather="radio"></i>Telecommunication <span>(03)</span></a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Search and Filter End -->

    <!-- Jobs -->
    <div class="section-padding-bottom alice-bg">
      <div class="container">
        <div class="row">
          <div class="col">
            <ul class="nav nav-tabs job-tab" id="myTab" role="tablist">
              <li class="nav-item">
                <a class="nav-link active" id="recent-tab" data-toggle="tab" href="#recent" role="tab" aria-controls="recent" aria-selected="true">Recent Job</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="feature-tab" data-toggle="tab" href="#feature" role="tab" aria-controls="feature" aria-selected="false">Feature Job</a>
              </li>
            </ul>
            <div class="tab-content" id="myTabContent">
              <div class="tab-pane fade show active" id="recent" role="tabpanel" aria-labelledby="recent-tab">
                <div class="row">
                  <div class="col-lg-6">
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-8.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-details.html">Restaurant Team Member - Crew </a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Geologitic</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>New Orleans</a></span>
                            <span class="job-type temporary"><a href="#"><i data-feather="clock"></i>Temporary</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-9.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-details.html">Nutrition Advisor</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Theoreo</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>New York City</a></span>
                            <span class="job-type full-time"><a href="#"><i data-feather="clock"></i>Full Time</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-10.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-details.html">UI Designer</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Degoin</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>San Francisco</a></span>
                            <span class="job-type part-time"><a href="#"><i data-feather="clock"></i>Part Time</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-3.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-details.html">Land Development Marketer</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Realouse</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>Washington, D.C.</a></span>
                            <span class="job-type freelance"><a href="#"><i data-feather="clock"></i>Freelance</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-10.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-details.html">UI Designer</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Degoin</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>San Francisco</a></span>
                            <span class="job-type part-time"><a href="#"><i data-feather="clock"></i>Part Time</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-3.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-details.html">Land Development Marketer</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Realouse</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>Washington, D.C.</a></span>
                            <span class="job-type freelance"><a href="#"><i data-feather="clock"></i>Freelance</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-1.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-details.html">Designer Required</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Theoreo</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>New York City</a></span>
                            <span class="job-type full-time"><a href="#"><i data-feather="clock"></i>Full Time</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-2.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-details.html">Project Manager</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Degoin</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>San Francisco</a></span>
                            <span class="job-type part-time"><a href="#"><i data-feather="clock"></i>Part Time</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-8.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-details.html">Restaurant Team Member - Crew </a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Geologitic</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>New Orleans</a></span>
                            <span class="job-type temporary"><a href="#"><i data-feather="clock"></i>Temporary</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-9.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-details.html">Nutrition Advisor</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Theoreo</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>New York City</a></span>
                            <span class="job-type full-time"><a href="#"><i data-feather="clock"></i>Full Time</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-1.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-details.html">Designer Required</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Theoreo</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>New York City</a></span>
                            <span class="job-type full-time"><a href="#"><i data-feather="clock"></i>Full Time</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-2.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-details.html">Project Manager</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Degoin</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>San Francisco</a></span>
                            <span class="job-type part-time"><a href="#"><i data-feather="clock"></i>Part Time</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="tab-pane fade" id="feature" role="tabpanel" aria-labelledby="feature-tab">
                <div class="row">
                  <div class="col-lg-6">
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-10.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-listing.html">UI Designer</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Degoin</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>San Francisco</a></span>
                            <span class="job-type part-time"><a href="#"><i data-feather="clock"></i>Part Time</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-1.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-listing.html">Designer Required</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Theoreo</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>New York City</a></span>
                            <span class="job-type full-time"><a href="#"><i data-feather="clock"></i>Full Time</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-2.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-listing.html">Project Manager</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Degoin</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>San Francisco</a></span>
                            <span class="job-type part-time"><a href="#"><i data-feather="clock"></i>Part Time</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-1.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-listing.html">Designer Required</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Theoreo</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>New York City</a></span>
                            <span class="job-type full-time"><a href="#"><i data-feather="clock"></i>Full Time</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-8.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-listing.html">Restaurant Team Member - Crew </a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Geologitic</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>New Orleans</a></span>
                            <span class="job-type temporary"><a href="#"><i data-feather="clock"></i>Temporary</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-9.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-listing.html">Nutrition Advisor</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Theoreo</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>New York City</a></span>
                            <span class="job-type full-time"><a href="#"><i data-feather="clock"></i>Full Time</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-3.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-details.html">Land Development Marketer</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Realouse</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>Washington, D.C.</a></span>
                            <span class="job-type freelance"><a href="#"><i data-feather="clock"></i>Freelance</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-2.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-details.html">Project Manager</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Degoin</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>San Francisco</a></span>
                            <span class="job-type part-time"><a href="#"><i data-feather="clock"></i>Part Time</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-8.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-details.html">Restaurant Team Member - Crew </a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Geologitic</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>New Orleans</a></span>
                            <span class="job-type temporary"><a href="#"><i data-feather="clock"></i>Temporary</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-9.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-details.html">Nutrition Advisor</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Theoreo</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>New York City</a></span>
                            <span class="job-type full-time"><a href="#"><i data-feather="clock"></i>Full Time</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-10.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-details.html">UI Designer</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Degoin</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>San Francisco</a></span>
                            <span class="job-type part-time"><a href="#"><i data-feather="clock"></i>Part Time</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-3.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="job-details.html">Land Development Marketer</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Realouse</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>Washington, D.C.</a></span>
                            <span class="job-type freelance"><a href="#"><i data-feather="clock"></i>Freelance</a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Jobs End -->

    <!-- Top Companies -->
    <div class="section-padding-top padding-bottom-90">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="section-header">
              <h2>Top Companies</h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col">
            <div class="company-carousel owl-carousel">
              <div class="company-wrap">
                <div class="thumb">
                  <a href="#">
                    <img src="images/company/company-logo-1.png" class="img-fluid" alt="">
                  </a>
                </div>
                <div class="body">
                  <h4><a href="employer-details.html">Digoin</a></h4>
                  <span>Kansas City, Missouri</span>
                  <a href="job-listing.html" class="button">4 Open Positions</a>
                </div>
              </div>
              <div class="company-wrap">
                <div class="thumb">
                  <a href="#">
                    <img src="images/company/company-logo-2.png" class="img-fluid" alt="">
                  </a>
                </div>
                <div class="body">
                  <h4><a href="employer-details.html">Orion Ltd.</a></h4>
                  <span>Sacramento, California</span>
                  <a href="job-listing.html" class="button">2 Open Positions</a>
                </div>
              </div>
              <div class="company-wrap">
                <div class="thumb">
                  <a href="#">
                    <img src="images/company/company-logo-3.png" class="img-fluid" alt="">
                  </a>
                </div>
                <div class="body">
                  <h4><a href="employer-details.html">Realhouse</a></h4>
                  <span>London, United Kingdom</span>
                  <a href="job-listing.html" class="button">4 Open Positions</a>
                </div>
              </div>
              <div class="company-wrap">
                <div class="thumb">
                  <a href="#">
                    <img src="images/company/company-logo-4.png" class="img-fluid" alt="">
                  </a>
                </div>
                <div class="body">
                  <h4><a href="employer-details.html">BioPro</a></h4>
                  <span>Ajax, Ontarioland</span>
                  <a href="job-listing.html" class="button">1 Open Positions</a>
                </div>
              </div>
              <div class="company-wrap">
                <div class="thumb">
                  <a href="#">
                    <img src="images/company/company-logo-1.png" class="img-fluid" alt="">
                  </a>
                </div>
                <div class="body">
                  <h4><a href="employer-details.html">Digoin</a></h4>
                  <span>Kansas City, Missouri</span>
                  <a href="job-listing.html" class="button">4 Open Positions</a>
                </div>
              </div>
              <div class="company-wrap">
                <div class="thumb">
                  <a href="#">
                    <img src="images/company/company-logo-2.png" class="img-fluid" alt="">
                  </a>
                </div>
                <div class="body">
                  <h4><a href="employer-details.html">Orion Ltd.</a></h4>
                  <span>Sacramento, California</span>
                  <a href="job-listing.html" class="button">2 Open Positions</a>
                </div>
              </div>
              <div class="company-wrap">
                <div class="thumb">
                  <a href="#">
                    <img src="images/company/company-logo-3.png" class="img-fluid" alt="">
                  </a>
                </div>
                <div class="body">
                  <h4><a href="employer-details.html">Realhouse</a></h4>
                  <span>London, United Kingdom</span>
                  <a href="job-listing.html" class="button">4 Open Positions</a>
                </div>
              </div>
              <div class="company-wrap">
                <div class="thumb">
                  <a href="#">
                    <img src="images/company/company-logo-4.png" class="img-fluid" alt="">
                  </a>
                </div>
                <div class="body">
                  <h4><a href="employer-details.html">BioPro</a></h4>
                  <span>Ajax, Ontarioland</span>
                  <a href="job-listing.html" class="button">1 Open Positions</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Top Companies End -->
    
    <!-- Fun Facts -->
    <div class="padding-top-90 padding-bottom-60 fact-bg">
      <div class="container">
        <div class="row fact-items">
          <div class="col-md-3 col-sm-6">
            <div class="fact">
              <div class="fact-icon">
                <i data-feather="briefcase"></i>
              </div>
              <p class="fact-number"><span class="count" data-form="0" data-to="12376"></span></p>
              <p class="fact-name">Live Jobs</p>
            </div>
          </div>
          <div class="col-md-3 col-sm-6">
            <div class="fact">
              <div class="fact-icon">
                <i data-feather="users"></i>
              </div>
              <p class="fact-number"><span class="count" data-form="0" data-to="89562"></span></p>
              <p class="fact-name">Candidate</p>
            </div>
          </div>
          <div class="col-md-3 col-sm-6">
            <div class="fact">
              <div class="fact-icon">
                <i data-feather="file-text"></i>
              </div>
              <p class="fact-number"><span class="count" data-form="0" data-to="28166"></span></p>
              <p class="fact-name">Resume</p>
            </div>
          </div>
          <div class="col-md-3 col-sm-6">
            <div class="fact">
              <div class="fact-icon">
                <i data-feather="award"></i>
              </div>
              <p class="fact-number"><span class="count" data-form="0" data-to="1366"></span></p>
              <p class="fact-name">Companies</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Fun Facts End -->

    <!-- Registration Box -->
    <div class="section-padding">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="call-to-action-box candidate-box">
              <div class="icon">
                <img src="images/register-box/1.png" alt="">
              </div>
              <span>Are You</span>
              <h3>Candidate?</h3>
              <a href="#" data-toggle="modal" data-target="#exampleModalLong2">Register Now <i class="fas fa-arrow-right"></i></a>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="call-to-action-box employer-register">
              <div class="icon">
                <img src="images/register-box/2.png" alt="">
              </div>
              <span>Are You</span>
              <h3>Employer?</h3>
              <a href="#" data-toggle="modal" data-target="#exampleModalLong3">Register Now <i class="fas fa-arrow-right"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Registration Box End -->

    <!-- Modal -->
    <div class="account-entry">
      <div class="modal fade" id="exampleModalLong3" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title"><i data-feather="edit"></i>Registration</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="account-type">
                <a href="#" class="candidate-acc"><i data-feather="user"></i>Candidate</a>
                <a href="#" class="employer-acc active"><i data-feather="briefcase"></i>Employer</a>
              </div>
              <form action="#">
                <div class="form-group">
                  <input type="text" placeholder="Username" class="form-control">
                </div>
                <div class="form-group">
                  <input type="email" placeholder="Email Address" class="form-control">
                </div>
                <div class="form-group">
                  <input type="password" placeholder="Password" class="form-control">
                </div>
                <div class="more-option terms">
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck3">
                    <label class="form-check-label" for="defaultCheck3">
                      I accept the <a href="#">terms & conditions</a>
                    </label>
                  </div>
                </div>
                <button class="button primary-bg btn-block">Register</button>
              </form>
              <div class="shortcut-login">
                <span>Or connect with</span>
                <div class="buttons">
                  <a href="#" class="facebook"><i class="fab fa-facebook-f"></i>Facebook</a>
                  <a href="#" class="google"><i class="fab fa-google"></i>Google</a>
                </div>
                <p>Already have an account? <a href="#">Login</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Testimonial -->
    <div class="section-padding-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="testimonial">
              <div class="testimonial-quote">
                <img src="images/testimonial/quote.png" class="img-fluid" alt="">
              </div>
              <div class="testimonial-for">
                <div class="testimonial-item">
                  <p>“On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charmsto send our denim shorts wardrob One”</p>
                  <h5>Maria Marlin @ Google</h5>
                </div>
                <div class="testimonial-item">
                  <p>“On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charmsto send our denim shorts wardrob Two”</p>
                  <h5>Laura Harper @ Amazon</h5>
                </div>
                <div class="testimonial-item">
                  <p>“On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charmsto send our denim shorts wardrob Three”</p>
                  <h5>John Doe @ Envato</h5>
                </div>
                <div class="testimonial-item">
                  <p>“On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charmsto send our denim shorts wardrob Four”</p>
                  <h5>Jenny Doe @ Dribbble</h5>
                </div>
                <div class="testimonial-item">
                  <p>“On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charmsto send our denim shorts wardrob Five”</p>
                  <h5>Michle Clark @ Apple</h5>
                </div>
                <div class="testimonial-item">
                  <p>“On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charmsto send our denim shorts wardrob Two”</p>
                  <h5>Laura Harper @ Amazon</h5>
                </div>
                <div class="testimonial-item">
                  <p>“On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charmsto send our denim shorts wardrob Three”</p>
                  <h5>John Doe @ Envato</h5>
                </div>
              </div>
              <div class="testimonial-nav">
                <div class="commenter-thumb">
                  <img src="images/testimonial/thumb-1.jpg" class="img-fluid commenter" alt="">
                  <img src="images/testimonial/1.png" class="comapnyLogo" alt="">
                </div>
                <div class="commenter-thumb">
                  <img src="images/testimonial/thumb-2.jpg" class="img-fluid commenter" alt="">
                  <img src="images/testimonial/2.png" class="comapnyLogo" alt="">
                </div>
                <div class="commenter-thumb">
                  <img src="images/testimonial/thumb-3.jpg" class="img-fluid commenter" alt="">
                  <img src="images/testimonial/3.png" class="comapnyLogo" alt="">
                </div>
                <div class="commenter-thumb">
                  <img src="images/testimonial/thumb-4.jpg" class="img-fluid commenter" alt="">
                  <img src="images/testimonial/4.png" class="comapnyLogo" alt="">
                </div>
                <div class="commenter-thumb">
                  <img src="images/testimonial/thumb-5.jpg" class="img-fluid commenter" alt="">
                  <img src="images/testimonial/5.png" class="comapnyLogo" alt="">
                </div>
                <div class="commenter-thumb">
                  <img src="images/testimonial/thumb-2.jpg" class="img-fluid commenter" alt="">
                  <img src="images/testimonial/2.png" class="comapnyLogo" alt="">
                </div>
                <div class="commenter-thumb">
                  <img src="images/testimonial/thumb-3.jpg" class="img-fluid commenter" alt="">
                  <img src="images/testimonial/3.png" class="comapnyLogo" alt="">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Testimonial End -->

    <!-- NewsLetter -->
    <div class="newsletter-bg padding-top-90 padding-bottom-90">
      <div class="container">
        <div class="row">
          <div class="col-xl-5 col-lg-6">
            <div class="newsletter-wrap">
              <h3>Newsletter</h3>
              <p>Get e-mail updates about our latest news and Special offers. We don’t send spam so don’t worry.</p>
              <form action="#" class="newsletter-form form-inline">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Email address...">
                </div>
                <button class="btn button">Submit<i class="fas fa-caret-right"></i></button>
                <p class="newsletter-error">0 - Please enter a value</p>
                <p class="newsletter-success">Thank you for subscribing!</p>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- NewsLetter End -->

    <!-- Footer -->
    <footer class="footer-bg">
      <div class="footer-top border-bottom section-padding-top padding-bottom-40">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <div class="footer-logo">
                <a href="#">
                  <img src="images/footer-logo.png" class="img-fluid" alt="">
                </a>
              </div>
            </div>
            <div class="col-md-6">
              <div class="footer-social">
                <ul class="social-icons">
                  <li><a href="#"><i data-feather="facebook"></i></a></li>
                  <li><a href="#"><i data-feather="twitter"></i></a></li>
                  <li><a href="#"><i data-feather="linkedin"></i></a></li>
                  <li><a href="#"><i data-feather="instagram"></i></a></li>
                  <li><a href="#"><i data-feather="youtube"></i></a></li>
                </ul>
                <select class="selectpicker select-language" id="select-country">
                  <option value="United States of America" selected>EN</option>
                  <option value="United Kingdom">GB</option>
                  <option value="Spain">ES</option>
                  <option value="Portugal">PT</option>
                </select>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-widget-wrapper padding-bottom-60 padding-top-80">
        <div class="container">
          <div class="row">
            <div class="col-lg-5 col-sm-6">
              <div class="footer-widget widget-about">
                <h4>About Us</h4>
                <div class="widget-inner">
                  <p class="description">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>
                  <span class="about-contact"><i data-feather="phone-forwarded"></i>+8 246-345-0698</span>
                  <span class="about-contact"><i data-feather="mail"></i>supportmail@gmail.com</span>
                </div>
              </div>
            </div>
            <div class="col-lg-2 offset-lg-1 col-sm-6">
              <div class="footer-widget footer-shortcut-link">
                <h4>Information</h4>
                <div class="widget-inner">
                  <ul>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Terms &amp; Conditions</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-lg-2 col-sm-6">
              <div class="footer-widget footer-shortcut-link">
                <h4>Job Seekers</h4>
                <div class="widget-inner">
                  <ul>
                    <li><a href="#">Create Account</a></li>
                    <li><a href="#">Career Counseling</a></li>
                    <li><a href="#">My Oficiona</a></li>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Video Guides</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-lg-2 col-sm-6">
              <div class="footer-widget footer-shortcut-link">
                <h4>Employers</h4>
                <div class="widget-inner">
                  <ul>
                    <li><a href="#">Create Account</a></li>
                    <li><a href="#">Products/Service</a></li>
                    <li><a href="#">Post a Job</a></li>
                    <li><a href="#">FAQ</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-bottom-area">
        <div class="container">
          <div class="row">
            <div class="col">
              <div class="footer-bottom border-top">
                <div class="row">
                  <div class="col-xl-4 col-lg-5 order-lg-2">
                    <div class="footer-app-download">
                      <a href="#" class="apple-app">Apple Store</a>
                      <a href="#" class="android-app">Google Play</a>
                    </div>
                  </div>
                  <div class="col-xl-4 col-lg-4 order-lg-1">
                    <p class="copyright-text">Copyright <a href="http://www.17sucai.com/">Oficiona</a> 2018, All right reserved</p>
                  </div>
                  <div class="col-xl-4 col-lg-3 order-lg-3">
                    <div class="back-to-top">
                      <a href="#">Back to top<i class="fas fa-angle-up"></i></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- Footer End -->



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/feather.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/jquery.nstSlider.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/visible.js"></script>
    <script src="assets/js/jquery.countTo.js"></script>
    <script src="assets/js/chart.js"></script>
    <script src="assets/js/plyr.js"></script>
    <script src="assets/js/tinymce.min.js"></script>
    <script src="assets/js/slick.min.js"></script>
    <script src="assets/js/jquery.ajaxchimp.min.js"></script>

    <script src="js/custom.js"></script>

    <script src="http://ditu.google.cn/maps/api/js?key=AIzaSyC87gjXWLqrHuLKR0CTV5jNLdP4pEHMhmg"></script>
    <script src="js/map.js"></script>
  </body>
</html>
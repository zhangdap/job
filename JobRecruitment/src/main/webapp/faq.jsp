﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>

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

    <header class="header-2">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="header-top">
              <div class="logo-area">
                <a href="#"><img src="images/logo-2.png" alt=""></a>
              </div>
              <div class="header-top-toggler">
                <div class="header-top-toggler-button"></div>
              </div>
              <div class="top-nav">
                <div class="dropdown header-top-notification">
                  <a href="#" class="notification-button">Notification</a>
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
                </div>
                <div class="dropdown header-top-account">
                  <a href="#" class="account-button">My Account</a>
                  <div class="account-card">
                    <div class="header-top-account-info">
                      <a href="#" class="account-thumb">
                        <img src="images/account/thumb-1.jpg" class="img-fluid" alt="">
                      </a>
                      <div class="account-body">
                        <h5><a href="#">Robert Chavez</a></h5>
                        <span class="mail">chavez@domain.com</span>
                      </div>
                    </div>
                    <ul class="account-item-list">
                      <li><a href="#"><span class="ti-user"></span>Account</a></li>
                      <li><a href="#"><span class="ti-settings"></span>Settings</a></li>
                      <li><a href="#"><span class="ti-power-off"></span>Log Out</a></li>
                    </ul>
                  </div>
                </div>
                <select class="selectpicker select-language" data-width="fit">
                  <option data-content='<span class="flag-icon flag-icon-us"></span> English'>English</option>
                  <option  data-content='<span class="flag-icon flag-icon-mx"></span> Español'>Español</option>
                </select>
              </div>
            </div>
            <nav class="navbar navbar-expand-lg cp-nav-2">
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav">
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
              </div>
            </nav>
          </div>
        </div>
      </div>
    </header>

    <!-- Breadcrumb -->
    <div class="alice-bg padding-top-70 padding-bottom-70">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="breadcrumb-area">
              <h1>FAQ Page</h1>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">FAQ Page</li>
                </ol>
              </nav>
            </div>
          </div>
          <div class="col-md-6">
            <div class="breadcrumb-form">
              <form action="#">
                <input type="text" placeholder="Enter Keywords">
                <button><i data-feather="search"></i></button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- How It Work -->
    <div class="alice-bg section-padding-bottom">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="white-bg others-block">
              <!-- FAQ -->
              <div class="padding-top-60 padding-bottom-60">
                <div class="container">
                  <div class="row">
                    <div class="col">
                      <div class="section-header section-header-center">
                        <h6>Your answer here</h6>
                        <h2>Frequently Asked Questions</h2>
                      </div>
                    </div>
                  </div>
                  <div class="row justify-content-center">
                    <div class="col-lg-10">
                      <ul class="nav nav-tabs faq-tab" id="myTab" role="tablist">
                        <li class="nav-item">
                          <a class="nav-link active show" id="feature-tab" data-toggle="tab" href="#feature" role="tab" aria-controls="feature" aria-selected="false">Candidate</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" id="latest-tab" data-toggle="tab" href="#latest" role="tab" aria-controls="latest" aria-selected="false">Employer</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="true">About Pricing</a>
                        </li>
                      </ul>
                      <div class="tab-content faq-tab-content" id="myTabContent">
                        <div class="tab-pane fade active show" id="feature" role="tabpanel" aria-labelledby="feature-tab">
                          <div class="accordion" id="accordionExample">
                            <div class="card">
                              <div class="card-header" id="headingOne">
                                <h5 class="mb-0">
                                  <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    What is Oficiona ?
                                  </button>
                                </h5>
                              </div>
                              <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="card-body">
                                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
                                  <p>Did you like this answer ? <a href="#">Yes</a> or <a href="#">No</a></p>
                                </div>
                              </div>
                            </div>
                            <div class="card">
                              <div class="card-header" id="headingTwo">
                                <h5 class="mb-0">
                                  <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    How we sell your product here ?
                                  </button>
                                </h5>
                              </div>
                              <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                <div class="card-body">
                                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
                                  <p>Did you like this answer ? <a href="#">Yes</a> or <a href="#">No</a></p>
                                </div>
                              </div>
                            </div>
                            <div class="card">
                              <div class="card-header" id="headingThree">
                                <h5 class="mb-0">
                                  <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    What is our features product?
                                  </button>
                                </h5>
                              </div>
                              <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                <div class="card-body">
                                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
                                  <p>Did you like this answer ? <a href="#">Yes</a> or <a href="#">No</a></p>
                                </div>
                              </div>
                            </div>
                            <div class="card">
                              <div class="card-header" id="headingFour">
                                <h5 class="mb-0">
                                  <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                    Is it ecommerce site?
                                  </button>
                                </h5>
                              </div>
                              <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                                <div class="card-body">
                                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
                                  <p>Did you like this answer ? <a href="#">Yes</a> or <a href="#">No</a></p>
                                </div>
                              </div>
                            </div>
                            <div class="card">
                              <div class="card-header" id="headingFive">
                                <h5 class="mb-0">
                                  <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                    How we take payment from our customers?
                                  </button>
                                </h5>
                              </div>
                              <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
                                <div class="card-body">
                                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
                                  <p>Did you like this answer ? <a href="#">Yes</a> or <a href="#">No</a></p>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane fade" id="latest" role="tabpanel" aria-labelledby="latest-tab">
                          <div class="accordion" id="accordionExample2">
                            <div class="card">
                              <div class="card-header" id="headingSix">
                                <h5 class="mb-0">
                                  <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseSix" aria-expanded="true" aria-controls="collapseSix">
                                    How we sell your product here ?
                                  </button>
                                </h5>
                              </div>
                              <div id="collapseSix" class="collapse show" aria-labelledby="headingSix" data-parent="#accordionExample2">
                                <div class="card-body">
                                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
                                  <p>Did you like this answer ? <a href="#">Yes</a> or <a href="#">No</a></p>
                                </div>
                              </div>
                            </div>
                            <div class="card">
                              <div class="card-header" id="headingSeven">
                                <h5 class="mb-0">
                                  <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                                    How we sell your product here?
                                  </button>
                                </h5>
                              </div>
                              <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordionExample2">
                                <div class="card-body">
                                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
                                  <p>Did you like this answer ? <a href="#">Yes</a> or <a href="#">No</a></p>
                                </div>
                              </div>
                            </div>
                            <div class="card">
                              <div class="card-header" id="headingEight">
                                <h5 class="mb-0">
                                  <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
                                    What is our features product?
                                  </button>
                                </h5>
                              </div>
                              <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordionExample2">
                                <div class="card-body">
                                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
                                  <p>Did you like this answer ? <a href="#">Yes</a> or <a href="#">No</a></p>
                                </div>
                              </div>
                            </div>
                            <div class="card">
                              <div class="card-header" id="headingNine">
                                <h5 class="mb-0">
                                  <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseNine" aria-expanded="false" aria-controls="collapseNine">
                                    Is it ecommerce site?
                                  </button>
                                </h5>
                              </div>
                              <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordionExample2">
                                <div class="card-body">
                                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
                                  <p>Did you like this answer ? <a href="#">Yes</a> or <a href="#">No</a></p>
                                </div>
                              </div>
                            </div>
                            <div class="card">
                              <div class="card-header" id="headingTen">
                                <h5 class="mb-0">
                                  <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen">
                                    How we take payment from our customers?
                                  </button>
                                </h5>
                              </div>
                              <div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-parent="#accordionExample2">
                                <div class="card-body">
                                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
                                  <p>Did you like this answer ? <a href="#">Yes</a> or <a href="#">No</a></p>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                          <div class="accordion" id="accordionExample3">
                            <div class="card">
                              <div class="card-header" id="headingEleven">
                                <h5 class="mb-0">
                                  <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseEleven" aria-expanded="true" aria-controls="collapseEleven">
                                    How we sell your product here ?
                                  </button>
                                </h5>
                              </div>
                              <div id="collapseEleven" class="collapse show" aria-labelledby="headingEleven" data-parent="#accordionExample3">
                                <div class="card-body">
                                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
                                  <p>Did you like this answer ? <a href="#">Yes</a> or <a href="#">No</a></p>
                                </div>
                              </div>
                            </div>
                            <div class="card">
                              <div class="card-header" id="headingTweleve">
                                <h5 class="mb-0">
                                  <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTweleve" aria-expanded="false" aria-controls="collapseTweleve">
                                    How we sell your product here?
                                  </button>
                                </h5>
                              </div>
                              <div id="collapseTweleve" class="collapse" aria-labelledby="headingTweleve" data-parent="#accordionExample3">
                                <div class="card-body">
                                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
                                  <p>Did you like this answer ? <a href="#">Yes</a> or <a href="#">No</a></p>
                                </div>
                              </div>
                            </div>
                            <div class="card">
                              <div class="card-header" id="headingThirteen">
                                <h5 class="mb-0">
                                  <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThirteen" aria-expanded="false" aria-controls="collapseThirteen">
                                    What is our features product?
                                  </button>
                                </h5>
                              </div>
                              <div id="collapseThirteen" class="collapse" aria-labelledby="headingThirteen" data-parent="#accordionExample3">
                                <div class="card-body">
                                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
                                  <p>Did you like this answer ? <a href="#">Yes</a> or <a href="#">No</a></p>
                                </div>
                              </div>
                            </div>
                            <div class="card">
                              <div class="card-header" id="headingFourteen">
                                <h5 class="mb-0">
                                  <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFourteen" aria-expanded="false" aria-controls="collapseFourteen">
                                    Is it ecommerce site?
                                  </button>
                                </h5>
                              </div>
                              <div id="collapseFourteen" class="collapse" aria-labelledby="headingFourteen" data-parent="#accordionExample3">
                                <div class="card-body">
                                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
                                  <p>Did you like this answer ? <a href="#">Yes</a> or <a href="#">No</a></p>
                                </div>
                              </div>
                            </div>
                            <div class="card">
                              <div class="card-header" id="headingFifteen">
                                <h5 class="mb-0">
                                  <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFifteen" aria-expanded="false" aria-controls="collapseFifteen">
                                    How we take payment from our customers?
                                  </button>
                                </h5>
                              </div>
                              <div id="collapseFifteen" class="collapse" aria-labelledby="headingFifteen" data-parent="#accordionExample3">
                                <div class="card-body">
                                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>
                                  <p>Did you like this answer ? <a href="#">Yes</a> or <a href="#">No</a></p>
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
              <!-- FAQ End -->
              <div class="padding-bottom-60">
                <div class="quick-contact">
                  <div class="icon">
                    <img src="images/chat-icon.png" class="img-fluid" alt="">
                  </div>
                  <h4>Don’t get Answer?</h4>
                  <p>We have a record of answering everything in 3 hours of less.</p>
                  <div class="buttons">
                    <a href="#" class="email">Email Us</a>
                    <a href="#" class="chat">Let's Chat</a>
                  </div>
                  <p class="call">Or maybe you’d like to call us: <span>(+7 (966) 552-88-46)</span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- How It Work End -->

    <!-- Call to Action -->
    <div class="call-to-action-bg padding-top-90 padding-bottom-90">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="call-to-action-2">
              <div class="call-to-action-content">
                <h2>For Find Your Dream Job or Candidate</h2>
                <p>Add resume or post a job. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec.</p>
              </div>
              <div class="call-to-action-button">
                <a href="add-resume.html" class="button">Add Resume</a>
                <span>Or</span>
                <a href="post-job.html" class="button">Post A Job</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Call to Action End -->

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
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-widget-wrapper padding-bottom-60 padding-top-80">
        <div class="container">
          <div class="row">
            <div class="col-lg-2 col-sm-6">
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
            <div class="col-lg-5 offset-lg-1 col-sm-6">
              <div class="footer-widget footer-newsletter">
                <h4>Newsletter</h4>
                <p>Get e-mail updates about our latest news and Special offers.</p>
                <form action="#" class="newsletter-form form-inline">
                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="Email address...">
                  </div>
                  <button class="btn button primary-bg">Submit<i class="fas fa-caret-right"></i></button>
                  <p class="newsletter-error">0 - Please enter a value</p>
                  <p class="newsletter-success">Thank you for subscribing!</p>
                </form>
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
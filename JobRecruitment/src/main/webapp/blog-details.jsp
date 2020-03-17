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

    <div class="alice-bg padding-top-60 section-padding-bottom">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="blog-post-details-container">
              <div class="blog-details-wrapper">
                <div class="info">
                  <span class="date">24th dec, 2018</span>
                  <span class="author"><a href="#"><i data-feather="user"></i>Robert Karlos</a></span>
                  <span class="comments"><i data-feather="message-circle"></i>42</span>
                </div>
                <div class="post-content">
                  <h2>There are many variations  of passages</h2>
                  <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release  circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us.</p>
                  <p>Ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences.</p>
                  <img src="images/blog/post-thumb-1.jpg" class="img-fluid" alt="">
                  <blockquote>“It was popularised in the 1960s with the release  circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us Nam libero tempore, cum soluta nobis est eligendi.”</blockquote>
                  <p>Expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>
                  <p>To take a trivial example, which of us ever undertakes laborious  physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a there anyone who loves or pain that produces no resultant pleasure.</p>
                  <div class="images">
                    <div class="image">
                      <img src="images/blog/post-thumb-2.jpg" class="img-fluid" alt="">
                    </div>
                    <div class="image">
                      <img src="images/blog/post-thumb-3.jpg" class="img-fluid" alt="">
                    </div>
                  </div>
                  <p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious  some great physical exercise, except to.</p>
                </div>
              </div>
              <div class="post-meta">
                <div class="post-author">
                  <div class="avatar">
                    <img src="images/blog/author.jpg" class="img-fluid" alt="">
                  </div>
                  <div class="name">
                    <p>Post By</p>
                    <h5><a href="#">Rovert Carlos</a></h5>
                  </div>
                </div>
                <div class="post-tag">
                  <h6>Post Tag</h6>
                  <div class="tags">
                    <a href="#">Design</a>
                    <a href="#">Creative</a>
                    <a href="#">Photoshop</a>
                    <a href="#">Tech</a>
                  </div>
                </div>
                <div class="post-share">
                  <h6>Post Share</h6>
                  <div class="social-buttons">
                    <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="twitter"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="google"><i class="fab fa-google-plus-g"></i></a>
                    <a href="#" class="linkedin"><i class="fab fa-linkedin-in"></i></a>
                    <a href="#" class="pinterest"><i class="fab fa-pinterest-p"></i></a>
                    <a href="#" class="instagram"><i class="fab fa-instagram"></i></a>
                  </div>
                </div>
              </div>
              <div class="post-comment-block">
                <div class="comment-respond">
                  <h4>Write A Comment</h4>
                  <form action="#">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <input type="text" placeholder="Name" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <input type="email" placeholder="Email address" class="form-control">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <textarea placeholder="Comment" class="form-control"></textarea>
                        </div>
                        <div class="form-group">
                          <input class="custom-radio" type="checkbox" id="radio-4" name="termsandcondition">
                          <label for="radio-4">
                            <span class="dot"></span> Notify me of follow-up comments by email.
                          </label>
                        </div>
                      </div>
                    </div>
                    <button class="button primary-bg">Submit</button>
                  </form>
                </div>
                <div class="comment-area">
                  <h4>5 Comments</h4>
                  <ul class="comments">
                    <li class="comment">
                      <div class="comment-wrap">
                        <div class="comment-info">
                          <div class="commenter-thumb">
                            <img src="images/blog/2.jpg" class="img-fluid" alt="">
                          </div>
                          <div class="commenter-info">
                            <span class="commenter-name">Lisa Parsons</span>
                            <span class="date">28 Dec 2019</span>
                          </div>
                          <div class="reply">
                            <button type="button" class="reply-button" data-toggle="modal" data-target="#modal-skill25">Reply</button>
                            <div class="modal fade" id="modal-skill25" tabindex="-1" role="dialog" aria-hidden="true">
                              <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                  <div class="modal-body">
                                    <div class="comment-respond">
                                      <h4>Write A Comment</h4>
                                      <form action="#">
                                        <div class="row">
                                          <div class="col-md-6">
                                            <div class="form-group">
                                              <input type="text" placeholder="Name" class="form-control">
                                            </div>
                                          </div>
                                          <div class="col-md-6">
                                            <div class="form-group">
                                              <input type="email" placeholder="Email address" class="form-control">
                                            </div>
                                          </div>
                                        </div>
                                        <div class="row">
                                          <div class="col-md-12">
                                            <div class="form-group">
                                              <textarea placeholder="Comment" class="form-control"></textarea>
                                            </div>
                                            <div class="form-group">
                                              <input class="custom-radio" type="checkbox" id="radio-6" name="termsandcondition2">
                                              <label for="radio-6">
                                                <span class="dot"></span> Notify me of follow-up comments by email.
                                              </label>
                                            </div>
                                          </div>
                                        </div>
                                        <button class="button primary-bg">Submit</button>
                                      </form>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="comment-body">
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                      </div>
                      <ul class="comments child-comment">
                        <li class="comment">
                          <div class="comment-wrap">
                            <div class="comment-info">
                              <div class="commenter-thumb">
                                <img src="images/blog/3.jpg" class="img-fluid" alt="">
                              </div>
                              <div class="commenter-info">
                                <span class="commenter-name">Ethel N. Myers</span>
                                <span class="date">28 Dec 2019</span>
                              </div>
                              <div class="reply">
                                <button type="button" class="reply-button" data-toggle="modal" data-target="#modal-skill26">Reply</button>
                                <div class="modal fade" id="modal-skill26" tabindex="-1" role="dialog" aria-hidden="true">
                                  <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                      <div class="modal-body">
                                        <div class="comment-respond">
                                          <h4>Write A Comment</h4>
                                          <form action="#">
                                            <div class="row">
                                              <div class="col-md-6">
                                                <div class="form-group">
                                                  <input type="text" placeholder="Name" class="form-control">
                                                </div>
                                              </div>
                                              <div class="col-md-6">
                                                <div class="form-group">
                                                  <input type="email" placeholder="Email address" class="form-control">
                                                </div>
                                              </div>
                                            </div>
                                            <div class="row">
                                              <div class="col-md-12">
                                                <div class="form-group">
                                                  <textarea placeholder="Comment" class="form-control"></textarea>
                                                </div>
                                                <div class="form-group">
                                                  <input class="custom-radio" type="checkbox" id="radio-7" name="termsandcondition3">
                                                  <label for="radio-7">
                                                    <span class="dot"></span> Notify me of follow-up comments by email.
                                                  </label>
                                                </div>
                                              </div>
                                            </div>
                                            <button class="button primary-bg">Submit</button>
                                          </form>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class="comment-body">
                              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                            </div>
                          </div>
                        </li>
                      </ul>
                    </li>
                    <li class="comment">
                      <div class="comment-wrap">
                        <div class="comment-info">
                          <div class="commenter-thumb">
                            <img src="images/blog/1.jpg" class="img-fluid" alt="">
                          </div>
                          <div class="commenter-info">
                            <span class="commenter-name">Rovert Carlos</span>
                            <span class="date">28 Dec 2019</span>
                          </div>
                          <div class="reply">
                            <button type="button" class="reply-button" data-toggle="modal" data-target="#modal-skill27">Reply</button>
                            <div class="modal fade" id="modal-skill27" tabindex="-1" role="dialog" aria-hidden="true">
                              <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                  <div class="modal-body">
                                    <div class="comment-respond">
                                      <h4>Write A Comment</h4>
                                      <form action="#">
                                        <div class="row">
                                          <div class="col-md-6">
                                            <div class="form-group">
                                              <input type="text" placeholder="Name" class="form-control">
                                            </div>
                                          </div>
                                          <div class="col-md-6">
                                            <div class="form-group">
                                              <input type="email" placeholder="Email address" class="form-control">
                                            </div>
                                          </div>
                                        </div>
                                        <div class="row">
                                          <div class="col-md-12">
                                            <div class="form-group">
                                              <textarea placeholder="Comment" class="form-control"></textarea>
                                            </div>
                                            <div class="form-group">
                                              <input class="custom-radio" type="checkbox" id="radio-8" name="termsandcondition8">
                                              <label for="radio-8">
                                                <span class="dot"></span> Notify me of follow-up comments by email.
                                              </label>
                                            </div>
                                          </div>
                                        </div>
                                        <button class="button primary-bg">Submit</button>
                                      </form>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="comment-body">
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                      </div>
                    </li>
                  </ul>
                  <div class="view-all">
                    <a href="#">View all comments</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

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
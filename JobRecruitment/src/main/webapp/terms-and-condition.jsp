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

    <!-- Breadcrumb -->
    <div class="alice-bg padding-top-70 padding-bottom-70">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="breadcrumb-area">
              <h1>Privacy Policy</h1>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Privacy Policy</li>
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

    <div class="alice-bg section-padding-bottom">
      <div class="container no-gliters">
        <div class="row no-gliters">
          <div class="col">
            <div class="terms-container">
              <div class="terms-content-wrapper">
                <div class="policy-tab">
                  <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" id="privacy-tab" data-toggle="tab" href="#privacy" role="tab" aria-controls="privacy" aria-selected="true">Privacy Policy</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" id="terms-tab" data-toggle="tab" href="#terms" role="tab" aria-controls="terms" aria-selected="false">Terms of Service</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" id="regal-tab" data-toggle="tab" href="#regal" role="tab" aria-controls="regal" aria-selected="false">Regal</a>
                    </li>
                  </ul>
                  <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="privacy" role="tabpanel" aria-labelledby="privacy-tab">
                      <h4 id="welcome">Welcome To Oficiona</h4>
                      <p>Expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone.</p>
                      <p>Who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>
                      <h5 id="termss">Our Terms</h5>
                      <p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious  some great physical exercise, except to.</p>
                      <ul>
                        <li>But because those who do not know how to pursue pleasure</li>
                        <li>Nor again is there anyone who loves or pursues</li>
                        <li>Except to obtain some advantage from it?</li>
                        <li>who avoids a pain that produces no resultant pleasure.</li>
                      </ul>
                      <h5 id="condition">Conditions</h5>
                      <p>it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain.</p>
                      <p>but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious  some great physical exercise, except to.</p>
                      <ul>
                        <li>Nor again is there anyone who loves or pursues</li>
                        <li>Except to obtain some advantage from it?</li>
                        <li> who avoids a pain that produces no resultant pleasure.</li>
                      </ul>
                      <h5 id="privacy-2">Your Privacy</h5>
                      <p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. De Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum.</p>
                      <h5 id="information">Informations We Collect</h5>
                      <p>Combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. De Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC.</p>
                      <ul class="substyle">
                        <li><span>Cookies:</span> Our Website uses "Cookies" to identify the areas of our Website that you have visited. A Cookie is a small piece of data stored on your computer or mobile device by your web browser. We use Cookies to personalize the Content that you see on our Website. Most web browsers can be set to disable the use of Cookies. However, if you disable Cookies, you may not be able to access functionality on our Website correctly or at all. We never place Personally Identifiable Information in Cookies.</li>
                        <li><span>Geographical Information:</span> We will not share your current location with other users or partners. If you do not want us to use your location for the purposes set forth above, you should turn off the location services for the mobile application located in your account settings or in your mobile phone settings and/or within the mobile application.</li>
                        <li><span>Log Data:</span> Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose </li>
                      </ul>
                      <h5 id="security">Security</h5>
                      <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage</p>
                      <p>And going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero.</p>
                      <h5 id="update">Privacy Policy Update</h5>
                      <p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with</p>
                      <p>to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>
                    </div>
                    <div class="tab-pane fade" id="terms" role="tabpanel" aria-labelledby="terms-tab">
                      <h4>Welcome To Oficiona</h4>
                      <p>Expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone.</p>
                      <p>Who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>
                      <h5>Our Terms</h5>
                      <p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious  some great physical exercise, except to.</p>
                      <ul>
                        <li>But because those who do not know how to pursue pleasure</li>
                        <li>Nor again is there anyone who loves or pursues</li>
                        <li>Except to obtain some advantage from it?</li>
                        <li>who avoids a pain that produces no resultant pleasure.</li>
                      </ul>
                      <h5>Conditions</h5>
                      <p>it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain.</p>
                      <p>but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious  some great physical exercise, except to.</p>
                      <ul>
                        <li>Nor again is there anyone who loves or pursues</li>
                        <li>Except to obtain some advantage from it?</li>
                        <li> who avoids a pain that produces no resultant pleasure.</li>
                      </ul>
                      <h5>Your Privacy</h5>
                      <p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. De Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum.</p>
                      <h5>Informations We Collect</h5>
                      <p>Combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. De Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC.</p>
                      <ul class="substyle">
                        <li><span>Cookies:</span> Our Website uses "Cookies" to identify the areas of our Website that you have visited. A Cookie is a small piece of data stored on your computer or mobile device by your web browser. We use Cookies to personalize the Content that you see on our Website. Most web browsers can be set to disable the use of Cookies. However, if you disable Cookies, you may not be able to access functionality on our Website correctly or at all. We never place Personally Identifiable Information in Cookies.</li>
                        <li><span>Geographical Information:</span> We will not share your current location with other users or partners. If you do not want us to use your location for the purposes set forth above, you should turn off the location services for the mobile application located in your account settings or in your mobile phone settings and/or within the mobile application.</li>
                        <li><span>Log Data:</span> Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose </li>
                      </ul>
                      <h5>Security</h5>
                      <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage</p>
                      <p>And going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero.</p>
                      <h5>Privacy Policy Update</h5>
                      <p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with</p>
                      <p>to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>
                    </div>
                    <div class="tab-pane fade" id="regal" role="tabpanel" aria-labelledby="regal-tab">
                      <h4>Welcome To Oficiona</h4>
                      <p>Expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone.</p>
                      <p>Who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>
                      <h5>Our Terms</h5>
                      <p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious  some great physical exercise, except to.</p>
                      <ul>
                        <li>But because those who do not know how to pursue pleasure</li>
                        <li>Nor again is there anyone who loves or pursues</li>
                        <li>Except to obtain some advantage from it?</li>
                        <li>who avoids a pain that produces no resultant pleasure.</li>
                      </ul>
                      <h5>Conditions</h5>
                      <p>it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain.</p>
                      <p>but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious  some great physical exercise, except to.</p>
                      <ul>
                        <li>Nor again is there anyone who loves or pursues</li>
                        <li>Except to obtain some advantage from it?</li>
                        <li> who avoids a pain that produces no resultant pleasure.</li>
                      </ul>
                      <h5>Your Privacy</h5>
                      <p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. De Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum.</p>
                      <h5>Informations We Collect</h5>
                      <p>Combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. De Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC.</p>
                      <ul class="substyle">
                        <li><span>Cookies:</span> Our Website uses "Cookies" to identify the areas of our Website that you have visited. A Cookie is a small piece of data stored on your computer or mobile device by your web browser. We use Cookies to personalize the Content that you see on our Website. Most web browsers can be set to disable the use of Cookies. However, if you disable Cookies, you may not be able to access functionality on our Website correctly or at all. We never place Personally Identifiable Information in Cookies.</li>
                        <li><span>Geographical Information:</span> We will not share your current location with other users or partners. If you do not want us to use your location for the purposes set forth above, you should turn off the location services for the mobile application located in your account settings or in your mobile phone settings and/or within the mobile application.</li>
                        <li><span>Log Data:</span> Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose </li>
                      </ul>
                      <h5>Security</h5>
                      <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage</p>
                      <p>And going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero.</p>
                      <h5>Privacy Policy Update</h5>
                      <p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with</p>
                      <p>to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="terms-sidebar">
                <h5><i data-feather="arrow-down-circle"></i>Navigation</h5>
                <ul class="sidebar-menu">
                  <li><a href="#welcome">Welcome Text</a></li>
                  <li><a href="#termss">Our Terms</a></li>
                  <li><a href="#condition">Conditions</a></li>
                  <li><a href="#privacy-2">Your Privacy</a></li>
                  <li><a href="#information">Informations We Collect</a></li>
                  <li><a href="#security">Security</a></li>
                  <li><a href="#update">Privacy Policy Update</a></li>
                </ul>
                <div class="signin-option">
                  <p>Have an Account ? Before submit job you need to sign in !</p>
                  <div class="buttons">
                    <a href="#" class="signin" data-toggle="modal" data-target="#exampleModalLong">Sign in</a>
                    <a href="#" class="register" data-toggle="modal" data-target="#exampleModalLong2">Register</a>
                  </div>
                  
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
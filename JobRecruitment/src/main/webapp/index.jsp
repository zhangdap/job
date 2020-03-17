<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
      <c:if test="${JobTypes==null }">
      <c:redirect url="jobTypeList.action?jspName=index"/>
      </c:if>
      <!-- 设置那个讨厌的模态框隐藏 -->
    <!--   <style type="text/css">
        .modal-backdrop{ display:none; }
      </style> -->
  </head>
  <body>
    <!-- Header -->
    <header>
      <nav class="navbar navbar-expand-xl absolute-nav transparent-nav cp-nav navbar-light bg-light fluid-nav">
        <a class="navbar-brand" href="index.jsp"> 
          <img src="images/logo.png" class="img-fluid" alt="">
        </a>
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto main-nav">
            <li class="menu-item active"><a title="Home" href="index.jsp">Home</a></li>
            <li class="menu-item dropdown">
              <a title="" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false">Pages</a>
              <ul  class="dropdown-menu">
                <li class="menu-item"><a title="About" href="about-us.jsp">About Us</a></li>
                <li class="menu-item"><a title="About" href="contact.jsp">Contact Us</a></li>
                <li class="menu-item"><a title="About" href="faq.jsp">FAQ</a></li>
              </ul>
            </li>
            <!-- 在发布工作之前先要进行登录检测 -->
            <c:if test="${loginUser.usertype!=1 }">
            <li class="menu-item post-job"><a title="Title" href="before.action?jspName=post-job"><i class="fas fa-plus"></i>Post a Job</a></li>
            </c:if>
          </ul>
          <ul class="navbar-nav ml-auto account-nav">
            <li class="dropdown menu-item header-top-notification">
              <a href="#" class="notification-button"></a>
              <div class="notification-card">
                <div class="notification-head">
                  <span>Notifications</span>
                </div>
                <div class="notification-body" id="notificationDiv">
                </div>
              </div>
            </li>
             <!-- 根据登录情况决定显示的情况 -->
            <c:if test="${loginUser==null }">
            <li class="menu-item login-popup"><button title="Title" type="button" data-toggle="modal" data-target="#exampleModalLong">Login</button></li>
            <li class="menu-item login-popup"><button title="Title" type="button" data-toggle="modal" data-target="#exampleModalLong2">Registration</button></li>
             </c:if>
             <c:if test="${loginUser!=null }">
                <div class="dropdown header-top-account">
                  &nbsp;&nbsp;&nbsp;&nbsp;<a href="#" style="color: white;" class="account-button"><font style="color: white;">${loginUser.username }</font> </a>
                  <div class="account-card">
                    <div class="header-top-account-info">
                      <a href="#" class="account-thumb">
                        <img src="${loginUser.userhead }" class="img-fluid" alt="">
                      </a>
                      <div class="account-body">
                        <h5><a href="before.action?jspName=employer-dashboard-edit-profile">${loginUser.username }</a></h5>
                        <span class="mail">${loginUser.useremail }</span>
                      </div>
                    </div>
                    <ul class="account-item-list">
                    <c:if test="${loginUser.usertype==1 }">
                    <li><a href="dashboard-edit-profile.jsp"><span class="ti-user"></span>Account</a></li>
                    </c:if>
                    <c:if test="${loginUser.usertype==2 }">
                    <li><a href="before.action?jspName=employer-dashboard-edit-profile"><span class="ti-user"></span>Account</a></li>
                    </c:if>
                      <li><a href="loginOut.action"><span class="ti-power-off"></span>Log Out</a></li>
                    </ul>
                  </div>
                </div>
            <a href="loginOut.action" ><font color="white" >退出登录</font></a>                  
             </c:if>
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
              <!-- 登录表单 -->
              <div class="modal-body">
                <form action="login.action" method="get">
                  <div class="form-group">
                    <input type="text" placeholder="UserName" name="loginusername" class="form-control">
                  </div>
                  <div class="form-group">
                    <input type="password" placeholder="Password" name="loginpassword" class="form-control">
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
                  <button class="button primary-bg btn-block" type="submit">Login</button>
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
              <!-- 注册表单 -->
              <div class="modal-body">
                <div class="account-type">
                  <a href="javascript:void(0)" onclick="changeType(1)" class="candidate-acc active"><i data-feather="user"></i>Candidate</a>
                  <a href="javascript:void(0)" onclick="changeType(2)" class="employer-acc"><i data-feather="briefcase"></i>Employer</a>
                </div>
                <form action="regist.action" method="post">
                  <div class="form-group">
                  <input hidden="hidden" name="usertype" id="usertype" value="1">
                    <input type="text" placeholder="UserName" name="username" class="form-control">
                  </div>
                  <div class="form-group">
                    <input type="email" placeholder="Email Address" name="useremail" class="form-control">
                  </div>
                  <div class="form-group">
                    <input type="password" placeholder="Password" name="userpass"  class="form-control">
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
              <!--多条件查询的部分-->
                <form action="conditionQueryJobs.action" method="post" class="search-form">
                <!-- 类别 -->
                  <select class="form-control" style="width: 284px;height: 51px;float: left;" id="search-category" name="typeName">
                    <c:forEach items="${JobTypes }" var="JobType">
                    <option value="${JobType.jobtypeid }" >${JobType.jobtypename }</option>
                    </c:forEach>
                  </select>
                 <!-- 省 -->
                  <select class="form-control" style="width: 284px;height: 51px;float: left;" id="province" name="province">
                  </select>
                  <!-- 市 -->
                  <select class="form-control" style="width: 284px;height: 51px ;float: left;" id="city" name="city">
                  </select>

                  <button class="button primary-bg" style="height: 51px"><i class="fas fa-search"></i>Search Job</button>
                </form>
                <div class="filter-categories">
                  <h4>Job Category</h4>
                  <ul>
                  <c:if test="${JobTypes!=null }">
                  <!-- 在转去相应的职位列表的时候要带上对应的参数id -->
                  <c:forEach items="${JobTypes }" var="JobType">
                    <li><a href="joblist.action?typeid=${JobType.jobtypeid }">${JobType.jobtypeimg }${JobType.jobtypename }</a></li>
                  </c:forEach>
                  </c:if>
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
                
                  <div class="col-lg-6" id="tdiv1">
                  </div>
                  <div class="col-lg-6" id="tdiv2">
                  </div>
                </div>
              </div>
              <div class="tab-pane fade" id="feature" role="tabpanel" aria-labelledby="feature-tab">
                <div class="row">
                  <div class="col-lg-6" id="tdiv3">
                  </div>
                  <div class="col-lg-6" id="tdiv4">
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
            <div class="company-carousel owl-carousel" id="comdiv">
            
            
              <div class="company-wrap">
                <div class="thumb">
                  <a href="#">
                    <img src="images/company/company-logo-1.png" class="img-fluid" alt="">
                  </a>
                </div>
                <div class="body">
                  <h4><a href="employer-details.jsp">Digoin</a></h4>
                  <span>Kansas City, Missouri</span>
                  <a href="job-listing.jsp" class="button">4 Open Positions</a>
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
    <script type="text/javascript">
    $(document).ready(function(){
    	//开始时加载属于登录人的消息
    	$.ajax({
            type: "post",
            url: "allMsgs.action",
            dataType: "json",
            success: function(data){
				//先获取Dom对象
				if (data.info=="ok") {
					var str="";
					$.each(data.messages, function(index,msg) {
	                     str +="<a href='javascript:changeMsgState("+msg.msgid+")'class='notification-list'> <i class='fas fa-bolt'></i><p>"+msg.msgcontent+"</p></a>";
	                });
					$("#notificationDiv").html(str);
				}
            }
        });
    	//加载推荐的公司
    	$.ajax({
            type: "post",
            url: "companyJobsCount.action",
            dataType: "json",
            success: function(data){
				//先获取Dom对象
				var str="";
				$.each(data.jobVos, function(index,jobvo) {
                     str +="<div style='float:left;' class='company-wrap'><div class='thumb' style='width:120px;heigth:108px'><a href='#'><img  src='images/company/company-logo-"+jobvo.companytype+".png' class='img-fluid' alt=''></a></div><div class='body'><h4><a href='employer-details.jsp'>"+jobvo.companyname+"</a></h4><span>"+jobvo.companyaddr+"</span><a href='queryJobsByCompanyid.action?companyid="+jobvo.companyid+"' class='button'>"+jobvo.count+" Open Positions</a></div></div>";
                     });
				$("#comdiv").html(str);
             }
        });
    	//加载首页需要的工作的数据
    	$.ajax({
            type: "post",
            url: "ajaxindexJobsList.action",
            dataType: "json",
            success: function(data){
				//先获取Dom对象
				var str1="";
				var str2="";
				var str3="";
				var str4="";
				//先加载第一部分的第一小块
				$.each(data.tjobs, function(index,job) {
					if (index<6) {
                     str1 +="<div class='job-list half-grid'><div class='thumb'><a href='jobdetails.action?jobid="+job.jobid+"'><img src='images/job/company-logo-"+job.jobtype+".png' class='img-fluid' alt=''></a></div><div class='body'><div class='content'><h4><a href='jobdetails.action?jobid="+job.jobid+"'>"+job.jobname+"</a></h4><div class='info'><span class='company'><a href='jobdetails.action?jobid="+job.jobid+"'><img style='width:15px;height:15px' src='img/money.png'>"+job.jobsarary+"</a></span><span class='office-location'><a href='#'><img style='width:15px;height:15px' src='img/zuobiao.png'>"+job.jobaddr+"</a></span><span class='job-type part-time'><a href='#'><img style='width:15px;height:15px' src='img/jingyan.png'>"+job.jobrequirement+"</a></span></div></div></div></div>";
					}else {
						str2 +="<div class='job-list half-grid'><div class='thumb'><a href='jobdetails.action?jobid="+job.jobid+"'><img src='images/job/company-logo-"+job.jobtype+".png' class='img-fluid' alt=''></a></div><div class='body'><div class='content'><h4><a href='jobdetails.action?jobid="+job.jobid+"'>"+job.jobname+"</a></h4><div class='info'><span class='company'><a href='jobdetails.action?jobid="+job.jobid+"'><img style='width:15px;height:15px' src='img/money.png'>"+job.jobsarary+"</a></span><span class='office-location'><a href='#'><img style='width:15px;height:15px' src='img/zuobiao.png'>"+job.jobaddr+"</a></span><span class='job-type part-time'><a href='#'><img style='width:15px;height:15px' src='img/jingyan.png'>"+job.jobrequirement+"</a></span></div></div></div></div>";
					}
               });
					$("#tdiv1").html(str1);
					$("#tdiv2").html(str2);
					
			$.each(data.sjobs, function(index,job) {
				if (index<6) {
                    str3 +="<div class='job-list half-grid'><div class='thumb'><a href='jobdetails.action?jobid="+job.jobid+"'><img src='images/job/company-logo-"+job.jobtype+".png' class='img-fluid' alt=''></a></div><div class='body'><div class='content'><h4><a href='jobdetails.action?jobid="+job.jobid+"'>"+job.jobname+"</a></h4><div class='info'><span class='company'><a href='jobdetails.action?jobid="+job.jobid+"'><img style='width:15px;height:15px' src='img/money.png'>"+job.jobsarary+"</a></span><span class='office-location'><a href='#'><img style='width:15px;height:15px' src='img/zuobiao.png'>"+job.jobaddr+"</a></span><span class='job-type part-time'><a href='#'><img style='width:15px;height:15px' src='img/jingyan.png'>"+job.jobrequirement+"</a></span></div></div></div></div>";
				}else {
					str4 +="<div class='job-list half-grid'><div class='thumb'><a href='jobdetails.action?jobid="+job.jobid+"'><img src='images/job/company-logo-"+job.jobtype+".png' class='img-fluid' alt=''></a></div><div class='body'><div class='content'><h4><a href='jobdetails.action?jobid="+job.jobid+"'>"+job.jobname+"</a></h4><div class='info'><span class='company'><a href='jobdetails.action?jobid="+job.jobid+"'><img style='width:15px;height:15px' src='img/money.png'>"+job.jobsarary+"</a></span><span class='office-location'><a href='#'><img style='width:15px;height:15px' src='img/zuobiao.png'>"+job.jobaddr+"</a></span><span class='job-type part-time'><a href='#'><img style='width:15px;height:15px' src='img/jingyan.png'>"+job.jobrequirement+"</a></span></div></div></div></div>";
				}
              });
				$("#tdiv3").html(str3);
				$("#tdiv4").html(str4);
             }
        });
    	//页面加载完成时是用ajax要加载出所有的工作的类别
    	$.ajax({
            type: "post",
            url: "ajaxJobTypeList.action",
            dataType: "json",
            success: function(jobtypes){
				//先获取Dom对象
				var str="";
				$.each(jobtypes, function(index,jobtype) {
                     str +="<option value='"+jobtype.jobtypeid+"'>"+jobtype.jobtypename+"</option>";
                     });
				$("#jobtype").html(str);
             }
        });
	//在页面加载完成的时候就要加载所有的省份
    	$.ajax({
            type: "post",
            url: "getProvince.action",
            dataType: "json",
            success: function(provinces){
				//先获取Dom对象
				var str="";
				$.each(provinces, function(index,pro) {
                     str +="<option value='"+pro.id+";"+pro.name+"'>"+pro.name+"</option>";
                     });
				$("#province").html(str);
             }
        });
	//加载默认的北京市
	$.ajax({
            type: "post",
            url: "getCity.action?pid="+2+";"+"北京市",
            dataType: "json",
            success: function(citys){
				//先获取Dom对象
				var str="";
				$.each(citys, function(index,pro) {
                     str +="<option value='"+pro.name+"'>"+pro.name+"</option>";
                     });
				$("#city").html(str);
             }
        });
     //绑定函数动态加载市
    	$('#province').change(function(){
    	var pid=$("#province option:selected").val();
    	//特殊情况需要对pid进行处理
    	var newpid=pid.split(";")[0];
    	//因为直辖市的原因所以需要判断，加载市下面的区
    	if (newpid==1||newpid==19||newpid==906||newpid==2597) {
    		newpid=Number(newpid)+Number(1);
		}
    	$.ajax({
            type: "post",
            url: "getCity.action?pid="+newpid+";",
            dataType: "json",
            success: function(citys){
				//先获取Dom对象
				var str="";
				$.each(citys, function(index,pro) {
                     str +="<option value='"+pro.name+"'>"+pro.name+"</option>";
                     });
				$("#city").html(str);
             }
        });

    }) 
    });
    
    function changeType(type) {
    	//根据传递的参数设置不同的类型
	   if (type==1) {
		  $("#usertype").val(1);
	    } else {
		  $("#usertype").val(2);
	  }	
   }
    function changeMsgState(msgid) {
    	$.ajax({
            type: "post",
            url: "changeMsgState.action?msgid="+msgid,
            dataType: "json",
            success: function(data){
				if (data.info=="ok") {
			     //更改成功重新加载页面
			     window.location.reload(true);
				}else if (data.info=="error") {
					window.loaction.href="404.jsp";
				}
             }
        });
	}
    </script>
  </body>
</html>
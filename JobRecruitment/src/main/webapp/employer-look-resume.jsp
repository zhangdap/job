<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>   
    
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
    <link rel="stylesheet" type="text/css" href="dashboard/css/dashboard.css">

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
              <h1>Resume</h1>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Resume</li>
                </ol>
              </nav>
            </div>
          </div>
          <div class="col-md-6">
            <div class="breadcrumb-form">
              <font>电子版简历</font>
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
            <div class="dashboard-container">
              <div class="dashboard-content-wrapper">
                <div class="skill-and-profile dashboard-section">
                  <div class="social-profile">
                    <label>Social:</label>
                   <c:if test="${resumeinfo.resumeuserconnect!=null}">
                    <c:set var="departments" value='${resumeinfo.resumeuserconnect}' />
				    <c:forEach var="test"  varStatus="type" items="${fn:split(departments,',')}">
				          <c:if test="${type.index=='1'}">
				          <a href="http://${fn:substring(test, 2, 35)}"><i class="fab fa-facebook-f"></i></a>
				          </c:if>
				          <c:if test="${type.index=='2'}">
				          <a href="http://${fn:substring(test, 2, 35)}"><i class="fab fa-twitter"></i></a>
				          </c:if>
				          <c:if test="${type.index=='3'}">
				          <a href="http://${fn:substring(test, 2, 35)}"><i class="fab fa-qq"></i></a>
				          </c:if>
				          <c:if test="${type.index=='4'}">
				          <a href="http://${fn:substring(test, 2, 35)}"><i class="fab fa-weixin"></i></a>
				          </c:if>
				          <c:if test="${type.index=='5'}">
				          <a href="http://${fn:substring(test, 2, 35)}"><i class="fab fa-github"></i></a>
				          </c:if>
				      </c:forEach>
                    </c:if>
                    <c:if test="${resumeinfo.resumeuserconnect==null}">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                     <a href="#"><i class="fab fa-qq"></i></a>
                     <a href="#"><i class="fab fa-weixin"></i></a>
                    <a href="#"><i class="fab fa-github"></i></a>
                    </c:if>
                  </div>
                </div>
                <div class="about-details details-section dashboard-section">
                  <h4><i data-feather="align-left"></i>About Ta</h4>
                  <p>${resumeinfo.resumeuserdesc}</p>
                  <div class="information-and-contact">
                    <div class="information">
                      <h4>Information</h4>
                      <ul>
                        <li><span>FullName:</span> ${resumeinfo.resumeusername}</li>
                        <li><span>Birthday</span> <fmt:formatDate value="${resumeinfo.resumeuserbirthday}" type="date"/></li>
                        <li><span>Status:</span> ${resumeinfo.resumeusestate}</li>
                        <li><span>Experience:</span> ${resumeinfo.resumeuserexperience}</li>
                        <li><span>Salary:</span> ${resumeinfo.resumeusersalary}</li>
                        <li><span>Gender:</span> ${resumeinfo.resumeusergender == '1' ? "男" : "女" }</li>
                        <li><span>Qualification:</span> ${resumeinfo.resumeuserqualification}</li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="edication-background details-section dashboard-section">
                  <h4><i data-feather="book"></i>Education Background</h4>
                  <c:set var="departments" value='${resumeinfo.resumeusereducation}' />
				  <c:forEach var="test"  varStatus="info" items="${fn:split(departments,'&')}">
				  <c:set var="departments" value='${test}' />
				  <c:forEach var="detailtest"  varStatus="detail" items="${fn:split(departments,',')}">
				  <c:if test="${detail.index=='0'}">
                  <div class="education-label">
		          </c:if>
		          <c:if test="${detail.index!='0'}">
                  <div class="">
		          </c:if>
                  <c:if test="${detail.index=='0'}">
		          <span  class="study-year">${detailtest }</span>
		          </c:if>
		          <c:if test="${detail.index=='1'}">
		          <h7 style="float: left;">${detailtest }</h7>
		          </c:if>
		          <c:if test="${detail.index=='2'}">
		           <h7 ><span>@${detailtest } </span></h7>
		          </c:if>
		          <c:if test="${detail.index=='3'}">
		          <p>${detailtest }</p>
		          </c:if>
                  </div>
                  </c:forEach>
                  </c:forEach>
                </div>
                <div class="experience dashboard-section details-section">
                  <h4><i data-feather="briefcase"></i>Work Experiance</h4>
                  <c:set var="departments" value='${resumeinfo.resumeuserwork}' />
				  <c:forEach var="test"  varStatus="info" items="${fn:split(departments,'&')}">
				  <c:set var="departments" value='${test}' />
				  <c:forEach var="detailtest"  varStatus="detail" items="${fn:split(departments,',')}">
				  <c:if test="${detail.index=='0'}">
                  <div class="experience-section">
		          </c:if>
		          <c:if test="${detail.index!='0'}">
                  <div class="">
		          </c:if>
                  <c:if test="${detail.index=='0'}">
                   <span class="service-year">${detailtest }</span>
		          </c:if>
		          <c:if test="${detail.index=='1'}">
		          <h6 style="float: left;">${detailtest }</h6>
		          </c:if>
		          <c:if test="${detail.index=='2'}">
		           <h6><span>@${detailtest }</span></h6>
		          </c:if>
		          <c:if test="${detail.index=='3'}">
		          <p>${detailtest }</p>
		          </c:if>
                  </div>
                  </c:forEach>
                  </c:forEach>
                </div>
                <div class="professonal-skill dashboard-section details-section">
                  <h4><i data-feather="feather"></i>Professional Skill</h4>
                  <p>${fn:substringBefore(resumeinfo.resumeuserskill, '*')}</p>
                  <div class="progress-group">
                  <c:set var="departments" value="${fn:substringAfter(resumeinfo.resumeuserskill,'*')}" />
				  <c:forEach var="test"  varStatus="info" items="${fn:split(departments,'&')}">
				  <c:forEach var="detailtest" varStatus="detail" items="${fn:split(test,',')}">
                    <div class="progress-item">
                        <c:if test="${detail.index=='0'}">
                      <div class="progress-head">
                        <p class="progress-on">${detailtest }</p>
                      </div>
                       </c:if>
                       <c:if test="${detail.index=='1'}">
                      <div class="progress-body">
                        <div class="progress">
                          <div class="progress-bar" role="progressbar" aria-valuenow="${detailtest }" aria-valuemin="0" aria-valuemax="100" style="width: 0;"></div>
                        </div>
                        <p class="progress-to">${detailtest }%</p>
                      </div>
                        </c:if>
                    </div>
                    </c:forEach>
                    </c:forEach>
                  </div>
                  
                  
                </div>
                <div class="special-qualification dashboard-section details-section">
                  <h4><i data-feather="gift"></i>Special Qualification</h4>
                  <ul>
                   <c:set var="departments" value='${resumeinfo.resumeuserspecial}' />
				  <c:forEach var="test"  varStatus="info" items="${fn:split(departments,',')}">
				  <li>${test }</li>
				  </c:forEach>
                  </ul>
                </div>
              </div>
              <div class="dashboard-sidebar">
                <div class="user-info">
                  <div class="thumb">
                    <img src="dashboard/images/user-1.jpg" class="img-fluid" alt="">
                  </div>
                  <div class="user-body">
                    <h5>Lula Wallace</h5>
                    <span>@username</span>
                  </div>
                </div>
                <div class="profile-progress">
                  <div class="progress-item">
                    <div class="progress-head">
                      <p class="progress-on">Profile</p>
                    </div>
                    <div class="progress-body">
                      <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 0;"></div>
                      </div>
                      <p class="progress-to">70%</p>
                    </div>
                  </div>
                </div>
                <div class="dashboard-menu">
                  <ul>
                    <li><i class="fas fa-home"></i><a href="employer-dashboard.jsp">Dashboard</a></li>
                    <li class="active"><i class="fas fa-user"></i><a href="employer-dashboard-edit-profile.jsp">Edit Profile</a></li>
                    <li><i class="fas fa-briefcase"></i><a href="manageJob.action">Manage Jobs</a></li>
                    <li><i class="fas fa-users"></i><a href="queryAuserWhoJobs.action">Manage Candidates</a></li>
                    <li><i class="fas fa-heart"></i><a href="#">Shortlisted Resumes</a></li>
                    <li><i class="fas fa-plus-square"></i><a href="employer-dashboard-post-job.jsp">Post New Job</a></li>
                    <li><i class="fas fa-comment"></i><a href="#">Message</a></li>
                    <li><i class="fas fa-calculator"></i><a href="#">Pricing Plans</a></li>
                  </ul>
                  <ul class="delete">
                    <li><i class="fas fa-power-off"></i><a href="#">Logout</a></li>
                    <li><i class="fas fa-trash-alt"></i><a href="#" data-toggle="modal" data-target="#modal-delete">Delete Profile</a></li>
                  </ul>
                  <!-- Modal -->
                  <div class="modal fade modal-delete" id="modal-delete" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-body">
                          <h4><i data-feather="trash-2"></i>Delete Account</h4>
                          <p>Are you sure! You want to delete your profile. This can't be undone!</p>
                          <form action="#">
                            <div class="form-group">
                              <input type="password" class="form-control" placeholder="Enter password">
                            </div>
                            <div class="buttons">
                              <button class="delete-button">Save Update</button>
                              <button class="">Cancel</button>
                            </div>
                            <div class="form-group form-check">
                              <input type="checkbox" class="form-check-input" checked="">
                              <label class="form-check-label">You accepts our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></label>
                            </div>
                          </form>
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
    <script src="dashboard/js/dashboard.js"></script>
    <script src="dashboard/js/datePicker.js"></script>
    <script src="dashboard/js/upload-input.js"></script>

    <script src="http://ditu.google.cn/maps/api/js?key=AIzaSyC87gjXWLqrHuLKR0CTV5jNLdP4pEHMhmg"></script>
    <script src="js/map.js"></script>
  </body>
</html>
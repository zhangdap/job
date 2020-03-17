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
                      <a href="home-2.jsp" class="notification-list">
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
                  <a href="#" class="account-button">${loginUser.username }</a>
                  <div class="account-card">
                    <div class="header-top-account-info">
                      <a href="#" class="account-thumb">
                        <img src="${loginUser.userhead }" class="img-fluid" alt="">
                      </a>
                      <div class="account-body">
                        <h5><a href="#">${loginUser.username }</a></h5>
                        <span class="mail">${loginUser.useremail }</span>
                      </div>
                    </div>
                    <ul class="account-item-list">
                      <li><a href="employer-dashboard-edit-profile.jsp"><span class="ti-user"></span>Account</a></li>
                      <li><a href="loginOut.action"><span class="ti-power-off"></span>Log Out</a></li>
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
                  <li class="menu-item active"><a title="Home" href="home-1.jsp">Home</a></li>
                  <li class="menu-item dropdown">
                    <a title="" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false">Jobs</a>
                    <ul  class="dropdown-menu">
                      <li class="menu-item"><a title="About" href="job-listing.jsp">Job Listing</a></li>
                      <li class="menu-item"><a title="About" href="job-listing-with-map.jsp">Job Listing With Map</a></li>
                      <li class="menu-item"><a title="About" href="job-details.jsp">Job Details</a></li>
                      <li class="menu-item"><a title="About" href="post-job.jsp">Post Job</a></li>
                    </ul>
                  </li>
                  <li class="menu-item dropdown">
                    <a title="" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false">Employer</a>
                    <ul  class="dropdown-menu">
                      <li class="menu-item"><a title="About" href="employer-listing.jsp">Employer Listing</a></li>
                      <li class="menu-item"><a title="About" href="employer-details.jsp">Employer Details</a></li>
                      <li class="menu-item"><a title="About" href="employer-dashboard.jsp">Dashboard</a></li>
                      <li class="menu-item"><a title="About" href="employer-dashboard-edit-profile.jsp">Edit Profile</a></li>
                      <li class="menu-item"><a title="About" href="employer-dashboard-manage-candidate.jsp">Manage Candidate</a></li>
                      <li class="menu-item"><a title="About" href="employer-dashboard-manage-job.jsp">Manage Job</a></li>
                      <li class="menu-item"><a title="About" href="employer-dashboard-post-job.jsp">Post Job</a></li>
                    </ul>
                  </li>
                  <li class="menu-item dropdown">
                    <a title="" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false">Candidate</a>
                    <ul  class="dropdown-menu">
                      <li class="menu-item"><a title="About" href="candidate.jsp">Candidate List</a></li>
                      <li class="menu-item"><a title="About" href="candidate-details.jsp">Candidate Details</a></li>
                      <li class="menu-item"><a title="About" href="dashboard.jsp">Dashboard</a></li>
                      <li class="menu-item"><a title="About" href="dashboard-edit-profile.jsp">Edit Profile</a></li>
                      <li class="menu-item"><a title="About" href="add-resume.jsp">Add Resume</a></li>
                      <li class="menu-item"><a title="About" href="resume.jsp">Resume</a></li>
                      <li class="menu-item"><a title="About" href="edit-resume.jsp">Edit Resume</a></li>
                      <li class="menu-item"><a title="About" href="dashboard-bookmark.jsp">Bookmarked</a></li>
                      <li class="menu-item"><a title="About" href="dashboard-applied.jsp">Applied</a></li>
                      <li class="menu-item"><a title="About" href="dashboard-pricing.jsp">Pricing</a></li>
                      <li class="menu-item"><a title="About" href="dashboard-message.jsp">Message</a></li>
                      <li class="menu-item"><a title="About" href="dashboard-alert.jsp">Alert</a></li>
                    </ul>
                  </li>
                  <li class="menu-item dropdown">
                    <a title="" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false">Pages</a>
                    <ul  class="dropdown-menu">
                      <li class="menu-item"><a title="About" href="about-us.jsp">About Us</a></li>
                      <li class="menu-item"><a title="About" href="blog.jsp">Blog</a></li>
                      <li class="menu-item"><a title="About" href="blog-grid.jsp">Blog Grid</a></li>
                      <li class="menu-item"><a title="About" href="blog-details.jsp">Blog Details</a></li>
                      <li class="menu-item"><a title="About" href="contact.jsp">Contact Us</a></li>
                      <li class="menu-item"><a title="About" href="pricing.jsp">Pricing</a></li>
                      <li class="menu-item"><a title="About" href="how-it-work.jsp">How It Works</a></li>
                      <li class="menu-item"><a title="About" href="faq.jsp">FAQ</a></li>
                      <li class="menu-item"><a title="About" href="checkout.jsp">Checkout</a></li>
                      <li class="menu-item"><a title="About" href="payment-complete.jsp">Payment Complete</a></li>
                      <li class="menu-item"><a title="About" href="invoice.jsp">Invoice</a></li>
                      <li class="menu-item"><a title="About" href="terms-and-condition.jsp">Terms And Condition</a></li>
                    </ul>
                  </li>
                  <li class="menu-item post-job"><a title="Title" href="post-job.jsp"><i class="fas fa-plus"></i>Post a Job</a></li>
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
              <h1>Employer Dashboard</h1>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Employer Dashboard</li>
                </ol>
              </nav>
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
                <form action="editUserInfo.action" class="dashboard-form" method="post" enctype="multipart/form-data">
                  <div class="dashboard-section upload-profile-photo">
                    <div class="update-photo">
                      <img class="image" id="reviewImg" src="dashboard/images/company-logo.png" alt="">
                    </div>
                    <div class="file-upload">
                    <!--公司的logo -->            
                      <input type="file" name="companyImg" id="companyImg" class="file-input">Change Company  Avatar
                    </div>
                  </div>
                  <div class="dashboard-section upload-profile-photo">
                    <div class="update-photo">
                      <img class="image" src="${loginUser.userhead}" alt="">
                    </div>
                    <div class="file-upload">    
                    <!-- 用户的头像 -->        
                      <input type="file" name="userImg" class="file-input">Change Yourself Avatar
                    </div>
                  </div>
                  <div class="dashboard-section basic-info-input">
                    <h4><i data-feather="user-check"></i>Company Basic Info</h4>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Company Name</label>
                      <div class="col-sm-9">
                      <!-- 公司名称 -->
                        <input type="text" name="companyname" id="companyname" class="form-control" placeholder="Company Name">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Company Email Address</label>
                      <div class="col-sm-9">
                        <input type="text" name="companyemail" id="companyemail" value="" class="form-control" placeholder="email@example.com">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Phone</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" name="companyphone" id="companyphone" placeholder="+55 123 4563 4643">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Address</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="companyaddr" name="companyaddr" placeholder="Company Addr">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Category</label>
                      <div class="col-sm-9">
                      <select class="form-control" id="selectid" name="companytype">
                      
                      </select>
                     </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Company Website</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" name="companynet" id="companynet" placeholder="Company Website">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">About Us</label>
                      <div class="col-sm-9">
                        <textarea class="form-control" name="companydesc" id="companydesc" placeholder="Description"></textarea>
                      </div>
                    </div>
                  </div>
                  
                  <!-- 个人信息展修改 -->
                  <div class="dashboard-section basic-info-input">
                    <h4><i data-feather="user-check"></i>User Basic Info</h4>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Username</label>
                      <div class="col-sm-9">
                      <input id="usercid" value="${loginUser.usercompanyid }" hidden="hidden">
                        <input type="text" name="username" value="${loginUser.username }" class="form-control" placeholder="@username">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Email Address</label>
                      <div class="col-sm-9">
                        <input type="text" name="useremail" value="${loginUser.useremail }" class="form-control" placeholder="email@example.com">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Phone</label>
                      <div class="col-sm-9">
                        <input type="text" name="userphone" value="${loginUser.userphone }" class="form-control" placeholder="+55 123 4563 4643">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Address</label>
                      <div class="col-sm-9">
                        <input type="text" name="useraddr" value="${loginUser.useraddr }"  class="form-control" placeholder="Washington D.C">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Indestry Expertise</label>
                      <div class="col-sm-9">
                        <input type="text" name="userskill" value="${loginUser.userskill }" class="form-control" placeholder="UI & UX Designer">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">About Me</label>
                      <div class="col-sm-9">
                        <textarea class="form-control" name="userdesc" placeholder="Introduce Yourself">${loginUser.userdesc }</textarea>
                      </div>
                    </div>
                    </div>
                  <div class="dashboard-section media-inputs">
                    <h4><i data-feather="image"></i>Company Video</h4>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Intro Video</label>
                      <div class="col-sm-9">
                        <div class="input-group">
                          <div class="input-group-prepend">
                          </div>
                          <video id="videomp4" width="352" height="264" controls="controls">
		                  </video>
                          
                        </div>
                      </div>
                    </div>
                  </div>
                  <br>
                    <div class="dashboard-section upload-profile-photo">
                       <div class="file-upload">    
                         <input type="file" id="companyvideo" name="videoName" class="file-input">Change Company Video
                       </div>
                     </div>     
                        <span id="greenspan" hidden="hidden"><font id="fontid"style="color: green;" size="3"></font></span>
                  <div class="dashboard-section basic-info-input" style="margin-top: 90px">
                    <h4><i data-feather="lock"></i>Change Password</h4>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Current Password</label>
                      <div class="col-sm-9">
                        <input type="password" name="oldpwd" id="Current" class="form-control" placeholder="Current Password">
                        <input type="password" name="hidpwd" id="hidpwd" value="${loginUser.userpass }" hidden="hidden">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">New Password</label>
                      <div class="col-sm-9">
                        <input type="password" readonly="readonly" id="newpwd" name="newpwd" class="form-control" placeholder="New Password">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Retype Password</label>
                      <div class="col-sm-9">
                        <input type="password" name="repwd" id="repwd" readonly="readonly" class="form-control" placeholder="Retype Password">
                       <span id="spanpwd" hidden="hidden" style="border: 1px solid red; width: 480px ;height: 40px"><font color="red" style="margin-left: auto;margin-right: auto;"> 两次输入的密码不一致</font></span>
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label"></label>
                      <div class="col-sm-9">
                        <button class="button" type="submit">Save Change</button>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
              <div class="dashboard-sidebar">
                <div class="user-info">
                  <div class="thumb">
                    <img src="${loginUser.userhead }" class="img-fluid" alt="">
                  </div>
                  <div class="user-body">
                    <h5>${loginUser.username }</h5>
                    <span>@${loginUser.useremail }</span>
                  </div>
                </div>
                <div class="profile-progress">
                  <div class="progress-item">
                    <div class="progress-head">
                      <p class="progress-on">Profile</p>
                    </div>
                    <div class="progress-body">
                      <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="${percentage }" aria-valuemin="0" aria-valuemax="100" style="width: 0;"></div>
                      </div>
                      <p class="progress-to">${percentage }%</p>
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
                <a href="add-resume.jsp" class="button">Add Resume</a>
                <span>Or</span>
                <a href="post-job.jsp" class="button">Post A Job</a>
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
    <script type="text/javascript">
    $(document).ready(function(){
    	//加载分类信息
    	$.ajax({
            type: "post",
            url: "ajaxJobTypeList.action",
            dataType: "json",
            success: function(result){
            	//先获取Dom对象
				var str="";
				$.each(result, function(index,type) {
                     str +="<option value='"+type.jobtypeid+"'>"+type.jobtypename+"</option>";
                     });
				$("#selectid").html(str);
            }
        });
    	//表单信息验证
    	$("#Current").blur(function(){
    	    var value=$("#hidpwd").val();
			var val=$("#Current").val();
			if (val==value) {
			$('#newpwd').removeAttr("readonly");
			$('#repwd').removeAttr("readonly");
			}else {
				$('#newpwd').attr("readonly","readonly");
				$('#repwd').attr("readonly","readonly");
			}
    	  });
    	  //简单的表单验证
    	  $("#repwd").blur(function(){
      	    var value=$("#newpwd").val();
  			var val=$("#repwd").val();
  			if (val!=value) {
               $("#spanpwd").removeAttr("hidden");
  			}else {
  				$("#spanpwd").attr("hidden","hidden");
			}
      	  });
    	//计算简历信息完整度
    	var count=0;
    	$("input[type='text']").each(function(){
    		if ($(this).val()!=null||$(this).val()!="") {
    			console.log("val："+$(this).val());
				count++;
			}
        });
    	var res=Math.ceil(count/15.5*100);
    	
    	$("#ptext").text(res+"%"); 
    	
    	var cid=$("#usercid").val();
    	//获取当前的登录的人公司
    	$.ajax({
            type: "post",
            url: "findCompany.action?cid="+cid,
            dataType: "json",
            success: function(result){
            //将所有的数据一一放入到对应的地方
            $("#reviewImg").attr("src",result.company.companyimages);
            $("#videomp4").prop("src",result.company.companyvideo);
            $("#companyname").val(result.company.companyname);
            $("#companyemail").val(result.company.companyemail);
            $("#companyphone").val(result.company.companyphone);
            $("#companyaddr").val(result.company.companyaddr);
            //这个是否正确待定(但是非常重要)
            $("#selectid option[value="+result.company.companytype+"]").attr("selected", "selected");
            $("#companydesc").text(result.company.companydesc);
            $("#companynet").val(result.company.companynet);
            }
        });
    //给视频上传控件添加事件
    $("#companyvideo").on('change', function(){         
    	var file=$("#companyvideo").get(0).files[0];
    	//do someing   
    	if (file==null) {
			$("#greenspan").attr("hidden",true);
		}else {
			$("#greenspan").removeAttr("hidden");
			$("#fontid").html(file.name+"   "+"√");
		}
    	});
    });
    
    </script>
  </body>
</html>
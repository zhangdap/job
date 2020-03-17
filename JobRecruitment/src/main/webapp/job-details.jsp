<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
              <c:if test="${loginUser!=null }">
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
                        <img src="${loginUser.userhead}" class="img-fluid" alt="">
                      </a>
                      <div class="account-body">
                        <h5><a href="#">${loginUser.username }</a></h5>
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
                </c:if>
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
                  <c:if test="${loginUser.usertype!=1 }">
                  <li class="menu-item post-job"><a title="Title" href="before.action?jspName=post-job"><i class="fas fa-plus"></i>Post a Job</a></li>
                  </c:if>
                </ul>
              </div>
            </nav>
          </div>
        </div>
      </div>
    </header>

    <!-- Candidates Details -->
    <div class="alice-bg padding-top-60 section-padding-bottom">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="job-listing-details">
              <div class="job-title-and-info">
                <div class="title">
                  <div class="thumb">
                    <img src="images/job/company-logo-${job.jobtype }.png" class="img-fluid" alt="">
                  </div>
                  <div class="title-body">
                    <h4>${job.jobname }</h4>
                    <div class="info">
                      <span class="company"><a href="#"><i data-feather="briefcase"></i>${company.companyname }</a></span>
                      <span class="office-location"><a href="#"><i data-feather="map-pin"></i>${job.jobaddr }</a></span>
                      <span class="job-type full-time"><a href="#"><i data-feather="clock"></i>${job.jobsarary }</a></span>
                    </div>
                  </div>
                </div>
                <div class="buttons">
                <!-- 申请一个工作 -->
                <c:if test="${loginUser.usertype!=2 }">
                  <a class="apply" href="javascript:apply(${job.jobid},'${job.jobname}',${job.jobpublishuserid })">Apply Online</a>
                </c:if>
                </div>
              </div>
              <div class="details-information section-padding-60">
                <div class="row">
                  <div class="col-xl-7 col-lg-8">
                    <div class="description details-section">
                      <h4><i data-feather="align-left"></i>Job Description</h4>
                      <c:set var="departments" value='${job.jobdesc }' />
				        <c:forEach var="test" items="${fn:split(departments,'&')}">
				         ${test};
				        </c:forEach>
                    </div>
                    <div class="responsibilities details-section">
                      <h4><i data-feather="zap"></i>Responsibilities</h4>
                      <ul>
                        <c:set var="departments" value='${job.jobrequirement }' />
				        <c:forEach var="test" items="${fn:split(departments,'&')}">
				         <li> ${test} </li>
				        </c:forEach>
                      </ul>
                    </div>
                     <div class="edication-and-experience details-section">
                      <h4><i data-feather="book"></i>Education & Experience</h4>
                      <ul>
                        <c:set var="departments" value='${job.jobeducationandexper }' />
				        <c:forEach var="test" items="${fn:split(departments,'&')}">
				         <li> ${test} </li>
				        </c:forEach>
                      </ul>
                    </div>
                    <div class="other-benifit details-section">
                      <h4><i data-feather="gift"></i>Other Benefits</h4>
                      <ul>
                      <c:set var="departments" value='${job.jobprofit }' />
				       <c:forEach var="test" items="${fn:split(departments,'&')}">
				           <li> ${test} </li>
				      </c:forEach>
                      </ul>
                    </div>
                    <c:if test="${loginUser.usertype!=2 }">
                    <div class="job-apply-buttons">
                      <a href="javascript:apply(${job.jobid},'${job.jobname}',${job.jobpublishuserid })" class="apply">Apply Online</a>
                     <!--  <a href="#" class="email"><i data-feather="mail"></i>Email Job</a> -->
                    </div>
                    </c:if>
                    <div class="company-information details-section">
                    <h4><i data-feather="briefcase"></i>About the Company</h4>
                    <ul>
                      <li><span>Company Name:</span> ${company.companyname }</li>
                      <li><span>Address:</span> ${company.companyaddr }</li>
                      <li><span>Website:</span> <a href="#">${company.companynet }</a></li>
                      <li><span>Company Description:</span></li>
                      <li>${company.companydesc }</li>
                    </ul>
                  </div>
                  </div>
                  <div class="col-xl-4 offset-xl-1 col-lg-4">
                    <div class="information-and-share">
                      <div class="job-summary">
                        <h4>Job Summary</h4>
                        <ul>
                          <li><span>Published on:</span> <fmt:formatDate value="${job.jobpublishtime}" type="date"/></li>
                          <li><span>Employment Status:</span> 全职</li>
                          <li><span>Experience:</span> ${job.jobrequirement  }</li>
                          <li><span>Job Location:</span> ${job.jobaddr  }</li>
                          <li><span>Salary:</span>${job.jobsarary  }</li>
                        </ul>
                      </div>
                      <div class="share-job-post">
                        <span class="share"><i class="fas fa-share-alt"></i>Share:</span>
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#"><i class="fab fa-google-plus-g"></i></a>
                        <a href="#"><i class="fab fa-pinterest-p"></i></a>
                        <a href="#" class="add-more"><span class="ti-plus"></span></a>
                      </div>
                      <div class="buttons">
                        <a href="#" class="button print"><i data-feather="printer"></i>Print Job</a>
                        <a href="#" class="button report"><i data-feather="flag"></i>Report Job</a>
                      </div>
                      <div class="job-location">
                        <h4>Job Location</h4>
                        <div id="map-area">
                          <div class="cp-map" id="location" data-lat="40.713355" data-lng="-74.005535" data-zoom="10"></div>
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
    <!-- Candidates Details End -->
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
  <script type="text/javascript">
  function apply(jobid,jobname,getuserid){
  	//定义为0时表示取消收藏，设置为1时表示添加收藏
  	 $.ajax({
           type:"post",
           url:"applyJob.action?jobid="+jobid+"&jobname="+jobname+"&getuserid="+getuserid,
           dataType:"json",
           success:function(data){
              if(data.info=="ok"){
               alert("申请提交成功，请耐心等待...");                          
             }else if (data.info=="exist") {
          	   alert("您已经申请过该职位了，请耐心等待...");
			}else{
          	   window.location.href="404.jsp";                        
             } 
           },
       });
	}
  </script>
</html>
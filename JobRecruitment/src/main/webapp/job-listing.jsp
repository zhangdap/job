<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
                    </div>
                      <div class="notification-body" id="notificationDiv">
                    </div>                    
                    <div class="notification-footer">
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
                      <c:if test="${loginUser.usertype==1 }">
                    <li><a href="dashboard-edit-profile.jsp"><span class="ti-user"></span>Account</a></li>
                    </c:if>
                    <c:if test="${loginUser.usertype==2 }">
                    <li><a href="employer-dashboard-edit-profile.jsp"><span class="ti-user"></span>Account</a></li>
                    </c:if>
                      <li><a href="loginOut.action"><span class="ti-power-off"></span>Log Out</a></li>
                    </ul>
                  </div>
                </div>
                <select class="selectpicker select-language" data-width="fit">
                  <option data-content='<span class="flag-icon flag-icon-us"></span> English'>English</option>
                  <option  data-content='<span class="flag-icon flag-icon-mx"></span> Español'>Español</option>
                </select>
                </c:if>
              </div>
            </div>
            <nav class="navbar navbar-expand-lg cp-nav-2">
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav">
                  <li class="menu-item active"><a title="Home" href="index.jsp">Home</a></li>
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

    <!-- Breadcrumb -->
    <div class="alice-bg padding-top-70 padding-bottom-70">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="breadcrumb-area">
              <h1>Job Listing</h1>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Job Listing</li>
                </ol>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Breadcrumb End -->



    <!-- Job Listing -->
    <div class="alice-bg section-padding-bottom">
      <div class="container">
        <div class="row no-gutters">
          <div class="col">
            <div class="job-listing-container">
              <div class="filtered-job-listing-wrapper">
                <div class="job-view-controller-wrapper">
                  <div class="job-view-controller">
                    <div class="controller list active">
                      <i data-feather="menu"></i>
                    </div>
                    <div class="controller grid">
                      <i data-feather="grid"></i>
                    </div>
                  </div>
                  <div class="showing-number">
                     <span>This page shows ${pageInfo.size } out of ${pageInfo.total } pieces of information</span>
                  </div>
                </div>
                <div class="job-filter-result">
                <c:forEach items="${pageInfo.list }" var="job">
                  <div class="job-list">
                    <div class="thumb">
                      <a href="#">
                        <img src="images/job/company-logo-${job.jobtype }.png" class="img-fluid" alt="">
                      </a>
                    </div>
                    <div class="body">
                      <div class="content">
                        <h4><a href="jobdetails.action?jobid=${job.jobid }">${job.jobname } </a></h4>
                        <div class="info">
                          <span class="company"><i data-feather="briefcase"></i>${job.jobrequirement }</span>
                          <span class="office-location"><i data-feather="map-pin"></i>${job.jobaddr }</span>
                          <span class="job-type temporary"><i data-feather="clock"></i>${job.jobsarary }</span>
                        </div>
                      </div>
                      <c:if test="${loginUser.usertype!=2 }">
                      <div class="more">
                        <div class="buttons">
                          <a href="javascript:apply(${job.jobid},'${job.jobname}',${job.jobpublishuserid })" id="apply${job.jobid }" class="button">Apply Now</a>
                          <a href="javascript:void(0)"  onclick="collect(${job.jobid })" id="collect${job.jobid }" class="favourite"><i data-feather="heart"></i></a>
                        </div>
                        <p class="deadline">Deadline: <fmt:formatDate value="${job.jobpublishtime}" type="date"/></p>
                      </div>
                      </c:if>
                    </div>
                  </div>
                 </c:forEach> 
                </div>
                <div class="pagination-list text-center">
                  <nav class="navigation pagination">
                    <div class="nav-links">
                      <a class="prev page-numbers" href="${path }${pageInfo.prePage }"><i class="fas fa-angle-left"></i></a>
                      <c:forEach  begin="1" end="${pageInfo.pages }" step="1"  varStatus="status">
                      <c:if test="${pageInfo.pageNum==status.index }">
                      <a class="page-numbers current" href="${path }${status.index }">${status.index }</a>
                      </c:if>
                      <c:if test="${pageInfo.pageNum!=status.index }">
                      <a class="page-numbers" href="${path }${status.index }">${status.index }</a>
                      </c:if>
                      </c:forEach>
                     <a class="next page-numbers" href="${path }${pageInfo.nextPage }"><i class="fas fa-angle-right"></i></a> 
                    </div>
                  </nav>                
                </div>
              </div>
              <div class="job-filter-wrapper">
                <div class="selected-options">
                  <div class="selection-title">
                    <h4>You Selected</h4>
                    <a href="#">Clear All</a>
                  </div>
                  <ul class="filtered-options">
                  </ul>
                </div>
                <div data-id="job-type" class="job-filter job-type">
                  <h4 class="option-title">Job Type</h4>
                  <ul>
                    <li class="full-time"><i data-feather="clock"></i><a href="#" data-attr="Full Time">Full Time</a></li>
                    <li class="part-time"><i data-feather="clock"></i><a href="#" data-attr="Part Time">Part Time</a></li>
                    <li class="freelance"><i data-feather="clock"></i><a href="#" data-attr="Freelance">Freelance</a></li>
                    <li class="temporary"><i data-feather="clock"></i><a href="#" data-attr="Temporary">Temporary</a></li>
                  </ul>
                </div>
                <div data-id="experience" class="job-filter experience">
                  <h4 class="option-title">Experience</h4>
                  <ul>
                    <li><a href="#" data-attr="Fresh">Fresh</a></li>
                    <li><a href="#" data-attr="Less than 1 year">Less than 1 year</a></li>
                    <li><a href="#" data-attr="2 Year">2 Year</a></li>
                    <li><a href="#" data-attr="3 Year">3 Year</a></li>
                    <li><a href="#" data-attr="4 Year">4 Year</a></li>
                    <li><a href="#" data-attr="5 Year">5 Year</a></li>
                    <li><a href="#" data-attr="Avobe 5 Years">Avobe 5 Years</a></li>
                  </ul>
                </div>
                <div data-id="post" class="job-filter post">
                  <h4 class="option-title">Date Posted</h4>
                  <ul>
                    <li><a href="#" data-attr="Last hour">Last hour</a></li>
                    <li><a href="#" data-attr="Last 24 hour">Last 24 hour</a></li>
                    <li><a href="#" data-attr="Last 7 days">Last 7 days</a></li>
                    <li><a href="#" data-attr="Last 14 days">Last 14 days</a></li>
                    <li><a href="#" data-attr="Last 30 days">Last 30 days</a></li>
                  </ul>
                </div>
                <div data-id="qualification" class="job-filter qualification">
                  <h4 class="option-title">Qualification</h4>
                  <ul>
                    <li><a href="#" data-attr="Matriculation">Matriculation</a></li>
                    <li><a href="#" data-attr="Intermidiate">Intermidiate</a></li>
                    <li><a href="#" data-attr="Gradute">Gradute</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Job Listing End -->

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

    <script src="http://ditu.google.cn/maps/api/js?key=AIzaSyC87gjXWLqrHuLKR0CTV5jNLdP4pEHMhmg"></script>
    <script src="js/map.js"></script>
    <script type="text/javascript">
    //添加收藏与取消收藏
    	$(document).ready(function() {
    		
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
			//在文档加载完成之后在这个人登录的情况下就加载他收藏的职位
    		 $.ajax({
                 type:"post",
                 url:"collectAll.action",
                 dataType:"json",
                 success:function(data){
                    if(data.info=="ok"){
                    	$(".favourite").each(function(){
							var id=$(this).attr('id').substring(7);
                    		//开始循环遍历操作
                        	$.each(data.jobs,function(i,job){ 
                        		var jobid=job.jobid;
                        		if (jobid==id) {
                        		 $("#collect"+id).addClass("active");
								}
                        	  });
                        	}); 
                           };
                          }
                    	 });
                       });
    function collect(jobid){
    	//定义为0时表示取消收藏，设置为1时表示添加收藏
    	var op=0;
    	var flag=$("#collect"+jobid).hasClass("active");
    	if (flag) {
    		$("#collect"+jobid).removeClass("active");
    		op=0;
		}else {
			op=1;
		}
    	 $.ajax({
             type:"post",
             url:"collect.action?jobid="+jobid+"&op="+op,
             dataType:"json",
             success:function(data){
                if(data.info=="ok"){
               } else{
            	   window.location.href="404.jsp";                        
               } 
             },
         });
	}
                   
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
  </body>
  
</html>
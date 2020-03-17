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

  </head>
  <body>

    <header class="header-2">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="header-top">
              <div class="logo-area">
                <a href="/JobRecruitment/jobTypeList.action?jspName=index"><img src="images/logo-2.png" alt=""></a>
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
              <h1>Edit Resume</h1>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Edit Resume</li>
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
                <div class="download-resume dashboard-section">
                  <div class="download-file">
                    <a href="${resumeinfo.resumeurl }">DownLoad Resume Document</a>
                  </div>
                  <div class="download-file">
                   <a href="javascript:void(0)" onclick="resumeFile()">Upload Resume Document</a>
                  </div>
                </div>
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				    <div class="modal-dialog">
				        <div class="modal-content">
				            <div class="modal-body">
				            <form id="fileForm" enctype="multipart/form-data">
				             <input type="file" name="resumeFile" id="resumeFile" class="form-control">            
				             </form>
				             </div>
				            <div class="modal-footer">
				                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				                <button type="button" onclick="subResumeFile()" class="btn" >确认上传</button>
				            </div>
				        </div>
				    </div>
				</div>
                <div class="skill-and-profile dashboard-section">
                  <div class="social-profile">
                    <label>Social:</label>
                    <!-- 这就是那几个图标 -->
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
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary edit-button" data-toggle="modal" data-target="#modal-social">
                      <i data-feather="edit-2"></i>
                    </button>
                    <!-- Modal id为：modal-social-->
                    <div class="modal fade" id="modal-social" tabindex="-1" role="dialog" aria-hidden="true">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-body">
                            <div class="title">
                            <!-- 这就是那几个图标的具体内容 -->
                              <h4><i data-feather="git-branch"></i>Social Networks</h4>
                              <a href="#" class="add-more">+ Add Social</a>
                            </div>
                            <div class="content">
                              <form id="netNameForm">
                                <div class="form-group row">
                                  <label class="col-sm-3 col-form-label">Social Links</label>
                                  <div class="col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fab fa-facebook-f"></i></div>
                                      </div>
                                      <input type="text" value="start" name="netName" hidden="hidden">
                                      <input type="text" name="netName" class="form-control"  placeholder="facebook.com/username">
                                    </div>
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <div class="offset-sm-3 col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fab fa-twitter"></i></div>
                                      </div>
                                      <input type="text" name="netName" class="form-control"  placeholder="twitter.com/username">
                                    </div>
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <div class="offset-sm-3 col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fab fa-qq"></i></div>
                                      </div>
                                      <input type="text" name="netName" class="form-control"  placeholder="qq.com/username">
                                    </div>
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <div class="offset-sm-3 col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fab fa-weixin"></i></div>
                                      </div>
                                      <input type="text" name="netName" class="form-control"  placeholder="weixin.qq.com/username">
                                    </div>
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <div class="offset-sm-3 col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fab fa-github"></i></div>
                                      </div>
                                      <input type="text" name="netName" class="form-control"  placeholder="github.com/username">
                                      <input type="text" value="end" name="netName" hidden="hidden">
                                    </div>
                                  </div>
                                </div>
                                <div class="row">
                                  <div class="offset-sm-3 col-sm-9">
                                    <div class="buttons">
                                      <button onclick="subNetName()" style="color: 246DF8">Save Update</button>
                                      <button data-dismiss="modal">Cancel</button>
                                    </div>
                                  </div>
                                </div>
                              </form>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="about-details details-section dashboard-section">
                  <h4><i data-feather="align-left"></i>About Me</h4>
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
                  <!-- Button trigger modal -->
                  <button type="button" class="btn btn-primary edit-resume" data-toggle="modal" data-target="#modal-about-me">
                    <i data-feather="edit-2"></i>
                  </button>
                  <!-- Modal -->
                  <div class="modal fade" id="modal-about-me" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-body">
                          <div class="content">
                            <form id="userInfoForm">
                              <h4><i data-feather="align-left"></i>Information</h4>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Full Name</label>
                                <div class="col-sm-9">
                                  <input type="text" value="${resumeinfo.resumeusername}" name="resumeusername" class="form-control"  placeholder="FULL Name">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Birthday</label>
                                <div class="col-sm-9">
                                <fmt:formatDate var="dataobj" value="${resumeinfo.resumeuserbirthday}" type="date" pattern="yyyy-MM-dd"/>
                                  <input type="date" value="${dataobj }" name="birth" class="form-control"  placeholder="Los Angeles">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Gender</label>
                                <div class="col-sm-9">
                                 <select class="form-control" name="resumeusergender">
                                <option value="1" ${resumeinfo.resumeusergender == '1' ? "" : "checked" }>男</option>
                                <option value="0" ${resumeinfo.resumeusergender == '0' ? "checked" : "" }>女</option>
                                </select>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Status</label>
                                <div class="col-sm-9">
                                <select class="form-control" name="resumeusestate" >
                                <option value="全职">全职</option>
                                <option value="兼职">兼职</option>
                                <option value="实习">实习</option>
                                </select>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Experience</label>
                                <div class="col-sm-9">
                                <select class="form-control" name="resumeuserexperience">
                                <option value="无经验">无经验</option>
                                <option value="一年以上">一年以上</option>
                                <option value="三年以下">三年以下</option>
                                <option value="三年以上">三年以上</option>
                                <option value="五年以下">五年以下</option>
                                <option value="五年以上">五年以上</option>
                                </select>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Salary Range Max</label>
                                <div class="col-sm-9">
                                <select class="form-control" name="salaryMin" id="salarySelectMax">
                                </select>
                                </div>
                                <label class="col-sm-3 col-form-label">Salary Range Min</label>
                                <div class="col-sm-9">
                                <select class="form-control" name="salaryMax" id="salarySelectMin">
                                </select>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Qualification</label>
                                <div class="col-sm-9">
                                <select class="form-control" name="resumeuserqualification" >
                                <option value="已毕业">毕业</option>
                                <option value="在读">在读 </option>
                                <option value="离职">离职 </option>
                                </select>
                                </div>
                              </div>
                              <div class="title">
                                <h4><i data-feather="align-left"></i>About Me</h4>
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Write Yourself</label>
                                <div class="col-sm-9">
                                  <textarea class="form-control" name="resumeuserdesc" placeholder="Write Yourself"></textarea>
                                </div>
                              </div>
                              <div class="row">
                                <div class="offset-sm-3 col-sm-9">
                                  <div class="buttons">
                                    <button id="btnUserInfo" style="color: 246DF8">Save Update</button>
                                    <button data-dismiss="modal">Cancel</button>
                                  </div>
                                </div>
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
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
                  <!-- Button trigger modal -->
                  <button type="button" class="btn btn-primary edit-resume" data-toggle="modal" data-target="#modal-education">
                    <i data-feather="edit-2"></i>
                  </button>
                  <!-- Modal -->
                  <div class="modal fade modal-education" id="modal-education" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-body">
                          <div class="title">
                          <!-- 这就是那个添加教育经历的框 -->
                            <h4><i data-feather="book"></i>Education</h4>
                         <a href="javascript:viod(0)" onclick="AddEducation()" class="add-more">+ Add Education</a>
                          </div>
                          <div class="content" id="educationDiv">
                            <form id="userEduationForm">
                            <!-- 这是第一个电子简历的框 -->
                              <div class="input-block-wrap" id="sonDiv">
                                <div class="form-group row">
                                  <label class="col-sm-3 col-form-label">教育经历</label>
                                  <div class="col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Time</div>
                                      </div>
                                      <input type="text" name="eduationTime" class="form-control" >
                                    </div>
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <div class="offset-sm-3 col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Institute</div>
                                      </div>
                                      <input type="text" name="eduationSchool" class="form-control" >
                                    </div>
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <div class="col-sm-9 offset-sm-3">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Degree</div>
                                      </div>
                                      <input type="text" name="eduationDegree" class="form-control" >
                                    </div>
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <div class="offset-sm-3 col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Description</div>
                                      </div>
                                      <textarea class="form-control" name="eduationDescription"></textarea>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="offset-sm-3 col-sm-9">
                                  <div class="buttons">
                                    <button id="btnUserEduation">Save Update</button>
                                    <button class="" data-dismiss="modal">Cancel</button>
                                  </div>
                                </div>
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
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
                  <!-- Button trigger modal -->
                  <button type="button" class="btn btn-primary edit-resume" data-toggle="modal" data-target="#modal-experience">
                    <i data-feather="edit-2"></i>
                  </button>
                  <!-- Modal -->
                  <div class="modal fade modal-experience" id="modal-experience" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-body">
                          <div class="title">
                            <h4><i data-feather="briefcase"></i>Experience</h4>
                            <a href="javascript:void(0)" onclick="AddExperience()" class="add-more">+ Add Experience</a>
                          </div>
                          <div class="content">
                            <form id="userWorkForm">
                              <div class="input-block-wrap" id="workDiv">
                                <div class="form-group row">
                                  <label class="col-sm-3 col-form-label">工作经历</label>
                                  <div class="col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Time</div>
                                      </div>
                                      <input type="text" name="workTime" class="form-control" >
                                    </div>
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <div class="offset-sm-3 col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Company</div>
                                      </div>
                                      <input type="text" name="workCompany" class="form-control" >
                                    </div>
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <div class="col-sm-9 offset-sm-3">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Position</div>
                                      </div>
                                      <input type="text" name="workPosition" class="form-control" >
                                    </div>
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <div class="offset-sm-3 col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Description</div>
                                      </div>
                                      <textarea class="form-control" name="workDescription"></textarea>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="offset-sm-3 col-sm-9">
                                  <div class="buttons">
                                    <button id="btnUserWork">Save Update</button>
                                    <button class="" data-dismiss="modal">Cancel</button>
                                  </div>
                                </div>
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- 这里就是个人技能展示部分 -->
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
                  <!-- Button trigger modal -->
                  <button type="button" class="btn btn-primary edit-resume" data-toggle="modal" data-target="#modal-pro-skill">
                    <i data-feather="edit-2"></i>
                  </button>
                  <!-- Modal -->
                  <div class="modal fade modal-pro-skill" id="modal-pro-skill" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-body">
                          <div class="title">
                            <h4><i data-feather="feather"></i>Professional Skill</h4>
                           <!--  <a href="#" class="add-more">+ Add Skill</a> -->
                          </div>
                          <div class="content">
                            <form id="userSkillForm">
                              <div class="input-block-wrap">
                                <div class="form-group row">
                                  <label class="col-sm-3 col-form-label">About Skill</label>
                                  <div class="col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Description</div>
                                      </div>
                                      <textarea class="form-control" name="skillDescription"></textarea>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="input-block-wrap">
                                <div class="form-group row">
                                  <label class="col-sm-3 col-form-label">Skill 01</label>
                                  <div class="col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Skill Name</div>
                                      </div>
                                      <input type="text" name="skillName" class="form-control" >
                                    </div>
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <div class="offset-sm-3 col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Percentage</div>
                                      </div>
                                      <input type="text" name="SkillPercentage" class="form-control" >
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="input-block-wrap">
                                <div class="form-group row">
                                  <label class="col-sm-3 col-form-label">Skill 02</label>
                                  <div class="col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Skill Name</div>
                                      </div>
                                      <input type="text" name="skillName" class="form-control" >
                                    </div>
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <div class="offset-sm-3 col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Percentage</div>
                                      </div>
                                      <input type="text" name="SkillPercentage" class="form-control" >
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="input-block-wrap">
                                <div class="form-group row">
                                  <label class="col-sm-3 col-form-label">Skill 03</label>
                                  <div class="col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Skill Name</div>
                                      </div>
                                      <input type="text" name="skillName" class="form-control" >
                                    </div>
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <div class="offset-sm-3 col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Percentage</div>
                                      </div>
                                      <input type="text" name="SkillPercentage" class="form-control" >
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="input-block-wrap">
                                <div class="form-group row">
                                  <label class="col-sm-3 col-form-label">Skill 04</label>
                                  <div class="col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Skill Name</div>
                                      </div>
                                      <input type="text" name="skillName" class="form-control" >
                                    </div>
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <div class="offset-sm-3 col-sm-9">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Percentage</div>
                                      </div>
                                      <input type="text" name="SkillPercentage" class="form-control" >
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="offset-sm-3 col-sm-9">
                                  <div class="buttons">
                                    <button id="btnUserSkill">Save Update</button>
                                    <button class="" data-dismiss="modal">Cancel</button>
                                  </div>
                                </div>
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
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
                  <!-- Button trigger modal -->
                  <button type="button" class="btn btn-primary edit-resume" data-toggle="modal" data-target="#modal-qualification">
                    <i data-feather="edit-2"></i>
                  </button>
                  <!-- Modal -->
                  <div class="modal fade" id="modal-qualification" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-body">
                          <div class="title">
                            <h4><i data-feather="align-left"></i>Special Qualification</h4>
                            <a href="#" class="add-more">+ Add Another</a>
                          </div>
                          <div class="content">
                            <form id="userSpecialForm">
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Type Here</label>
                                <div class="col-sm-9">
                                  <div class="input-group">
                                    <div class="input-group-prepend">
                                      <div class="input-group-text">01</div>
                                    </div>
                                    <input type="text" name="Special" class="form-control" >
                                  </div>
                                </div>
                              </div>
                              <div class="form-group row">
                                <div class="offset-sm-3 col-sm-9">
                                  <div class="input-group">
                                    <div class="input-group-prepend">
                                      <div class="input-group-text">02</div>
                                    </div>
                                    <input type="text" name="Special" class="form-control" >
                                  </div>
                                </div>
                              </div>
                              <div class="form-group row">
                                <div class="offset-sm-3 col-sm-9">
                                  <div class="input-group">
                                    <div class="input-group-prepend">
                                      <div class="input-group-text">03</div>
                                    </div>
                                    <input type="text" name="Special" class="form-control" >
                                  </div>
                                </div>
                              </div>
                              <div class="form-group row">
                                <div class="offset-sm-3 col-sm-9">
                                  <div class="input-group">
                                    <div class="input-group-prepend">
                                      <div class="input-group-text">04</div>
                                    </div>
                                    <input type="text" name="Special" class="form-control" >
                                  </div>
                                </div>
                              </div>
                              <div class="form-group row">
                                <div class="offset-sm-3 col-sm-9">
                                  <div class="input-group">
                                    <div class="input-group-prepend">
                                      <div class="input-group-text">05</div>
                                    </div>
                                    <input type="text" name="Special" class="form-control" >
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="offset-sm-3 col-sm-9">
                                  <div class="buttons">
                                    <button id="btnUserSpecial">Save Update</button>
                                    <button class="" data-dismiss="modal">Cancel</button>
                                  </div>
                                </div>
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
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
                  <li><i class="fas fa-user"></i><a href="dashboard-edit-profile.jsp">Edit Profile</a></li>
                    <li ><i class="fas fa-file-alt"></i><a href="resumeinfo.action?jspName=resume">Resume</a></li>
                    <li class="active"><i class="fas fa-edit"></i><a href="resumeinfo.action?jspName=edit-resume">Edit Resume</a></li>
                    <li ><i class="fas fa-heart"></i><a href="queryAuserCollJobs.action">Bookmarked</a></li>
                    <li ><i class="fas fa-check-square"></i><a href="queryAuserApplyJobs.action">Applied Job</a></li>
                  </ul>
                  <ul class="delete">
                   <li><i class="fas fa-power-off"></i><a href="loginOut.action">Logout</a></li>
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
                              <button class="" data-dismiss="modal">Cancel</button>
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
    <script type="text/javascript">
    //文档就绪函数
    $(function(){
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
    	//解除绑定事件
    	$("#btnUserInfo").on("click",function(e){
    		var eve=e||event;
    		eve.preventDefault();
    		subUserInfo();
    	});
    	$("#btnUserEduation").on("click",function(e){
    		var eve=e||event;
    		eve.preventDefault();
    		subUserEduation();
    	});
    	$("#btnUserWork").on("click",function(e){
    		var eve=e||event;
    		eve.preventDefault();
    		subUserWork();
    	});
    	$("#btnUserSkill").on("click",function(e){
    		var eve=e||event;
    		eve.preventDefault();
    		subUserSkill();
    	});
    	$("#btnUserSpecial").on("click",function(e){
    		var eve=e||event;
    		eve.preventDefault();
    		subUserSpecial();
    	});
    	var salaryStrMax="";
		for (var i = 1; i < 251; i++) {
			salaryStrMax+="<option value='"+i+"k'>"+i+"k</option>";
		}
		$("#salarySelectMax").html(salaryStrMax);
		//上面选择之后改变下面的显示
		$("#salarySelectMax").change(function(){
		var salaryStrMin="";
			//获取当前被选中的值
	      var val= $(this).val();
			//对字符串进行分割
			var value=val.split("k")[0];
			var va=Number(value)+Number(1);
	      for (var i = va; i < 251; i++) {
	    	 salaryStrMin+="<option value='"+i+"k'>"+i+"k</option>";
			}
	      $("#salarySelectMin").html(salaryStrMin);
	    });
    })
    function AddEducation() {
    	//div的复制
    	var divTest = $("#sonDiv"); //获取复制对象的div(复制的目标对象)
    	var newDiv = $("#sonDiv").clone(true);//表示克隆一份一模一样的对象
    	var vs = $("input[name='eduationSchool']");
    	//for(var i 0;i<vs.length;).val("南京大学");
    	$(newDiv).find("input[name='eduationSchool']").val("");
    	$(newDiv).find("input[name='eduationTime']").val("");
    	$(newDiv).find("input[name='eduationDegree']").val("");
    	$(newDiv).find("textarea[name='eduationDescription']").val("");

    	divTest.after(newDiv);//将克隆出来的对象加载在指定的对象后面
	}
    function AddExperience() {
    	//div的复制
    	var divTest = $("#workDiv"); //获取复制对象的div(复制的目标对象)
    	var newDiv = $("#workDiv").clone(true);//表示克隆一份一模一样的对象
    	$(newDiv).find("input[name='workTime']").val("");
    	$(newDiv).find("input[name='workCompany']").val("");
    	$(newDiv).find("input[name='workPosition']").val("");
    	$(newDiv).find("textarea[name='workDescription']").val("");
    	divTest.after(newDiv);//将克隆出来的对象加载在指定的对象后面
	}
    function subResumeFile() {
    	 var formData = new FormData();
    	 var file=$("#resumeFile").get(0).files[0];
    	 if (file==undefined) {
			  alert("您为选中任何文件....")
			  return;
		}
        formData.append("resumeFile",file);
    	$.ajax({
            //几个参数需要注意一下
            type:"POST",//方法类型
            dataType: "json",//预期服务器返回的数据类型
            url: "ajaxUploadResumeFile.action",//url
            data:formData,
			processData : false,
			contentType:false,
            success: function (result) {
			if (result.info=="ok") {
			 $('#myModal').modal('hide');
			}else {
				window.location.href="404.jsp";
			  }
            },
        });
	}
    function resumeFile() {
      //让按钮控制模态框显示
      $("#myModal").modal({show:true});
	}
    
    function subNetName() {
    	$.ajax({
            //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "ajaxUploadResumeNetName.action" ,//url
                data: $('#netNameForm').serialize(),
                success: function (result) {
                	if (result.info=="ok") {
           			 $('#modal-social').modal('hide');
           			window.location.reload(true);
           			}else if(result.info=="error"){
           			  window.location.href="404.jsp";
           		    }
                },
            });
	}
	function subUserInfo() {
    	$.ajax({
            //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "ajaxSubUserInfo.action" ,//url
                data: $("#userInfoForm").serialize(),
                success: function (result) {
                	if (result.info=="ok") {
           			 $("#modal-about-me").modal('hide');
           			window.location.reload(true);
           			}if(result.info=="error"){
           			  window.location.href="404.jsp";
           		    }
                },
            });
	}
	
	function subUserEduation() {
    	$.ajax({
            //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "ajaxSubUserEduation.action" ,//url
                data: $("#userEduationForm").serialize(),
                success: function (result) {
                	if (result.info=="ok") {
           			 $("#modal-education").modal('hide');
           			window.location.reload(true);
           			}if(result.info=="error"){
           			  window.location.href="404.jsp";
           		    }
                },
            });
	}
	
	function subUserWork() {
    	$.ajax({
            //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "ajaxSubUserWork.action" ,//url
                data: $("#userWorkForm").serialize(),
                success: function (result) {
                	if (result.info=="ok") {
           			 $("#modal-experience").modal('hide');
           			window.location.reload(true);
           			}if(result.info=="error"){
           			  window.location.href="404.jsp";
           		    }
                },
            });
	}
	
	function subUserSkill() {
    	$.ajax({
            //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "ajaxSubUserSkill.action" ,//url
                data: $("#userSkillForm").serialize(),
                success: function (result) {
                	if (result.info=="ok") {
           			 $("#modal-pro-skill").modal('hide');
           			window.location.reload(true);
           			}if(result.info=="error"){
           			  window.location.href="404.jsp";
           		    }
                },
            });
	}
	
	function subUserSpecial() {
    	$.ajax({
            //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "ajaxSubUserSpecial.action" ,//url
                data: $("#userSpecialForm").serialize(),
                success: function (result) {
                	if (result.info=="ok") {
           			 $("#modal-qualification").modal('hide');
           			window.location.reload(true);
           			}if(result.info=="error"){
           			  window.location.href="404.jsp";
           		    }
                },
            });
	}
    </script>
  </body>
</html>
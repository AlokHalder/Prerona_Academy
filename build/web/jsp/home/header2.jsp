<%@page import="in.pcsacademy.model.vo.StudentRegistrationVo"%>
<%
    StudentRegistrationVo strvo = (StudentRegistrationVo) session.getAttribute("ALLSTUDENTDATA");

%>
<%@taglib prefix="html" uri="/WEB-INF/struts-html.tld"%>

<script type="text/javascript">
    function studentRegnBeforeAdmission() {
        var category = document.getElementById("trainingCategoryId").value;
        var course = document.getElementById("trainingCourseId").value;
        var fname = document.getElementById("firstName").value;
        var email = document.getElementById("emailId").value;
        var mob = document.getElementById("mobile").value;
        var pass = document.getElementById("password").value;
        var cpass = document.getElementById("confirmpass").value;

        if (category == "" || category == null) {
            alert("Please select Training Category");
            return false;
        }
        if (course == "" || course == null) {
            alert("Please Select Course");
            return false;
        }
        if (fname == "" || fname == null) {
            alert("Enter First Name!");
            return false;
        }
        if (email == "" || email == null) {
            alert("Enter Email!");
            return false;
        }
        if (mob == "" || mob == null) {
            alert("Enter Mobile No!");
            return false;
        }
        if (pass == "" || pass == null) {
            alert("Enter Password!");
            return false;
        }
        if (cpass == "" || cpass == null) {
            alert("Enter Confirm Password!");

            return false;
        }
        if (cpass != pass) {
            alert("Pasword Mismatch!");
            return false;
        }
        var studentRegnAfterAdmissionConfirm = confirm("Sure to register?");
        if (studentRegnAfterAdmissionConfirm) {
            return true;
        }
        else {
            return false;
        }
    }

</script>

<!-- HEADER -->
<div id="top-header" style="background: #d9534f" class=" t3-top-header">
    <div class="container" style="height: 1cm;background: #d9534f">
        
        <div class="main-container1" style="background: #d9534f">
          
            <div class="row">
                <div class="pull-right clearfix"> 
                   
                    <div class="head-social  hidden-sm hidden-xs">
                        
                        <div class="custom"> 
                          
                                <div class="addthis_toolbox">
                               
                                
                                <a  href="https://www.facebook.com/Prerona-Academy-962895277191221/" style="background-color: #23527c" target="_blank"><i style="color: #fff;" class="fa fa-facebook"></i></a> 
                                <a  href="https://www.twitter.com/" style="background-color: #23527c;" target="_blank"><i style="color: #fff;" class="fa fa-twitter"></i></a> 
                                
                            </div>
                            <script type="text/javascript" src="js/addthis_widget.js"></script> 
                            <!-- AddThis Follow END -->
                        </div>
                    </div>
                    <!-- //HEAD SOCIAL --> 
                </div>

                <div class="col-xs-6 col-sm-6 pull-right"> 
                    <!-- HEAD LOGIN -->
                    <div class="head-login clearfix " style="padding-top: 7px;">
                        <ul class="ja-login">
                            <li> 
                                <%                                    if (session.getAttribute("ALLSTUDENTDATA") != null) {
                                %>
                                <a class="logout-switch" href="student-logout.do" title="Logout">
                                    <span>Log Out</span>
                                </a>
                                <a class="register-switch" href="javascript:void(0)" data-target="#">
                                    Hi..<%=strvo.getFirstName()%>
                                </a>
                                <%
                                    }
                                    if (session.getAttribute("ALLSTUDENTDATA") == null) {
                                %>
                                <a style="border-radius: 10px;" class="login-switch" href="javascript:void(0);" style="background: darkslategrey"title="Login">
                                    <span style="color: whitesmoke">Sign In</span>
                                </a> 
                                <%
                                    }
                                %>
                                <!--LOFIN FORM content-->
                                <div id="ja-user-login">
                                    <html:form action="student-login" styleId="login-form">
                                        <!--                                    <form action="" method="post" name="form-login" id="login-form" >-->
                                        <div class="pretext"></div>
                                        <fieldset class="userdata">
                                            <p id="form-login-username">
                                                <label for="modlgn-username"> Registration Id</label>
                                                <!--                                                <i id="modlgn-username" type="text" name="username" class="inputbox"  size="18" />-->
                                                <html:text property="studentRegnBeforeAdmisnId" style="border-radius: 10px;" styleClass="inputbox" size="18" styleId="uregid" value="" />
                                            </p>
                                            <p id="form-login-password">
                                                <label for="modlgn-passwd">Password</label>
                                                <!--                                                <input id="modlgn-passwd" type="password" name="password" class="inputbox" size="18"  />-->
                                                <html:password property="password" styleId="upass" styleClass="inputbox" size="18" />
                                            </p>
                                            <p id="form-login-remember">
                                                <label for="modlgn-remember">Remember Me</label>
                                                <input id="modlgn-remember" type="checkbox" name="remember" class="inputbox" value="yes"/>
                                            </p>
                                            <!--                                            <input type="submit" name="Submit" class="button btn" value="Login" />-->
                                            <html:submit value="Login" styleClass="button btn" />
                                        </fieldset>
                                            
                                        <ul>
                                            <li><a href="">Forgot your password ?</a></li>
                                            <!--<li><a href="">Forgot your username ?</a></li>-->
                                            <li><a href="">Create an account</a></li>
                                        </ul>
                                    </html:form>
                                </div>
                            </li>
                          
                            
                            <li type="button" class="register-switch" style="color: #FFF"> Contact No: +91-6290665818</li>
                           
                            
                           
                        </ul>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>


<!-- MAIN NAVIGATION -->

<header id="t3-mainnav" class="t3-mainnav navbar navbar-default" style="margin-bottom: 0px;">
    
        <div class="main-container1" style="margin-bottom: 0px;height: fit-content"> 

            
            <div class="navbar-header" style="margin-bottom: 0px; margin-top: 0px;"> 
                <img src="image/u.png" alt="" style="height: 60px; width: 60px; margin-top: 0px;margin-bottom: 0px;">
                
                
            </div>
             <div class="navbar-header" style="margin-bottom: 0px; margin-top: 30px;"> 
                
                 <h5 style="color:black;font-family:cursive"><b style="color:#d9534f;">Prerona</b> Academy</h5>
                
            </div>
      <!--     <div style="margin-bottom: 0px;"><h6>Prerona Academy</h6></div> -->
               <!-- <div class="logo logo-image" style="margin-bottom: 0px; margin-top: 0px;padding-top: 0px;" ><a href="/home.do"><img style="margin-top: 0px;margin-bottom: 0px;padding-top: 0px;" class="logo-img"   src="image/47.png" alt="logo"  /><span>Rohit!</span></a><small class="site-slogan hidden-xs"></small></div>
                    
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".t3-navbar-collapse"> <i class="fa fa-bars"></i> </button>
                </div> -->
                <!-- //NAVBAR HEADER --> 

                <!-- HEAD SEARCH -->
               
                <!-- //HEAD SEARCH --> 

                <!-- NAVBAR MAIN -->
               
                   
                <nav class="t3-navbar navbar-collapse collapse " style="margin-bottom: 0px;margin-top: 10px;">
                    <div class="t3-megamenu animate fading" data-duration="400" data-responsive="true" id="header-menubar-div">
                        <ul class="nav navbar-nav level0">
                            <li class="current active" data-id="435" data-level="1"><a href="home.do" class="">Home</a></li>
                            <li class="dropdown mega" data-id="558" data-level="1"><a class="dropdown-toggle" href="aboutus.do" data-target="#" data-toggle="dropdown">About Us<b class="caret"></b></a>
                                <div class="nav-child dropdown-menu mega-dropdown-menu" style="background: transparent">
                                    <div class="mega-dropdown-inner">
                                        <div class="row">
                                            <div class="col-xs-12 mega-col-nav" data-width="12">
                                                <div class="mega-inner">
                                                    <ul class="mega-nav level1" style="">
                                                        <li data-id="544" data-level="2"><a class="" href="companyprofile.do" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 15px" data-target="#"><b>Company Profile</b></a> </li>
                                                        <li data-id="543" data-level="2"><a class="" href="why-intern-at-pcs.do" style="color: whitesmoke;background: #d9534f;font-size: 15px;font-family: serif;" data-target="#">Why Prerona Academy?</a> </li>
                                                        <li data-id="588" data-level="2"><a class="" href="missionvission.do" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 15px;" data-target="#">Vision &amp; Mission</a> </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                             <li class="dropdown mega" data-id="558" data-level="1"><a class="dropdown-toggle" href="aboutus.do" data-target="#" data-toggle="dropdown">Training<b class="caret"></b></a>
                                <div class="nav-child dropdown-menu mega-dropdown-menu" style="background: transparent">
                                    <div class="mega-dropdown-inner">
                                        <div class="row">
                                            <div class="col-xs-12 mega-col-nav" data-width="12">
                                                <div class="mega-inner">
                                                    <ul class="mega-nav level2">
                                                       <li data-id="487" data-level="3" data-xicon="fa fa-user"><a class="" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 12px" href="corporatetrainning.do" data-target="#"><i class="fa fa-user"></i>Corporate Training</a></li>
                                                       <li data-id="488" data-level="3" data-xicon="fa fa-user-md"><a class="" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size:12px" href="indurstrytrainning.do" data-target="#"><i class="fa fa-user-md"></i>Industry Training</a></li>
                                                       
                                                     
                                                       <li data-id="490" data-level="3" data-xicon="fa fa-link"><a class="" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size:12px" href="internship.do" data-target="#"><i class="fa fa-link"></i>Internship</a></li>  
                                                   <li data-id="495" data-level="3" data-xicon="fa fa-users"><a class="" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size:12px" href="onjob-javaj2ee.do" data-target="#"><i class="fa fa-users"></i>On-Job Training</a></li>
                                                        <li data-id="494" data-level="3" data-xicon="fa fa-search"><a class="" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size:12px" href="projectguide.do" data-target="#"><i class="fa fa-search"></i>Guidance on project</a></li>
                                                      <li data-id="493" data-level="3" data-xicon="fa fa-users"><a class="" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size:12px" href="#" data-target="#"><i class="fa fa-users"></i>Corporate HR Training</a></li>
                                                    
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                             <li class="dropdown mega" data-id="558" data-level="1"><a class="dropdown-toggle" href="aboutus.do" data-target="#" data-toggle="dropdown">Courses<b class="caret"></b></a>
                                <div class="nav-child dropdown-menu mega-dropdown-menu" style="background: transparent">
                                    <div class="mega-dropdown-inner">
                                        <div class="row">
                                            <div class="col-xs-12 mega-col-nav" data-width="12">
                                                <div class="mega-inner">
                                                    <ul class="mega-nav level2">
                                                       <li data-id="559" data-level="3"><a class="" href="crystalreport.do" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 15px" data-target="#">Internet of Things (IOT) </a></li>
                                                                                    <li data-id="581" data-level="3"><a class="" href="windowsmobileapp.do" data-target="#" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 12px">Big Data</a></li>
                                                                                    <li data-id="628" data-level="3"><a class="" href="mvcarchitecture.do" data-target="#" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 12px">Block Chain</a></li>
                                                                                    <li data-id="629" data-level="3"><a class="" href="javaj2ee.do" data-target="#" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 12px">Data Science</a></li>
                                                                                    <li data-id="630" data-level="3"><a class="" href="aspnet.do" data-target="#" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 12px">Python</a></li>
                                                                                     <li data-id="631" data-level="3"><a class="" href="php.do" data-target="#" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 12px">DBMS</a></li>
                                                                                    <li data-id="623" data-level="3"><a class="" href="android.do" data-target="#" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 12px">Java / J2EE</a></li>
                                                                                    <li data-id="623" data-level="3"><a class="" href="cloudcomputing.do" data-target="#" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 12px">PHP</a></li>
                                                                                    <li data-id="623" data-level="3"><a class="" href="ethicalhacking.do" data-target="#" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 12px">Angular JS</a></li>
                                                                                    <li data-id="623" data-level="3"><a class="" href="bigdata.do" data-target="#" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 12px">Wordpress</a></li>
                                                                                    <li data-id="624" data-level="3"><a class="" href="webdesign.do" data-target="#" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 12px">Web Designing</a></li>
                                                                                    <li data-id="625" data-level="3"><a class="" href="testing.do" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 12px" data-target="#">Testing</a></li>
                                                                                    <li data-id="626" data-level="3"><a class="" href="dba.do" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 12px" data-target="#">Database Administration</a></li>
                                                                                    <li data-id="496" data-level="3"><a class="" href="softskils.do" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 12px" data-target="#">Soft Skills</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                          
                          
                         
                            <li data-id="512" data-level="1">
                            
                            <a class="" href="studentRegnBeforeAdmsn.do" data-target="#">Registration</a>
                            
                        </li>
                        <li class="dropdown mega" data-id="558" data-level="1"><a class="dropdown-toggle" href="#" data-target="#" data-toggle="dropdown">Partners<b class="caret"></b></a>
                                <div class="nav-child dropdown-menu mega-dropdown-menu" style="background: transparent">
                                    <div class="mega-dropdown-inner">
                                        <div class="row">
                                            <div class="col-xs-12 mega-col-nav" data-width="12">
                                                <div class="mega-inner">
                                                    <ul class="mega-nav level1">
                                                        <li data-id="544" data-level="1"><a class="" href="#" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 15px" data-target="#"></a><a style="background:#d9534f " href="http://www.pcsglobal.in/">PCS Global Pvt. Ltd.</a> </li>
                                                        <li data-id="543" data-level="2"><a class="" href="#" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 15px" data-target="#"></a><a style="background:#d9534f " href="http://www.avitssolutions.com/">AVITS Solution</a> </li>
                                            <li data-id="544" data-level="3"><a class="" href="#" style="color: whitesmoke;background: #d9534f;font-family: serif;font-size: 15px" data-target="#"></a><a style="background:#d9534f " href=""></a> </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        <li data-id="512" data-level="1" class=""><a class="" href="contactus.do" data-target="#">Contact Us</a></li>
                        
                    </ul>
                </div>
            </nav>
              
            <!-- //NAVBAR MAIN --> 
        </div>
    
</header>
<!-- //MAIN NAVIGATION --> 


<!-- SLIDESHOW --> 
<!-- .rs-wrapper start -->
<!--<div class="rs-wrapper">
    <div class="fullwidthbanner-container">
        <div class="fullwidthbanner tp-simpleresponsive" style="height:420px;" >
            <ul style="display: block;">
                <li data-transition="slotzoom-horizontal" data-slotamount="10" style="visibility: visible; left: 0px; top: 0px; z-index: 20; opacity: 1;">
                    <div class="slotholder"><img src="images/slide11.jpg" alt="background" class="defaultimg" style="width: 90%; height: 413px; position: absolute; left: -327.5px; top: 0px; opacity: 1;"></div>
                    <div class="caption lfl regular_title tp-caption start" data-x="335" data-y="90" data-speed="700" data-start="2000" data-easing="easeOutBack" style="font-size: 30px; padding: 3px 5px; margin: 0px; border: 0px; line-height: 32px; white-space: nowrap; opacity: 1; left: 497.5px; top: 90px; -webkit-transform: scale(1, 1) rotate(0deg); visibility: visible;">PCS Academy</div>
                    <div class="caption lfr regular_subtitle tp-caption start" data-x="390" data-y="160" data-speed="700" data-start="2400" data-easing="easeOutBack" style="font-size: 18px; padding: 7px 15px 7px 25px; margin: 0px; border: 0px; line-height: 15px; white-space: nowrap; opacity: 1; left: 540.7067749521684px; top: 160px; -webkit-transform: scale(1, 1) rotate(0deg); visibility: visible;">Total Quality Education</div>
                    <div class="caption lfr regular_subtitle tp-caption start" data-x="390" data-y="202" data-speed="700" data-start="2900" data-easing="easeOutBack" style="font-size: 18px; padding: 7px 15px 7px 25px; margin: 0px; border: 0px; line-height: 15px; white-space: nowrap; opacity: 1; left: 605.6708861773541px; top: 202px; -webkit-transform: scale(1, 1) rotate(0deg); visibility: visible;">Student Centric Approach</div>
                    <div class="caption lfr regular_subtitle tp-caption start" data-x="390" data-y="242" data-speed="700" data-start="3200" data-easing="easeOutBack" style="font-size: 18px; padding: 7px 15px 7px 25px; margin: 0px; border: 0px; line-height: 15px; white-space: nowrap; opacity: 1; left: 1280px; top: 242px; -webkit-transform: scale(1, 1) rotate(0deg); visibility: visible;">Collaborative Platform</div>
                </li>
                <li data-transition="3dcurtain-vertical" data-slotamount="10" style="visibility: visible; left: 0px; top: 0px; z-index: 20; opacity: 1;">
                    <div class="slotholder"><img src="images/slide12.jpg" alt="background" class="defaultimg" style="width: 90%; height: 413px; position: absolute; left: -327.5px; top: 0px; opacity: 1;"></div>
                    <div class="caption lfl regular_title tp-caption start" data-x="335" data-y="90" data-speed="700" data-start="2000" data-easing="easeOutBack" style="font-size: 30px; padding: 3px 5px; margin: 0px; border: 0px; line-height: 32px; white-space: nowrap; opacity: 1; left: 497.5px; top: 90px; -webkit-transform: scale(1, 1) rotate(0deg); visibility: visible;">PCS Academy</div>
                    <div class="caption lfr regular_subtitle tp-caption start" data-x="390" data-y="160" data-speed="700" data-start="2400" data-easing="easeOutBack" style="font-size: 18px; padding: 7px 15px 7px 25px; margin: 0px; border: 0px; line-height: 15px; white-space: nowrap; opacity: 1; left: 540.7067749521684px; top: 160px; -webkit-transform: scale(1, 1) rotate(0deg); visibility: visible;">Industry Oriented Training</div>
                    <div class="caption lfr regular_subtitle tp-caption start" data-x="390" data-y="202" data-speed="700" data-start="2900" data-easing="easeOutBack" style="font-size: 18px; padding: 7px 15px 7px 25px; margin: 0px; border: 0px; line-height: 15px; white-space: nowrap; opacity: 1; left: 605.6708861773541px; top: 202px; -webkit-transform: scale(1, 1) rotate(0deg); visibility: visible;">Faculty Interaction</div>
                    <div class="caption lfr regular_subtitle tp-caption start" data-x="390" data-y="242" data-speed="700" data-start="3200" data-easing="easeOutBack" style="font-size: 18px; padding: 7px 15px 7px 25px; margin: 0px; border: 0px; line-height: 15px; white-space: nowrap; opacity: 1; left: 1280px; top: 242px; -webkit-transform: scale(1, 1) rotate(0deg); visibility: visible;">Flexibility and Affordability</div>
                </li>
                <li data-transition="3dcurtain-horizontal" data-slotamount="10" style="visibility: visible; left: 0px; top: 0px; z-index: 18; opacity: 1;">
                    <div class="slotholder"><img src="images/slide13.jpg" alt="background" class="defaultimg" style="width: 90%; height: 413px; position: absolute; left: -327.5px; top: 0px; opacity: 0;"></div>
                    <div class="caption lfl regular_title3 tp-caption start" data-x="0" data-y="90" data-speed="700" data-start="2000" data-easing="easeOutBack" style="left: -457px; font-size: 30px; padding: 3px 5px; margin: 0px; border: 0px; line-height: 32px; white-space: nowrap; opacity: 1; top: 90px; -webkit-transform: scale(1, 1) rotate(0deg); visibility: visible;">PCS Academy</div>
                    <div class="caption lfr regular_subtitle tp-caption start" data-x="48" data-y="160" data-speed="700" data-start="2400" data-easing="easeOutBack" style="left: 1285px; font-size: 18px; padding: 7px 15px 7px 25px; margin: 0px; border: 0px; line-height: 15px; white-space: nowrap; opacity: 1; top: 160px; -webkit-transform: scale(1, 1) rotate(0deg); visibility: visible;">Dedicated Academic Support</div>
                    <div class="caption lfr regular_subtitle tp-caption start" data-x="48" data-y="202" data-speed="700" data-start="2900" data-easing="easeOutBack" style="left: 1285px; font-size: 18px; padding: 7px 15px 7px 25px; margin: 0px; border: 0px; line-height: 15px; white-space: nowrap; opacity: 1; top: 202px; -webkit-transform: scale(1, 1) rotate(0deg); visibility: visible;">IT Solutions</div>
                    <div class="caption lfr regular_subtitle tp-caption start" data-x="48" data-y="242" data-speed="700" data-start="3200" data-easing="easeOutBack" style="left: 1285px; font-size: 18px; padding: 7px 15px 7px 25px; margin: 0px; border: 0px; line-height: 15px; white-space: nowrap; opacity: 1; top: 242px; -webkit-transform: scale(1, 1) rotate(0deg); visibility: visible;">Experienced Faculty</div>
                </li>
            </ul>
            <div class="tp-loader" style="display: none;"></div>
            <div class="tp-bannertimer" style="visibility: hidden; width: 47.37612107623318%; overflow: hidden;"></div>
        </div>
        <div style="visibility: visible; position: absolute; left: 0px; top: 231px; opacity: 0;" class="tp-leftarrow tparrows round large"></div>
        <div style="visibility: visible; position: absolute; left: 1216px; top: 231px; opacity: 0;" class="tp-rightarrow tparrows round large"></div>
    </div>
</div>-->
<!-- .rs-wrapper end --> 
<!-- //SLIDESHOW -->

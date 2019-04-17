<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUsForm.aspx.cs" Inherits="AboutUsForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700|Work+Sans:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">

    
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
  
    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
    
 
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    
    
    <div class="site-navbar-wrap js-site-navbar bg-white">
      
      <div class="container">
        <div class="site-navbar bg-light">
          <div class="py-1">
            <div class="row align-items-center">
              <div class="col-2">
                <h2 class="mb-0 site-logo"><a href="CUED-InHomeAccountForm.aspx">CUED<strong>-In</strong></a></h2>
              </div>
              <div class="col-10">
                <nav class="site-navigation text-right" role="navigation">
                  <div class="container">
                    <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>
                         <ul class="site-menu js-clone-nav d-none d-lg-block">

                        <li class="has-children">
                        <a href="#">Job Postings</a>
                        <ul class="dropdown arrow-top">
                          <li><a href="JobPostingForm.aspx">Post an Opportunity</a></li>
                          <li><a href="ViewPostingForm.aspx">View Your Postings</a></li>
                        </ul>
						<li><a href="SchoolDemographicsForm.aspx">School Demographics</a></li>
                        <li><a href="ReviewApplicants.aspx">Review Applicants</a></li>
                        <li><a href="AboutUsForm.aspx">About</a></li>

                        <li class="has-children">
                        <a href="AccountInformationForm.aspx">Account     </a>
                        <ul class="dropdown arrow-top">
                          <li><a href="AccountInformationForm.aspx">Account Information</a></li>
                            <li><a href="MasterPageForm.aspx">Log Out</a></li>
                        </ul>
                         <li><a href="#"></a></li>
					  </ul> 
                  </div>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
 
    <div class="site-blocks-cover inner-page" style="background-image: url(https://d1r2jio0ygi9fo.cloudfront.net/uploads/2018/10/About-Us-hero-Shenandoah-Valley-Picture.jpg)";" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="row align-items-center justify-content-center">
        <div class="col-md-7 text-center" data-aos="fade">
          <h1>About Us</h1>
        </div>
      </div>
    </div>  


    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <p class="mb-5"><img src="imagesForForms/CuedIn_logo-large_(1)(2).jpg" alt="Image" class="img-fluid cued-img"></p>
          </div>
          <div class="col-lg-5 ml-auto">
            <h2 class="site-section-heading mb-3">Our Story</h2>
            <p>
                CUED-In Inc. was founded in 2015 by talking with counselors, parents, teachers, and students. We saw that there was no platform out there that connects the student to local opportunities (jobs, internships, shadowing). Also, other platforms point students to just college bound careers. We want to bring everything together because all careers are needed no matter if it takes you to college or a technical school. So CUED-In was formed and is an app and web-based platform that promotes a career focused, community connected future by showing students various pathways to a career. We bring all the key players—students, parents, counselors, career coaches, teachers, and businesses—onto one platform, enhancing communication and eliminating the need for multiple websites. Having everyone on the same page promotes seamless, informed, and financially savvy decisions while helping students keep an eye on the ultimate goal that a college or technical school degree provides—a career.</p>
            <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit explicabo odio officiis autem minima quibusdam.</p>
            <p><a href="#" class="btn btn-outline-primary py-2 px-4">Join Our Club</a></p>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section bg-image text-white" style="background:#102b3f;" <%--style="background-image: url('images/bg_2.jpg'); --%>background-attachment: fixed;">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-12">
            <h2 class="site-section-heading text-center text-white">Our Team</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 text-center mb-5">
            <div class="p-3">
              <img src="https://d1r2jio0ygi9fo.cloudfront.net/wp-content/uploads/2017/04/05115043/seth-498x476.jpg"" alt="Image" class="img-fluid rounded-circle w-25 mb-4">
              <h2 class="h5 mb-4 text-white">SETH MARSH FOUNDER/CEO</h2>
              <p class="text-blue mb-5 lead">&ldquo;Seth has a degree in Business Administration. He started working for a Virginia public university in January 2014. While working in the business office, he discovered that the majority of students and parents he talked to were remarkably uninformed about their career options and financial/debt issues related to their education. In June 2015 he went to pursue his vision for a better career planning and community focused tool for high school students before they graduate. CUED-In was born to reach this vision.
                &rdquo;</p>
            </div>
          </div>
          <div class="col-md-6 text-center mb-5">
            <div class="p-3">
              <img src="https://d1r2jio0ygi9fo.cloudfront.net/uploads/2017/10/emily1-498x476.jpg" alt="Image" class="img-fluid rounded-circle w-25 mb-4">
              <h2 class="h5 mb-4 text-white">EMILY MARSH, BUSINESS DEVELOPMENT</h2>
              <p class="text-blue mb-5 lead">&ldquo;Emily graduated Summa Cum Laude from Covenant College with a B.A. in Psychology. She earned her realtor’s license and worked as a marketing assistant and administrative aid for The Harrisonburg Homes Team. She now teaches pilates and assists the CUED-In team when needed.&rdquo;</p>
            </div>
          </div>
          <div class="col-md-6 text-center mb-5">
            <div class="p-3">
              <img src="https://d1r2jio0ygi9fo.cloudfront.net/uploads/2017/10/john1-498x476.jpg" alt="Image" class="img-fluid rounded-circle w-25 mb-4">
              <h2 class="h5 mb-4 text-white">JOHN BARLOW, ED.D. , COO</h2>
              <p class="text-blue mb-5 lead">&ldquo;There are several factors that have led John Barlow to CUED-In. His own work history which includes manufacturing, warehousing, construction, and education demonstrated to him a community’s need for a diverse, well equipped workforce. As a parent and educator, he has counseled young people on career opportunities. He believes that communities will thrive when there is a stable, well-trained workforce from the skilled trades to the office.&rdquo;</p>
            </div>
          </div>

        </div>
      </div>  
    </div>
    
      
    <div class="site-section bg-image" <%--style="background-image: url('images/bg_2.jpg');--%> background-attachment: fixed;">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-12">
            <h2 class="site-section-heading text-center text-blue">Our Board of Directors</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 text-center mb-5">
            <div class="p-3">
              <img src="https://d1r2jio0ygi9fo.cloudfront.net/uploads/2017/10/marshall-price2-498x476.jpg" alt="Image" class="img-fluid rounded-circle w-25 mb-4">
              <h2 class="h5 mb-4 text-blue">MARSHALL PRICE</h2>
              <p class="text-blue mb-5 lead">&ldquo; Marshall Price recently retired as director of Massanutten Technical Center, a regional vocational center for Harrisonburg and Rockingham County. During his sixteen year tenure at MTC, high school enrollment at the center increased from 250 students to over 1000 students, the number of programs expanded from 15 to 21, and MTC became an award-winning regional vocational center for the State of Virginia. Prior to his time at MTC, Mr. Price served as an administrator for the Rockingham County Public Schools for 27 years. He has served on numerous boards including the Rockingham Memorial Hospital Foundation, Friendship Industries Executive Board, Explore More Children’s Museum, and he was appointed by the governor of Virginia to the Virginia State Board of Education for Corrections. He is a graduate of James Madison University where he received his Bachelors and Masters Degrees. He is a lifelong resident of Rockingham County. He and his wife, Gloria, have three grown children and four grandchildren.&rdquo;</p>
            </div>
          </div>
          <div class="col-md-6 text-center mb-5">
            <div class="p-3">
              <img src="https://d1r2jio0ygi9fo.cloudfront.net/uploads/2017/10/Mark-Graham-498x476.jpg" alt="Image" class="img-fluid rounded-circle w-25 mb-4">
              <h2 class="h5 mb-4 text-blue">MARK GRAHAM</h2>
              <p class="text-blue mb-5 lead">&ldquo;Mark has been a practicing CPA since 1980 with extensive experience in business and personal taxation, senior management consulting, project and business valuations, litigation support, and not-for-profit consulting. He is the managing and senior partner of Graham and Poirot, CPAs, LLC. He also serves as a full time lecturer at Department of Finance and Business Law at James Madison University teaching seniors. He has prior eight year experience as CFO and corporate treasurer of a three campus continuing care retirement community. Mark has been involved in the community in multiple ways. He is the Eagle Scout  and current Scoutmaster (28-year tenure) BSA Troop 72, Harrisonburg, Virginia. He also servers on the Council of the Boy Scouts of America. He is married to former Martha Kent Bell, novelist, for 41 years with four grown children and six grandchildren.&rdquo;</p>
            </div>
          </div>

        </div>
      </div>  
    </div>
    <div class="site-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-12">
            <h2 class="site-section-heading text-center">Our goal is to provide you with the knowledge to make better career decisions.</h2>
          </div>
        </div>
        <div class="row">
         <div class="col-md-4 text-center mb-4">
            <div class="border p-4 text-with-icon">
              <img src="imagesForForms/BeFunky-photo.jpg" class="attachment-full size-full wp-post-image" alt="">
              <h2 class="h5">Imparting Knowledge</h2>
              <p>By connecting school counselors and students on one mobile friendly platform, CUED-In opens lines of communication so students can make an informed decision regarding their future.</p>
              <p><a href="#">Learn More</a></p>
            </div>
          </div>
          <div class="col-md-4 text-center mb-4">
            <div class="border p-4 text-with-icon">
              <img src="https://d1r2jio0ygi9fo.cloudfront.net/uploads/2017/10/icon-local-scholarships.svg" class="attachment-full size-full wp-post-image" alt="">
              <h2 class="h5">Local Scholarships</h2>
              <p>We house locally funded scholarships on our app, making the process of finding and applying for scholarships easy and accessible.</p>
              <p><a href="#">Learn More</a></p>
            </div>
          </div>
          <div class="col-md-4 text-center mb-4">
            <div class="border p-4 text-with-icon">
              <img src="https://d1r2jio0ygi9fo.cloudfront.net/uploads/2016/02/icon-businesses.svg" class="attachment-full size-full wp-post-image" alt="">
              <h2 class="h5">Businessess</h2>
              <p>We provide a platform for businesses to post jobs/internships/volunteer hours/scholarships, and provide basic information about the company.</p>
              <p><a href="#">Learn More</a></p>
            </div>
          </div>
          <div class="col-md-4 text-center mb-4">
            <div class="border p-4 text-with-icon">
              <img src="https://d1r2jio0ygi9fo.cloudfront.net/uploads/2016/02/icon-trade-schools.svg" class="attachment-full size-full wp-post-image" alt="">
              <h2 class="h5">Technical Schools/Colleges</h2>
              <p>We provide students with technical school information and a national database of colleges.</p>
              <p><a href="#">Learn More</a></p>
            </div>
          </div>
          <div class="col-md-4 text-center mb-4">
            <div class="border p-4 text-with-icon">
              <img src="https://d1r2jio0ygi9fo.cloudfront.net/uploads/2018/03/icon-parent-portal.svg" class="attachment-full size-full wp-post-image" alt="">
              <h2 class="h5">Parent Portal</h2>
              <p>Our platform allows parents to connect with student(s) and their counselor.</p>
              <p><a href="#">Learn More</a></p>
            </div>
          </div>
          <div class="col-md-4 text-center mb-4">
            <div class="border p-4 text-with-icon">
              <img src= "https://d1r2jio0ygi9fo.cloudfront.net/uploads/2018/03/icon-checklist.svg" class="attachment-full size-full wp-post-image" alt="" />
              <h2 class="h5">Checklist</h2>
              <p>Students can see a list of deadlines for applications they are working on. Counselors can manage deadlines for certain applications.</p>
              <p><a href="#">Learn More</a></p>
            </div>
          </div>

        </div>
      </div>
    </div>

    <footer class="site-footer">
      <div class="container">
        

        <div class="row">
          <div class="col-md-4">
            <h3 class="footer-heading mb-4 text-white">About</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat quos rem ullam, placeat amet.</p>
            <p><a href="#" class="btn btn-primary rounded text-white px-4">Read More</a></p>
          </div>
          <div class="col-md-5 ml-auto">
            <div class="row">
              <div class="col-md-6">



                <h3 class="footer-heading mb-4 text-white">Quick Menu</h3>
  
              </div>
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white"></h3>

              </div>
            </div>
          </div>
          <div class="col-md-2">
            <div class="col-md-12"><h3 class="footer-heading mb-4 text-white">Social Icons</h3></div>
              <div class="col-md-12">
                <p>
                  <a href="#" class="pb-2 pr-2 pl-0"><span class="icon-facebook"></span></a>
                  <a href="#" class="p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="p-2"><span class="icon-instagram"></span></a>
                  <a href="#" class="p-2"><span class="icon-vimeo"></span></a>

                </p>
              </div>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy; <script>document.write(new Date().getFullYear());</script> All Rights Reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/main.js"></script>

  </body>

</asp:Content>


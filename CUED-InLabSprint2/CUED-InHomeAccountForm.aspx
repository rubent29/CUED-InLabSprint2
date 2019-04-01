<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CUED-InHomeAccountForm.aspx.cs" Inherits="CUED_InHomeForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            background-color: #FFFF66;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body>
  
  <div class="site-wrap">


    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    
    
    <div class="site-navbar-wrap js-site-navbar bg-dark">
      
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

                        <li><a href="JobPostingLandingForm.aspx">Job Posting</a></li>
						<li><a href="SchoolDemographicsForm.aspx">School Demographics</a></li>
                        <li><a href="CUED-InHomeAccountForm.aspx">Review Applicants</a></li>
                        <li><a href="AboutUsForm.aspx">About</a></li>

                        <li class="has-children">
                        <a href="CUED-InHomeAccountForm.aspx">Account     </a>
                        <ul class="dropdown arrow-top">
                          <li><a href="CUED-InHomeAccountForm.aspx">Account Information</a></li>
                          <li><a href="CUED-InHomeAccountForm.aspx">Applicants</a></li>
                          <li><a href="JobPostingLandingForm.aspx">Job Postings</a></li>
                          <li><a href="SubscriptionForm.aspx">Subscription</a></li>
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
  
    <!-- <div style="height: 113px;"></div> -->
  
      
 <div class="site-blocks-cover inner-page" style="background-image: url(images/hero_img.jpg" data-aos="fade" data-stellar-background-ratio="0.5">
         <div class="container"> 
          <div class="row align-items-center justify-content-center">
            <div class="col-md-7 text-center" data-aos="fade">
              <h1>Employer</h1>
                <span class="caption d-block text-black"><strong>Join the Cued-In</strong> <strong>Community.</strong></span>

                <strong>
                <asp:Label ID="Label1" 
                    runat="server" 
                    CssClass="auto-style1" 
                    Text="Label"></asp:Label>
                </strong>
            </div>
          </div>
        </div> 
      </div>  


 
	 
   <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <p class="mb-5"><img src="imagesForForms/teacher_help2.jpg" alt="Image" class="img-fluid"></p>
          </div>
          <div class="col-lg-5 ml-auto">
            <h2 class="site-section-heading mb-3">Why CUED-In? </h2>
            <p>Need to get connected to the next generation of the local workforce? Have job vacancies or opportunities for high school students to learn about your industry?</p>
            <p class="mb-4 site-section-lower"> Benefits include</p>
			  
			  <div class="features">
                                <div class="features-icon features-left">
                                    <i class="mdi mdi-check"></i>
                                </div>
                                <div class="features-desc">
                                    <h3 class="features-title font-weight-bold"> Connect to your local workforce</h3>
                                   <!-- <p class="features-sub-title pt-2 text-muted">You want customer to your store. Easily publish your coupans and when a user has manage to catch one of your coupens.</p> -->
                                </div>
                            </div> 

                            <div class="features">
                                <div class="features-icon features-left">
                                    <i class="mdi mdi-check"></i>
                                </div>
                                <div class="features-desc">
                                    <h3 class="features-title font-weight-bold">Give back to your community</h3>
                                   <!-- <p class="features-sub-title pt-2 text-muted">You want customer to your store. Easily publish your coupans and when a user has manage to catch one of your coupens.</p> -->
                                </div>
                            </div> 

                            <div class="features">
                                <div class="features-icon features-left">
                                    <i class="mdi mdi-check"></i>
                                </div>
                                <div class="features-desc">
                                    <h3 class="features-title font-weight-bold">Mentor or help an aspiring student explore your industry</h3>
                                   <!-- <p class="features-sub-title pt-2 text-muted">You want customer to your store. Easily publish your coupans and when a user has manage to catch one of your coupens.</p> -->
                                </div>
                            </div> 
                            <div class="features">
                                <div class="features-icon features-left">
                                    <i class="mdi mdi-check"></i>
                                </div>
                                <div class="features-desc">
                                    <h3 class="features-title font-weight-bold"> Post your positions on your web-based platform for students to see on their app</h3>
                                  <!--  <p class="features-sub-title pt-2 text-muted">You want customer to your store. Easily publish your coupans and when a user has manage to catch one of your coupens.</p> -->
                                </div>
                            </div> 
			  
         <!--   <p><a href="#" class="btn btn-outline-primary py-2 px-4">Join Our Club</a></p> -->
          </div>
        </div>
      </div>
    </div>


    <div class="site-section bg-img" style="background-image: url('images/parallax-bg.jpg'); background-attachment: fixed; ">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-12">
            <h2 class="site-section-heading text-center text-white"></h2>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-md-7 text-center">
            <h2 class="h3 mb-4 text-white">Follow Potential Employees</h2>
            <p class="text-white mb-5 lead">CUED-In provides the ability to keep up with the progress of your applicant as they go through the application process.</p>
            <p><a href="#" class="btn btn-primary text-white">Track Your Applicants!</a></p>
          </div>
        </div>
      </div>  
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2 class="site-section-heading text-center">How it works</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 block-13 nav-direction-white">
            <div class="nonloop-block-13 owl-carousel">
              <div class="media-image">
                <img src="imagesForForms/cued-logo copy.png" alt="Image" class="img-fluid">
                <div class="media-image-body">
                  <h2>1. CUED-In Account</h2>
                  <p> First use your mobile phone or computer to create CUED-In account and log in.</p>
                </div>
              </div>
              <div class="media-image">
                <img src="imagesForForms/briefcase.jpg" alt="Image" class="img-fluid">
                <div class="media-image-body">
                  <h2>2. Business Profile</h2>
                  <p>Create a business profile that includes pictures so students can better understand your business.</p>
                </div>
              </div>
              <div class="media-image">
                <img src="imagesForForms/teacher_help.jpg" alt="Image" class="img-fluid">
                <div class="media-image-body">
                  <h2>3. Post</h2>
                  <p>Post work-based learning opportunities and job opportunities for students in the high schools/districts of your choice.</p>
       
                </div>
              </div>
              <div class="media-image">
                <img src="imagesForForms/apprentice.jpg" alt="Image" class="img-fluid">
                <div class="media-image-body">
                  <h2>4. Inform</h2>
                  <p>Attach pdf application or web-link for students to apply to your opportunities.</p>
      
                </div>
              </div>
              <div class="media-image">
                <img src="imagesForForms/new email.png" alt="Image" class="img-fluid">
                <div class="media-image-body">
                  <h2>5. Get Notified</h2>
                  <p>As students in your listings become interested you will recieve notifications.</p>
                 <!-- <p><a href="#" class="btn btn-secondary text-white px-4"><span class="caption">Learn More</span></a></p> -->
                </div>
				</div>
            </div>
          </div>
        </div>
      </div>
    </div>




    
    <div class="site-section bg-light">
      <div class="container ">
        <div class="row mb-5">
          <div class="col-md-12">
            <h2 class="site-section-heading text-center">Additional Features</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 text-center mb-4">
            <div class="border p-4 text-with-icon">
              <span class="icon display-4 mb-4 d-block text-primary"></span>
				<i class="fa fa-handshake-o" style="font-size:48px;margin-bottom:20px;color:#81c341;" ></i>
              <h2 class="h5">Applications &amp Resumes</h2>
              <p>View student applications and resumes here.</p>
              <p><a href="#">Explore</a></p>
            </div>
          </div>
          <div class="col-md-6 text-center mb-4">
            <div class="border p-4 text-with-icon">
              <span class="icon display-4 mb-4 d-block text-primary"></span>
				<i class="fa fa-search" style="font-size:48px;margin-bottom:20px;;color:#81c341;"></i>
              <h2 class="h5">Search</h2>
              <p>Search for students to view their basic information.</p>
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
			  <p>We are located in the Shenandoah Valley of Virginia.</p><br>
<p>Email: info@cued-in.com</p>
            <p><a href="CUED-InHomeAccountForm.aspx" class="btn btn-primary rounded text-white px-4">Read More</a></p>
          </div>
          <div class="col-md-5 ml-auto">
            <div class="row">
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white">Quick Menu</h3>
                  <ul class="list-unstyled">
					  <li><a href="CUED-InHomeAccountForm.aspx">Creating Community</a></li>
					  <li><a href="CUED-InHomeAccountForm.aspx">Resources</a></li>
                      <li><a href="CUED-InHomeAccountForm.aspx">News</a></li>
                      <li><a href="CUED-InHomeAccountForm.aspx">About</a></li>
                      <li><a href="JobPostingForm.aspx">Job Postings</a></li>
                  </ul>
				  
				  
              </div>
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white"></h3>
                  <ul class="list-unstyled">
					      <li><a href="CUED-InHomeAccountForm.aspx">Student</a></li>
                          <li><a href="CUED-InHomeAccountForm.aspx">Teacher</a></li>
                          <li><a href="CUED-InHomeAccountForm.aspx">Parent</a></li>
                          <li><a href="CUED-InHomeAccountForm.aspx">School</a></li>
							<li><a href="EmployerForm.aspx">Employer</a></li>
                  </ul>
              </div>
            </div>
          </div>

          
          <div class="col-md-2">
            <div class="col-md-12"><h3 class="footer-heading mb-4 text-white">Social Icons</h3></div>
              <div class="col-md-12">
                <p>
                  <a href="https://www.facebook.com/cuedin/" class="pb-2 pr-2 pl-0"><span class="icon-facebook"></span></a>
                  <a href="https://twitter.com/cued__in" class="p-2"><span class="icon-twitter"></span></a>
                  <a href="https://www.youtube.com/channel/UCVUOkypjiJHzMEo0oSHiPNw" class="p-2"><span class="icon-youtube"></span></a>

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
</asp:Content>


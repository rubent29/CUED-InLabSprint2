<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FreeJobPostingLandingForm.aspx.cs" Inherits="FreeJobPostingLandingForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="site-wrap">
    <div class="site-navbar-wrap js-site-navbar bg-dark">
      
      <div class="container">
        <div class="site-navbar bg-light">
          <div class="py-1">
            <div class="row align-items-center">
              <div class="col-2">
                <h2 class="mb-0 site-logo"><a href="FreeCuedInHomeForm.aspx">CUED<strong>-In</strong></a></h2>
              </div>
              <div class="col-10">
                <nav class="site-navigation text-right" role="navigation">
                  <div class="container">
                    <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                    <ul class="site-menu js-clone-nav d-none d-lg-block">
                      <li class="has-children">
                        <li><a href="FreeJobPostingForm.aspx">Job Posting</a></li>
                        <li><a href="FreeCuedInHomeForm.aspx">Review Applicants</a></li>
                        <li><a href="FreeCuedInHomeForm.aspx">About</a></li>

                        <li class="has-children">
                        <a href="FreeAccountInformation.aspx">Account     </a>
                        <ul class="dropdown arrow-top">
                          <li><a href="FreeAccountInformation.aspx">Account Information</a></li>
                          <li><a href="FreeCuedInHomeForm.aspx">Applicants</a></li>
                          <li><a href="FreeJobPostingLandingForm.aspx">Job Postings</a></li>
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
                 
 
    <div class="site-blocks-cover inner-page" style="background-image: url(https://d1r2jio0ygi9fo.cloudfront.net/uploads/2017/10/group-of-students-join-hands.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="row align-items-center justify-content-center">
        <div class="col-md-7 text-center" data-aos="fade">
          <h1>Job Postings</h1>
          <span class="caption d-block text-white">Get In Touch<br />

            <asp:Button ID="CreateAnOpportunity" 
                runat="server" 
                class="btn btn-primary rounded text-white px-4"
                Text="Post a New Opportunity" OnClick="CreateAnOpportunity_Click" />
               &nbsp;

            <asp:Button ID="ViewYourPosting" 
                runat="server" 
                class="btn btn-primary rounded text-white px-4"
                Text="View Your Posting" 
                OnClick="ViewYourPosting_Click" />
            </span></div>
      </div>
    </div>  


   <footer class="site-footer">
      <div class="container">
        
        <div class="row">
          <div class="col-md-4">
            <h3 class="footer-heading mb-4 text-white">About</h3>
			  <p>We are located in the Shenandoah Valley of Virginia.</p><br>
          </div>
          <div class="col-md-5 ml-auto">
            <div class="row">
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white">Quick Menu</h3>
               <ul class="list-unstyled">
					 <li><a href="FreeJobPostingLandingForm.aspx">Job Posting</a></li>
                        <li><a href="FreeCuedInHomeForm.aspx">Review Applicants</a></li>
                        <li><a href="FreeCuedInHomeForm.aspx">About</a></li>

                        <li class="has-children">
                        <a href="FreeAccountInformation.aspx">Account     </a>
                         <li><a href="#"></a></li>
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





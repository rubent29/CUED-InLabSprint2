<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SubscriptionTierForm.aspx.cs" Inherits="css_SubscriptionTierForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


  <!-- Libraries CSS Files -->
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.theme.default.min.css" rel="stylesheet">
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/modal-video/css/modal-video.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="cssSubscription/style.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: eStartup
    Theme URL: https://bootstrapmade.com/estartup-bootstrap-landing-page-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= --> 

    
<%--  <body style="background-image: url('images/bg.jpg');">--%>
  
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
                <h2 class="mb-0 site-logo"><a href="MasterPageForm.aspx">CUED<strong>-In</strong></a></h2>
              </div>
              <div class="col-10">
                <nav class="site-navigation text-right" role="navigation">
                  <div class="container">
                    <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                  <ul class="site-menu js-clone-nav d-none d-lg-block">

                        <li><a href="MasterPageForm.aspx">Creating Community</a></li>
						<li><a href="MasterPageForm.aspx">Resources</a></li>
                        <li><a href="MasterPageForm.aspx">News</a></li>
                        <li><a href="AboutUsForMasterPageForm.aspx">About</a></li>
                        <li><a href="LoginForm.aspx">Log In</a></li>

					 
					  </ul> 
                  </div>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
<%-- 
    <div class="site-blocks-cover inner-page" style="background-image: url(images/hero_b1_1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="row align-items-center justify-content-center">
        <div class="col-md-7 text-center" data-aos="fade">
          <h1>Subscription Tiers</h1>
          <span class="caption d-block text-white"></span>
        </div>
      </div>
    </div>  --%>

    <div class="pt-5 bg-light text-center">

        <h1 style="color:#102b3f;"> Subscription Levels</h1>
<%--      <div class="container">--%>
<%--        <div class="row">--%>
       
<%--          <div class="col-md-12 col-lg-8 mb-5">--%>
    <section id="pricing" class="padd-section text-center wow fadeInUp">

    <div class="container">
      <div class="section-title text-center">

      </div>
    </div>

    <div class="container">
      <div class="row">

        <div class="col-md-6 col-lg-6">
          <div class="block-pricing">
            <div class="table">
              <h4>Free Tier</h4>
              <h2>$0.00/Mo.</h2>
              <ul class="list-unstyled">
                <li><b>4 GB</b> Ram</li>
                <li><b>7/24</b> Tech Support</li>
                <li><b>40 GB</b> SSD Cloud Storage</li>
                <li>Monthly Backups</li>
                <li>Palo Protection</li>
              </ul>
                <br />
              <div class="table_btn">
                    <asp:Button 
                        ID="FreeTierButton" 
                        class="btn btn-primary rounded px-4"
                        runat="server" 
                        Text="Try Now" OnClick="FreeTierButton_Click1" />
<%--                <a href="#" class="btn"><i class="fa fa-shopping-cart"></i> Try Now</a>--%>
              </div>
            </div>
          </div>
        </div>

        <div class="col-md-6 col-lg-6">
          <div class="block-pricing">
            <div class="table">
              <h4>Premium Tier</h4>
              <h2>$14.99/Mo.</h2>
              <ul class="list-unstyled">
                <li><b>4 GB</b> Ram</li>
                <li><b>7/24</b> Tech Support</li>
                <li><b>40 GB</b> SSD Cloud Storage</li>
                <li>Monthly Backups</li>
                <li>Palo Protection</li>
              </ul>
          
                <br />
              <div class="table_btn">
                <asp:Button 
                        ID="PremiumTierButton"  
                        runat="server"
                        class="btn btn-primary rounded px-4"
                        Text="Subscribe Now" OnClick="PremiumTierButton_Click" />
<%--                <a href="#" class="btn"><i class="fa fa-shopping-cart"></i> Buy Now</a>--%>
              </div>
            </div>
          </div>
        </div>
     
 
      </div>
    </div>
    <div id="donateHead"><h3> Donate to your community</h3>
        <div id ="donatePad">
    <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
    <input type="hidden" name="cmd" value="_s-xclick" />
    <input type="hidden" name="hosted_button_id" value="N6PECLPGARNRY" />
    <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" title="PayPal - The safer, easier way to pay online!" alt="Donate with PayPal button" />
    <img alt="" border="0" src="https://www.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1" />
    </form>
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
                  <ul class="list-unstyled">
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                  </ul>
              </div>
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white"></h3>
                  <ul class="list-unstyled">
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                  </ul>
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



</asp:Content>


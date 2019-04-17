﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AccountInformationForm.aspx.cs" Inherits="AccountInformationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -webkit-box-flex: 0;
            -ms-flex: 0 0 16.66667%;
            flex: 0 0 16.66667%;
            max-width: 16.66667%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
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
  <script runat="server">
       

    </script>
<div class="site-wrap">
    <div class="site-navbar-wrap js-site-navbar bg-dark">
      
      <div class="container">
        <div class="site-navbar bg-light">
          <div class="py-1">
            <div class="row align-items-center">
              <div class="auto-style1">
              <h2 class="mb-0 site-logo"><a href="Cued-InHomeAccountForm.aspx">CUED<strong>-In</strong></a></h2>
              </div>
              <div class="col-10">
                <nav class="site-navigation text-right" role="navigation">
                  <div class="container">
                    <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                   
                    <ul class="site-menu js-clone-nav d-none d-lg-block">

                        <li class="has-children">
                        <a href="JobPostingForm.aspx">Job Postings</a>
                        <ul class="dropdown arrow-top">
                          <li><a href="JobPostingForm.aspx">Post an Opportunity</a></li>
                          <li><a href="ViewPostingForm.aspx">View Your Postings</a></li>
                        </ul>
						<li><a href="SchoolDemographicsForm.aspx">School Demographics</a></li>
                        <li><a href="CUED-InHomeAccountForm.aspx">Review Applicants</a></li>
                        <li><a href="CUED-InHomeAccountForm.aspx">About</a></li>

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
  


    <div class="py-5 bg-light">
      <div class="container">
        <div class="row">
       
          <div class="col-md-12 col-lg-8 mb-5">
   
  <div class="form-group">
  </div>				  
  <div class="form-group">
    <label for="FirstName">First Name</label>
  
      <asp:Label ID="FirstName" runat="server" Text="Label"></asp:Label>

  </div>
<div class="form-group">
    <label for="LastName">Last Name</label>
 
    <asp:Label ID="LastName" runat="server" Text="Label"></asp:Label>

  </div>

<div class="form-group">
    <label for="CompanyName">Company Name</label>
    <asp:Label ID="CompanyName" runat="server" Text="Label"></asp:Label>

 </div>

<div class="form-group">
    <label for="CompanyEmail">Company Email</label>
    <asp:Label ID="CompanyEmail" runat="server" Text="Label"></asp:Label>

 </div>
              
<div class="form-group">
    <label for="StreetAddress">Street Address</label>
    <asp:Label ID="StreetAddress" runat="server" Text="Label"></asp:Label>

  </div>

	<div class="form-group">
    <label for="City">City</label>

        <asp:Label ID="City" runat="server" Text="Label"></asp:Label>

    </div>

	<div class="form-group">
    <label for="State">State</label>
     
        <asp:Label ID="State" runat="server" Text="Label"></asp:Label>

  </div>

	<div class="form-group">
    <label for="ZipCodeInput">Zipcode</label>
     
        <asp:Label ID="ZipCode" runat="server" Text="Label"></asp:Label>
  </div>  

  <div class="form-group">
    <label for="Country">Country</label>
   <asp:Label ID="Country" runat="server" Text="Label"></asp:Label>

  </div>

  <div class="form-group">
    <label for="Question">Security Question</label>
      <asp:Label ID="Question" runat="server" Text="Label"></asp:Label>
  </div>

   <br />
              <asp:Button ID="EditButton" runat="server" Text="Edit Information" OnClick="EditButton_Click" />
              
          </div>

          <div class="col-lg-4">
            <div class="p-4 mb-3 bg-white">
              <h3 class="h5 text-black mb-3">Contact Info</h3>
              <p class="mb-0 font-weight-bold">Address</p>
              <p class="mb-4">320 South Main Street Suite 2E, Harrisonburg, Virginia, USA</p>

              <p class="mb-0 font-weight-bold">Phone</p>
              <p class="mb-4"><a href="#">+1 232 3235 324</a></p>

              <p class="mb-0 font-weight-bold">Email Address</p>
              <p class="mb-0"><a href="#">info@cued-in.com</a></p>

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
            <p><a href="MasterPageForm.aspx" class="btn btn-primary rounded text-white px-4">Read More</a></p>
          </div>
          <div class="col-md-5 ml-auto">
            <div class="row">
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white">Quick Menu</h3>
                 <ul class="list-unstyled">
					  <li><a href="MasterPageForm.aspx">Creating Community</a></li>
					  <li><a href="MasterPageForm.aspx">Resources</a></li>
                      <li><a href="MasterPageForm.aspx">News</a></li>
                      <li><a href="AboutUsForMasterPageForm.aspx">About</a></li>
                  </ul>
				  
				  
				  
              </div>
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white"></h3>
                  <ul class="list-unstyled">
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


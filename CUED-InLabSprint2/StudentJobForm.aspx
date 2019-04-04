﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentJobForm.aspx.cs" Inherits="StudentJobForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
    
  </head>
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

                        <li><a href="StudentJobForm.aspx">Job Posting</a></li>

                        <li><a href="AboutUsForm.aspx">About</a></li>

                        <li class="has-children">
                        <a href="CUED-InHomeAccountForm.aspx">Account     </a>
                        <ul class="dropdown arrow-top">
                          <li><a href="CUED-InHomeAccountForm.aspx">Account Information</a></li>

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
  
 
    <div class="site-blocks-cover inner-page" style="background-image: url();" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="row align-items-center justify-content-center">
        <div class="col-md-7 text-center" data-aos="fade">
          <h1>View Opportunities</h1>
        </div>
      </div>
    </div>  

    <div class="py-5 bg-light">
      <div class="container">
        <div class="row">
       
          <div class="col-md-12 col-lg-8 mb-5">

<form>
<div class="form-group">
    </div>				  
<div class="form-group">
    </div>
<div class="form-group">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AwsDataSource" Height="150px" Width="16px" DataKeyNames="PostingID,EmployerID1">
        <Columns>
            <asp:BoundField DataField="EmployerID" HeaderText="EmployerID" SortExpression="EmployerID" />







            <asp:BoundField DataField="Deadline" HeaderText="Deadline" SortExpression="Deadline" />
            <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
            <asp:BoundField DataField="JobDescription" HeaderText="JobDescription" SortExpression="JobDescription" />
            <asp:BoundField DataField="PayStatus" HeaderText="PayStatus" SortExpression="PayStatus" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
            <asp:BoundField DataField="JobType" HeaderText="JobType" SortExpression="JobType" />
            <asp:BoundField DataField="JobTitle" HeaderText="JobTitle" SortExpression="JobTitle" />
            <asp:BoundField DataField="PostingID" HeaderText="PostingID" InsertVisible="False" ReadOnly="True" SortExpression="PostingID" />








        </Columns>
    </asp:GridView>
    </div>
<div class="form-group">
    <asp:SqlDataSource 
        ID="AwsDataSource" 
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:CuedInConnectionString %>" 
        SelectCommand="SELECT        JobPosting.EmployerID, JobPosting.Deadline, JobPosting.DateCreated, JobPosting.JobDescription, JobPosting.PayStatus, JobPosting.Location, JobPosting.CompanyName, JobPosting.JobType, 
                         JobPosting.JobTitle, JobPosting.PostingID, Employer.EmployerID AS EmployerID, Employer.CompanyName AS CompanyName
FROM            JobPosting INNER JOIN
                         Employer ON JobPosting.EmployerID = Employer.EmployerID ">
    </asp:SqlDataSource>
    </div>
<div class="form-group">
     </div>
<div class="form-group">
     </div>
<div class="form-group">
    </div>
<div class="form-group">
    </div>	


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
			  <p>We are located in the Shenandoah Valley of Virginia.</p><br>
<p>Email: info@cued-in.com</p>
            <p><a href="CUED-InHomeAccountForm.aspx" class="btn btn-primary rounded text-white px-4">Read More</a></p>
          </div>
          <div class="col-md-5 ml-auto">
            <div class="row">
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white">Quick Menu</h3>
             <ul class="list-unstyled">
					 <li><a href="CUED-InHomeAccountForm.aspx">Job Posting</a></li>
						<li><a href="CUED-InHomeAccountForm.aspx">School Demographics</a></li>
                        <li><a href="CUED-InHomeAccountForm.aspx">Review Applicants</a></li>
                        <li><a href="AboutUsForm.aspx">About</a></li>

                        <li class="has-children">
                        <a href="CUED-InHomeAccountForm.aspx">Account     </a>
                        <ul class="dropdown arrow-top">         
                            <li><a href="MasterPageForm.aspx">Log Out</a></li>
                        </ul>
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

</html>
</asp:Content>

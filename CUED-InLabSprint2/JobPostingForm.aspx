<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JobPostingForm.aspx.cs" Inherits="JobPostingForm" %>

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
                <h2 class="mb-0 site-logo"><a href="CUED-InHomeForm.aspx">CUED - <strong>In</strong></a></h2>
              </div>
              <div class="col-10">
                <nav class="site-navigation text-right" role="navigation">
                  <div class="container">
                    <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                    <ul class="site-menu js-clone-nav d-none d-lg-block">
                      <li class="has-children">
                        <a href="program.html">Creating Community</a>
                        <ul class="dropdown arrow-top">
                          <li><a href="CUED-InHomeForm.aspx">Student</a></li>
                          <li><a href="CUED-InHomeForm.aspx">Teacher</a></li>
                          <li><a href="CUED-InHomeForm.aspx">Parent</a></li>
                            <li><a href="CUED-InHomeForm.aspx">School</a></li>
							<li><a href="EmployerForm.aspx">Employer</a></li>
                        </ul>
						<li><a href="CUED-InHomeForm.aspx">Resources</a></li>
                      <li><a href="CUED-InHomeForm.aspx">News</a></li>
                      <li><a href="AboutUsForm.aspx.aspx">About</a></li>
                      <li><a href="JobPostingForm.aspx">Job Postings</a></li>
					  </ul>  
                  </div>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
 
    <div class="site-blocks-cover inner-page" style="background-image: url(imagesForForms/teacher_help.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="row align-items-center justify-content-center">
        <div class="col-md-7 text-center" data-aos="fade">
          <h1>Post an Opportunity</h1>
        </div>
      </div>
    </div>  

    <div class="py-5 bg-light">
      <div class="container">
        <div class="row">
       
          <div class="col-md-12 col-lg-8 mb-5">

            <!--<form action="#" class="p-5 bg-white">

              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="FirstName">First Name</label>
                  <input type="text" id="FirstName" class="form-control" placeholder="First Name">
                </div>
              </div>
			  <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="LastName">Last Name</label>
                  <input type="text" id="LastName" class="form-control" placeholder="Last Name">
                </div>
              </div>	
              <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold" for="CompanyName">Company Name</label>
                  <input type="email" id="CompanyName" class="form-control" placeholder="Company Name">
                </div>
              </div>


              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="CompanyEmail">Company Email</label>
                  <input type="text" id="CompanyEmail" class="form-control" placeholder="Company Email">
                </div>
              </div>
			<div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="CompanyEmail">Company Email</label>
                  <input type="text" id="CompanyEmail" class="form-control" placeholder="Company Email">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold" for="message">Message</label> 
                  <textarea name="message" id="message" cols="30" rows="5" class="form-control" placeholder="Say hello to us"></textarea>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Send Message" class="btn btn-primary text-white px-4 py-2">
                </div>
              </div>

  
            </form> -->
			  <form>
  <div class="form-group">
  </div>				  
  <div class="form-group">
    <label for="JobTitle">Job Title</label>
      <br />
    <asp:TextBox 
        ID="JobTitle" 
        runat="server"
        placeholder="Job Title"
        Width="727px">
    </asp:TextBox>

  </div>
<div class="form-group">
    <label for="JobType">Job Type</label>
    <br />
                <asp:DropDownList ID="JobType" runat="server">
                    <asp:ListItem>Part-Time</asp:ListItem>
                    <asp:ListItem>Full-Time</asp:ListItem>
                    <asp:ListItem>Internship</asp:ListItem>
                    <asp:ListItem>Seasonal</asp:ListItem>
                </asp:DropDownList>

  </div>
<div class="form-group">
    <label for="CompanyName">Company Name</label>
    <br />
    <asp:TextBox 
        ID="CompanyName" 
        runat="server"
        placeholder="Company Name"
        Width="727px">
    </asp:TextBox>

 </div>	
	<div class="form-group">
    <label for="City">City</label>
        <br />
    <asp:TextBox 
        ID="City" 
        runat="server"
        placeholder="City"
        Width="727px">
    </asp:TextBox>

    </div>
	<div class="form-group">
    <label for="State">State</label>
        <br />
    <asp:TextBox 
        ID="State" 
        runat="server"
        placeholder="State"
        Width="727px">
    </asp:TextBox>

  </div>
	<div class="form-group">
    <label for="PayStatus">PayStatus</label>
        <br />
                <asp:DropDownList ID="PayStatus" runat="server">
                    <asp:ListItem>Unpaid</asp:ListItem>
                    <asp:ListItem>Paid</asp:ListItem>
                </asp:DropDownList>

  </div>  
<div class="form-group">
    <label for="JobDescription">Job Description</label>
        <br />
    <asp:TextBox 
        ID="JobDescription" 
        runat="server"
        placeholder="Brief Job Description"
        Width="727px">
    </asp:TextBox>

        </div>
	<div class="form-group">
    <label for="Deadline">Deadline</label>
        <br />
    <asp:TextBox 
        ID="Deadline" 
        runat="server"
        placeholder="MM/DD/YYYY"
        Width="727px">
    </asp:TextBox>
          </div>

<div class="form-group">
  </div>
<div class="form-group">
  </div>
 <div class="form-group">
  </div>
 <div class="form-group">
  </div>	
<%-- <p><a href="account.html" class="btn btn-primary rounded text-white px-4">Submit</a></p>--%>

<asp:Button 
    ID="Insert_Button" 
    class="btn btn-primary rounded text-white px-4"
    runat="server" Text="Submit" OnClick="Insert_Button_Click" />

&nbsp;    
<asp:Button 
    ID="Populate" 
    class="btn btn-primary rounded text-white px-4"
    runat="server" Text="Populate" OnClick="Populate_Button_Click" />
</form>

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
            <p><a href="event.html" class="btn btn-primary rounded text-white px-4">Read More</a></p>
          </div>
          <div class="col-md-5 ml-auto">
            <div class="row">
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white">Quick Menu</h3>
                  <ul class="list-unstyled">
					  <li><a href="CUED-InHomeForm.aspx">Creating Community</a></li>
					  <li><a href="CUED-InHomeForm.aspx">Resources</a></li>
                      <li><a href="CUED-InHomeForm.aspx">News</a></li>
                      <li><a href="AboutUsForm.aspx.aspx">About</a></li>
                      <li><a href="JobPostingForm.aspx">Job Postings</a></li>
                  </ul>
				  
				  
              </div>
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white"></h3>
                  <ul class="list-unstyled">
					      <li><a href="program.html">Student</a></li>
                          <li><a href="program.html">Teacher</a></li>
                          <li><a href="program.html">Parent</a></li>
                          <li><a href="program.html">School</a></li>
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

  </body>

</html>

</asp:Content>




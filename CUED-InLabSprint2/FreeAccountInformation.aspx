<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FreeAccountInformation.aspx.cs" Inherits="FreeAccountInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style type="text/css">
        .auto-style4 {
            width: 3px;
        }
        .auto-style5 {
            height: 29px;
            width: 3px;
        }
        .auto-style6 {
            width: 63%;
            height: 560px;
        }
        .auto-style9 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -webkit-box-flex: 0;
            -ms-flex: 0 0 33.33333%;
            flex: 0 0 33.33333%;
            max-width: 33.33333%;
            left: 881px;
            top: -503px;
            margin-top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style10 {
            width: 189px;
        }
        .auto-style11 {
            width: 675px;
        }
        .auto-style12 {
            height: 29px;
            width: 189px;
        }
        .auto-style13 {
            height: 29px;
            width: 675px;
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
    
  </head>
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
                <h2 class="mb-0 site-logo"><a href="FreeCuedInHomeForm.aspx">CUED<strong>-In</strong></a></h2>
              </div>
              <div class="col-10">
                <nav class="site-navigation text-right" role="navigation">
                  <div class="container">
                    <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                  <ul class="site-menu js-clone-nav d-none d-lg-block">

                        <li><a href="FreeJobPostingLandingForm.aspx">Job Posting</a></li>
                        <li><a href="FreeCuedInHomeForm.aspx">Review Applicants</a></li>
                        <li><a href="AboutUsForm.aspx">About</a></li>

                        <li class="has-children">
                        <a href="FreeAccountInformation.aspx">Account     </a>
                        <ul class="dropdown arrow-top">
                          <li><a href="FreeAccountInformation.aspx">Account Information</a></li>
                          <li><a href="FreeCuedInHomeForm.aspx">Applicants</a></li>
                          <li><a href="FreeCuedInHomeForm.aspx">Job Postings</a></li>
                          <li><a href="FreeCuedInHomeForm.aspx">Subscription</a></li>
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

                <table class="auto-style6">
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style10">
            </td>
            <td class="auto-style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="FNLabel" runat="server" Text="FirstName: "></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:Label ID="FirstNameLabel" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                </td>
            <td class="auto-style12">
                <asp:Label ID="LNLabel" runat="server" Text="Last Name:"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                </td>
            <td class="auto-style12">
                <asp:Label ID="CompanyNameLabel" runat="server" Text="CompanyName: "></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:Label ID="CompNameLabel" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label27" runat="server" Text="Company Email: "></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:Label ID="CompEmailLabel" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                </td>
            <td class="auto-style12">
                <asp:Label ID="Label7" runat="server" Text="StreetAddress: "></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label8" runat="server" Text="City: "></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                </td>
            <td class="auto-style12">
                <asp:Label ID="Label9" runat="server" Text="State: "></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label10" runat="server" Text="Country: "></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label11" runat="server" Text="Zip Code: "></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">



                &nbsp;</td>
            <td class="auto-style10">
                <%--<asp:Label ID="Label14" runat="server" Text="Security Question: "></asp:Label>--%>
            </td>
            <td class="auto-style11">
              <%--  <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>--%>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style10">
                <%--<asp:Label ID="Label29" runat="server" Text="Security Answer: "></asp:Label>--%>
            </td>
            <td class="auto-style11">
                <%--<asp:Label ID="Label30" runat="server" Text="Label"></asp:Label>--%>



    <asp:Button 
        ID="LoginAgainButton" 
        runat="server" 
        Text="Log In Again to Edit" 
        OnClick="LoginAgainButton_Click" />


               
            </td>
        </tr>
    </table>
                         <div class="auto-style9">
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
                <h3 class="footer-heading mb-4 text-white">Program</h3>
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

  </body>


</asp:Content>


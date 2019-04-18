<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CommonAppForm.aspx.cs" Inherits="CommonAppForme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
        }
        .auto-style2 {
            margin-bottom: 1rem;
            text-align: left;
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
                <h2 class="mb-0 site-logo"><a href="CUED-InHomeAccountForm.aspx">CUED<strong>-In</strong></a></h2>
              </div>
              <div class="col-10">
                <nav class="site-navigation text-right" role="navigation">
                  <div class="container">
                    <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                               <ul class="site-menu js-clone-nav d-none d-lg-block">

                    <li class="has-children">
                        <li><a href="StudentJobForm.aspx">View Job Posting</a></li>
                        <li><a href="CommonAppForm.aspx">Common Application</a></li>
                        <li><a href="StudentLandingForm.aspx">About</a></li>

                    <li class="has-children">
                        <a href="StudentLandingForm.aspx">Account     </a>
                        <ul class="dropdown arrow-top">               
                            <li><a href="StudentAccountInformationForm.aspx">Account Information</a></li>
                            <li><a href="StudentJobForm.aspx">Job Postings</a></li>
                            <li><a href="MasterPageForm.aspx">Log Out</a></li>
                        </ul>
                         <li><a href="#"></a></li>
					  </ul>

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
       
          <div class="auto-style1">
     <div class="form-group">
  </div>				  
  <div class="auto-style2">
    <label for="SchoolName">

      <div class="text-left">
          School Name</div>
      </label>
      &nbsp;<br />
    <asp:TextBox 
        ID="SchoolName" 
        runat="server"
        placeholder="School Name"
        Width="727px">
    </asp:TextBox>

      <asp:RequiredFieldValidator 
          ID="SchoolNameValidator" 
          runat="server" 
          ErrorMessage="Required" 
          ControlToValidate="SchoolName" 
          ForeColor="Red" ValidationGroup="SubmitGroup"></asp:RequiredFieldValidator>

 
  </div>
   <div class="auto-style2">
    <label for="Age"> Date of Birth</label>
        <br />
    <asp:TextBox 
        ID="Age" 
        runat="server"
        placeholder="MM/DD/YYYY"
        Width="131px"></asp:TextBox>
          </div>
 <div class="auto-style2">
    <label for="GPA">GPA</label>
        <br />
    <asp:TextBox 
        ID="GPA" 
        runat="server"
        placeholder="0.0"
        Width="128px"></asp:TextBox>
          </div>


  </div>
<div class="form-group">
    <label for="Experience">Experience (if none enter n/a)</label>
    <br />
    <asp:TextBox 
        ID="Experience" 
        runat="server"
        placeholder="Experience"
        Width="431px" Height="157px"></asp:TextBox>

    <asp:RequiredFieldValidator 
        ID="ExperienceValidator" 
        runat="server" 
        ErrorMessage="Required" 
        ForeColor="Red" 
        ValidationGroup="SubmitGroup" 
        ControlToValidate="Experience"></asp:RequiredFieldValidator>

 </div>

            <div class="form-group">
    <label for="Skills">Skills (if none enter n/a)</label>
    <br />
    <asp:TextBox 
        ID="Skills" 
        runat="server"
        placeholder="Skills"
        Width="431px" Height="157px"></asp:TextBox>

    <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator1" 
        runat="server" 
        ErrorMessage="Required" 
        ForeColor="Red" 
        ValidationGroup="SubmitGroup" 
        ControlToValidate="Skills"></asp:RequiredFieldValidator>
        <br />

 </div>
<div class="form-group">
    <label for="StudentEmail">Email (that businesses may contact you at)</label>

    <br />

    <asp:TextBox 
        ID="StudentEmail" 
        runat="server"
        placeholder="Student Email"
        Width="727px">
    </asp:TextBox>

    <asp:Label 
        ID="StudentEmailLabel" 
        runat="server"
        Text="">

    </asp:Label>

    <asp:RequiredFieldValidator 
        ID="EmailValidator" 
        runat="server" 
        ErrorMessage="Required" 
        ValidationGroup="SubmitGroup" 
        ControlToValidate="StudentEmail" 
        ForeColor="Red">

    </asp:RequiredFieldValidator>

    <asp:RegularExpressionValidator ID="EmailFormatValidator" 
        runat="server" 
        ErrorMessage="Use a Valid Email" 
        ControlToValidate="StudentEmail" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        ForeColor="Red">

    </asp:RegularExpressionValidator>

 </div>	

  </div>
          <br />

          <asp:Button 
    ID="Insert_Button" 
     class="btn btn-primary rounded px-4"
    runat="server" Text="Submit" OnClick="Insert_Button_Click"  ValidationGroup="SubmitGroup" />

           &nbsp   
          <asp:Button 
    ID="Populate_Button" 
     class="btn btn-primary rounded px-4"
    runat="server" Text="Populate" OnClick="Populate_Button_Click" />


          </div>


<footer class="site-footer">
      <div class="container">
        

        <div class="row">
          <div class="col-md-4">
          </div>
          <div class="col-md-5 ml-auto">
            <div class="row">
              <div class="col-md-6">



  
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

              
</asp:Content>


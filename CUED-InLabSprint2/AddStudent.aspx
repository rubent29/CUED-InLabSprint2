<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="AddStudent1" %>

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
  
 
    <div class="site-blocks-cover inner-page" style="background-image: url(https://d1r2jio0ygi9fo.cloudfront.net/uploads/2017/10/group-of-students-join-hands.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="row align-items-center justify-content-center">
        <div class="col-md-7 text-center" data-aos="fade">
          <h1>Create student profile</h1>
          <span class="caption d-block text-white">Find Your Career</span>
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
    <label for="FirstName">First Name</label>
      <br />
    <asp:TextBox 
        ID="FirstName" 
        runat="server"
        placeholder="First Name"
        Width="727px">
    </asp:TextBox>

      <asp:RequiredFieldValidator 
          ID="FirstNameValidator" 
          runat="server" 
          ErrorMessage="Required" 
          ControlToValidate="FirstName" 
          ForeColor="Red" ValidationGroup="SubmitGroup"></asp:RequiredFieldValidator>

  </div>
<div class="form-group">
    <label for="LastName">Last Name</label>
    <br />
    <asp:TextBox 
        ID="LastName" 
        runat="server"
        placeholder="Last Name"
        Width="727px">
    </asp:TextBox>

    <asp:RequiredFieldValidator 
        ID="LastNameValidator" 
        runat="server" 
        ErrorMessage="Required" 
        ForeColor="Red" 
        ValidationGroup="SubmitGroup" 
        ControlToValidate="LastName"></asp:RequiredFieldValidator>

  </div>
<div class="form-group">
    <label for="CompanyName">Middle Name</label>
    <br />
    <asp:TextBox 
        ID="MiddleName" 
        runat="server"
        placeholder="Company Name"
        Width="727px">
    </asp:TextBox>

    <asp:RequiredFieldValidator 
        ID="CompanyNameValidator" 
        runat="server" 
        ErrorMessage="Required" 
        ForeColor="Red" 
        ValidationGroup="SubmitGroup" 
        ControlToValidate="MiddleName"></asp:RequiredFieldValidator>

 </div>
<div class="form-group">
    <label for="CompanyEmail">Email</label>
    <br />
    <asp:TextBox 
        ID="StudentEmail" 
        runat="server"
        placeholder="Company Email"
        Width="727px">
    </asp:TextBox>

    <asp:Label 
        ID="EmailLabel" 
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
<div class="form-group">
    <label for="StreetAddress">Street Address</label>
    <br />
    <asp:TextBox 
        ID="StreetAddress" 
        runat="server"
        placeholder="Street Address"
        Width="727px">
    </asp:TextBox>

    <asp:RequiredFieldValidator 
        ID="StreetValidator" 
        runat="server" 
        ErrorMessage="Required" 
        ForeColor="Red" 
        ControlToValidate="StreetAddress" 
        ValidationGroup="SubmitGroup">

    </asp:RequiredFieldValidator>

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

        <asp:RequiredFieldValidator 
            ID="CityValidator" 
            runat="server" 
            ControlToValidate="City" 
            ErrorMessage="Required" 
            ForeColor="Red" 
            ValidationGroup="SubmitGroup">

        </asp:RequiredFieldValidator>

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

        <asp:RequiredFieldValidator 
            ID="StateValidator" 
            runat="server" 
            ErrorMessage="Required" 
            ControlToValidate="State" 
            ForeColor="Red" ValidationGroup="SubmitGroup">

        </asp:RequiredFieldValidator>

  </div>
	<div class="form-group">
    <label for="ZipCodeInput">Zipcode</label>
        <br />
    <asp:TextBox 
        ID="ZipCode" 
        runat="server"
        placeholder="Zip Code"
        Width="727px">
    </asp:TextBox>

        <asp:RequiredFieldValidator 
            ID="ZipValidator" 
            runat="server" 
            ControlToValidate="ZipCode" 
            ErrorMessage="Required" 
            ForeColor="Red" 
            ValidationGroup="SubmitGroup">

        </asp:RequiredFieldValidator>

  </div>  
  <div class="form-group">
    <label for="countrySelect">Country</label>&nbsp;
      <br />
      <asp:DropDownList ID="Country" runat="server">
          <asp:ListItem>United States</asp:ListItem>
          <asp:ListItem>Canada</asp:ListItem>
          <asp:ListItem>Mexico</asp:ListItem>
      </asp:DropDownList>

        </div>

    <div class="form-group">
        <label for="SchoolSelect">School
            <br />
            <asp:DropDownList ID="School" runat="server" DataSourceID="SqlDataSource1" DataTextField="SchoolName" DataValueField="SchoolID">
        </asp:DropDownList>
        </label>&nbsp;
        <br />
        <label for="Select Interests">Select Job Interests</label>&nbsp;
      <br />
        <asp:ListBox ID="StudentInterest" runat="server" DataSourceID="SqlDataSource2" DataTextField="IndustryArea" DataValueField="IndustryID" SelectionMode="Multiple"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CuedInConnectionString2 %>" SelectCommand="SELECT [SchoolName], [SchoolID] FROM [School]"></asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CuedInConnectionString %>" SelectCommand="SELECT [IndustryArea], [IndustryID] FROM [Industry]"></asp:SqlDataSource>
        <br />







    </div>



<div class="form-group">
    Date of Birth
        <br />
    <asp:TextBox 
        ID="DateOfBirth" 
        runat="server"
        placeholder="Date of Birth (MM/DD/YYYY)"
        Width="727px">
    </asp:TextBox>

        <asp:RequiredFieldValidator 
            ID="DoBValidator" 
            runat="server" 
            ControlToValidate="ZipCode" 
            ErrorMessage="Required" 
            ForeColor="Red" 
            ValidationGroup="SubmitGroup">

        </asp:RequiredFieldValidator>

  </div>
 <div class="form-group">
	<div class="form-group">
    <label for="Password">Password</label>
        <br />
    <asp:TextBox 
        ID="PasswordOne" 
        runat="server"
        placeholder="Enter Password"
        Type ="Password"
        Width="727px">
    </asp:TextBox>
          
        
        
        
        
        <asp:RequiredFieldValidator ID="Password1Validator" 
            runat="server" 
            ErrorMessage="Required" 
            ControlToValidate="PasswordOne" 
            ForeColor="Red" 
            ValidationGroup="SubmitGroup">

        </asp:RequiredFieldValidator>
        
        <asp:RegularExpressionValidator 
              ID="PasswordValidator" 
              runat="server" 
              ErrorMessage="Password must be 8-10 characters long with at least one numeric,  alphabet & 1 special character." 
              ForeColor="Red" 
              Display="Dynamic" 
              ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&*()_+}{&quot;:;'?/>.<,])(?!.*\s).*$" 
              ControlToValidate="PasswordOne">

          </asp:RegularExpressionValidator>
          </div>
	<div class="form-group">
    <label for="Password">Confirm Password</label>
        <br />
    <asp:TextBox 
        ID="PasswordTwo" 
        runat="server"
        placeholder="Confirm Password"
        Type ="Password"
        Width="727px">
    </asp:TextBox>
        <asp:RequiredFieldValidator 
            ID="Password2Validator" 
            runat="server" 
            ControlToValidate="PasswordTwo" 
            ErrorMessage="Required" 
            ForeColor="Red" 
            ValidationGroup="SubmitGroup">

        </asp:RequiredFieldValidator>
        <asp:CompareValidator 
            ID="Password2MatchValidator"
            runat="server" 
            ControlToCompare="PasswordOne" 
            ControlToValidate="PasswordTwo" 
            Display="Dynamic" 
            ErrorMessage="Password Must Match" 
            ForeColor="Red">

        </asp:CompareValidator>
 </div>
<div class="form-group">
  </div>
  </div>	


<asp:Button 
    ID="Insert_Button" 
    class="btn btn-primary rounded text-white px-4"
    runat="server" Text="Submit" OnClick="Insert_Button_Click"  ValidationGroup="SubmitGroup" />

&nbsp;    
<asp:Button 
    ID="Populate" 
    class="btn btn-primary rounded text-white px-4"
    runat="server" Text="Populate" OnClick="Populate_Button_Click" />
</form>
              
              &nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label 
                  ID="labelStatus" 
                  runat="server" 
                  Text="">

              </asp:Label>

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




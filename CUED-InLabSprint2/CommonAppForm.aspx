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
    <div class="site-wrap">
    <div class="site-navbar-wrap js-site-navbar bg-dark">
      
      <div class="container">
        <div class="site-navbar bg-light">
          <div class="py-1">
            <div class="row align-items-center">
              <div class="col-2">
             <h2 class="mb-0 site-logo"><a href="StudentLandingForm.aspx">CUED<strong>-In</strong></a></h2>
              </div>
              <div class="col-10">
                <nav class="site-navigation text-right" role="navigation">
                    <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>
                    <ul class="site-menu js-clone-nav d-none d-lg-block">
                      <li class="has-children">
                        <li><a href="StudentJobForm.aspx">View Job Posting</a></li>
                        <li><a href="CommonAppForm.aspx">Common Application</a></li>
                        <li><a href="StudentLandingForm.aspx">About</a></li>

                    <li class="has-children">
                        <a href="StudentLandingForm.aspx">Account     </a>
                        <ul class="dropdown arrow-top">               
                            <li><a href="StudentLandingForm.aspx">Account Information</a></li>
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
        placeholder=""
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
    <label for="Age"> Date of Birth (if prefer not to answer please enter 0)</label>
        <br />
    <asp:TextBox 
        ID="Age" 
        runat="server"
        placeholder="MM/DD/YYYY"
        Width="131px"></asp:TextBox>
          </div>
 <div class="auto-style2">
    <label for="GPA">Minimum GPA (if none please enter 0.0)</label>
        <br />
    <asp:TextBox 
        ID="GPA" 
        runat="server"
        placeholder="0.0"
        Width="128px"></asp:TextBox>
          </div>
<%--<div class="form-group">
  </div>
 <div class="form-group">
  </div>
 <div class="form-group">
  </div>--%>

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

                <asp:FileUpload ID="FileUpload1" runat="server" />

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

          <asp:Button 
    ID="Insert_Button" 
    class="btn btn-primary rounded text-white px-4"
    runat="server" Text="Submit" OnClick="Insert_Button_Click"  ValidationGroup="SubmitGroup" />

           &nbsp   
          <asp:Button 
    ID="Populate_Button" 
    class="btn btn-primary rounded text-white px-4"
    runat="server" Text="Populate" OnClick="Populate_Button_Click" />



              
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginForm.aspx.cs" Inherits="Login_v3_LoginForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Login_v3/images/icons/cued-logo.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v3/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v3/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v3/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v3/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Login_v3/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v3/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v3/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Login_v3/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v3/css/util.css">
	<link rel="stylesheet" type="text/css" href="Login_v3/css/main.css">
<!--===============================================================================================-->

	<div class="limiter">
		<div class="container-login100" style="background-image: url('Login_v3/images/bg-01.jpg');">
			<div class="wrap-login100">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-face"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						Cued-In
					</span><div class="wrap-input100 validate-input" data-validate = "Enter username">
                        <asp:TextBox 
                            ID="Username" 
                            class="input100"
                            placeholder="Username"
                            runat="server">
                        </asp:TextBox>
<%--						<input class="input100" type="text" name="username" placeholder="Username">--%>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
                        <asp:TextBox 
                            ID="Password"
                            Type ="password"
                            class="input100"
                            placeholder="Password"
                            PasswordChar="*"
                            runat="server">
                        </asp:TextBox>
<%--						<input class="input100" type="password" name="pass" placeholder="Password">--%>
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					<div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
						<label class="label-checkbox100" for="ckb1">
							Remember me
						</label>
					</div>

					<div class="container-login100-form-btn">
				        <asp:Button ID="Login" 
                            runat="server" 
                            class="login100-form-btn"
                            Text="Login" OnClick="Login_Click" />
					</div>
                	<div class="text-center p-t-90">
						<a class="txt1" href="#">
                            <asp:LinkButton 
                                ID="CreateAccount" 
                                runat="server" 
                                OnClick="CreateAccount_Click">Create Account
                            </asp:LinkButton>
                                    <br />
                            <asp:LinkButton 
                                ID="ForgetPasswordLink" 
                                runat="server" 
                                OnClick="ForgetPasswordLink_Click">	Forgot Password?
                            </asp:LinkButton>
                          
                            <br />
						 <asp:Label ID="lblStatus" 
                             runat="server">

						 </asp:Label>



						</a>
					</div>
			</div>
		</div>
	</div>
	
	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="Login_v3/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_v3/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_v3/vendor/bootstrap/js/popper.js"></script>
	<script src="Login_v3/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_v3/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_v3/vendor/daterangepicker/moment.min.js"></script>
	<script src="Login_v3/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Login_v3/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Login_v3/js/main.js"></script>

</asp:Content>


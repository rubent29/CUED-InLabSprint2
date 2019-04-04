<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<body>
    <form id="form1" runat="server">
        <asp:Label ID="UsernameLabel" runat="server" Text="Please Enter Your Username"></asp:Label>
        <asp:TextBox ID="UserText" runat="server"></asp:TextBox>
        <div>
            <asp:Button ID="Button2" runat="server" OnClick="GoClick" Text="Go" />
        </div>
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Please Answer Your Security Question to Reset Your Password"></asp:Label>
        <div></div>
        <asp:Label ID="QuestionLabel" runat="server" Text="Security Question: "></asp:Label>
        
        <div></div>
        <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
        <div>
           <%--<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="The answer to your question is incorrect. Please try again.""></asp:CompareValidator>--%>
            <asp:Button ID="Button1" runat="server" OnClick="ResetClick" Text="Reset Password" />
        </div>
    </form>
</body>
</html>




</asp:Content>




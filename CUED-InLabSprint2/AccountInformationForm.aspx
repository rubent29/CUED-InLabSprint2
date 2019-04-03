<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AccountInformationForm.aspx.cs" Inherits="AccountInformationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
        .auto-style2 {
            width: 154px;
        }
        .auto-style3 {
            height: 29px;
            width: 154px;
        }
        .auto-style4 {
            width: 280px;
        }
        .auto-style5 {
            height: 29px;
            width: 280px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table class="w-100">
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="IDLabel" runat="server" Text="Employer ID: "></asp:Label>
            </td>
            <td>
                <asp:Label ID="EmployeeIDLabel" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="FNLabel" runat="server" Text="FirstName: "></asp:Label>
            </td>
            <td>
                <asp:Label ID="FirstNameLabel" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="LNLabel" runat="server" Text="Last Name:"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                </td>
            <td class="auto-style3">
                <asp:Label ID="CompanyNameLabel" runat="server" Text="CompanyName: "></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="CompNameLabel" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label27" runat="server" Text="Company Email: "></asp:Label>
            </td>
            <td>
                <asp:Label ID="CompEmailLabel" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Text="StreetAddress: "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label8" runat="server" Text="City: "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label9" runat="server" Text="State: "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label10" runat="server" Text="Country: "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label11" runat="server" Text="Zip Code: "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label12" runat="server" Text="Password: "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label13" runat="server" Text="Confirm Password: "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label14" runat="server" Text="Security Question: "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label29" runat="server" Text="Security Answer: "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label30" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>





    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;

    <asp:Button 
        ID="LoginAgainButton" 
        runat="server" 
        Text="Log In Again to Edit" 
        OnClick="LoginAgainButton_Click" />






</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CloudServiceProviderLogin.aspx.cs" Inherits="CloudServiceProviderLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="content">
        <div class="content_resize">
            <div class="mainbar">
            <div style="padding:34px 0 10px 0;font-size:25px">
           Cloud Service Provider Login Form
            </div>
            <div style="padding:22px 0 10px 10px">
            <table cellpadding="5px">
            <tr>
            <td style="font-size:15px;font-weight:bold">
          User Name
            </td>
            <td>
            <asp:TextBox ID="TxtUserName" runat="server" class="inputs" placeholder="User Name"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td style="font-size:15px;font-weight:bold">
            Password
            </td>
            <td>
            <asp:TextBox ID="TxtPassword" runat="server" CssClass="inputs" TextMode="Password" placeholder="Password"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td>
            
            </td>
            <td>
                <asp:Button ID="BtnLogin" runat="server" Text="Login" CssClass="button_example" 
                    onclick="BtnLogin_Click" />
            </td>
            </tr>
            </table>
            </div>
            
            </div>
            <div class="clr"></div>
        </div>
    </div>
</asp:Content>


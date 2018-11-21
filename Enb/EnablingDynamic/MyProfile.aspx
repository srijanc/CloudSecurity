<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="MyProfile" %>

<%@ Register src="CloudUserControl.ascx" tagname="CloudUserControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content">
        <div class="content_resize">
            <div class="mainbar">
            <div style="padding:34px 0 10px 0;font-size:25px">
           Cloud User Profile
            </div>
            <div style="padding:22px 0 10px 10px">
            <table cellpadding="5px">
                        <tr>
                            <td style="font-size: 15px; font-weight: bold">
                                Full Name
                            </td>
                            <td>
                                <asp:TextBox ID="TxtName" runat="server" CssClass="textbox"></asp:TextBox>
                                <asp:HiddenField ID="HiddenId" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 15px; font-weight: bold">
                                E-mail
                            </td>
                            <td>
                                <asp:TextBox ID="TxtEmail" runat="server" Enabled="false" CssClass="textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 15px; font-weight: bold">
                                Password
                            </td>
                            <td>
                                <asp:TextBox ID="TxtPassword" runat="server" CssClass="textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 15px; font-weight: bold">
                                DOB
                            </td>
                            <td>
                                <asp:TextBox ID="TxtDOB" runat="server" CssClass="textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 15px; font-weight: bold">
                                Phone
                            </td>
                            <td>
                                <asp:TextBox ID="TxtPhone" runat="server" CssClass="textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 15px; font-weight: bold">
                                City
                            </td>
                            <td>
                                <asp:TextBox ID="TxtCity" runat="server" CssClass="textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 15px; font-weight: bold">
                                State
                            </td>
                            <td>
                                <asp:TextBox ID="TxtState" runat="server" CssClass="textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 15px; font-weight: bold">
                                Country
                            </td>
                            <td>
                                <asp:TextBox ID="TxtCountry" runat="server" CssClass="textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 15px; font-weight: bold">
                                
                            </td>
                            <td>
                                <asp:Button ID="BtnRegister" runat="server" Text="Update" 
                                    CssClass="button_example" OnClientClick="return validation()" 
                                    onclick="BtnRegister_Click" /> 
                            </td>
                        </tr>
                    </table>
            </div>
            </div>

            <uc1:CloudUserControl ID="CloudUserControl1" runat="server" />
&nbsp;<div class="clr"></div>
            </div>
            </div>
	
</asp:Content>


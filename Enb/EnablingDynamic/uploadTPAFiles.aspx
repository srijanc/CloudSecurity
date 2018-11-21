<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="uploadTPAFiles.aspx.cs" Inherits="upload" %>

<%@ Register src="TPAControl.ascx" tagname="TPAControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content">
        <div class="content_resize">
            <div class="mainbar">
                <div style="padding: 34px 0 10px 0; font-size: 25px">
                    Re Upload File
                </div>
                <div style="padding: 22px 0 10px 10px">
                <table>
                <tr>
                <td>
                File Name
                </td>
                <td>
                    <asp:TextBox ID="TxtFileName" runat="server" CssClass="textbox" Enabled="false"></asp:TextBox>
                    <asp:HiddenField ID="HiddenFilePath" runat="server" />
                    <asp:HiddenField ID="HiddenFileId" runat="server" />
                    <asp:HiddenField ID="HiddenKey" runat="server" />
                </td>
                </tr>
                <tr>
                <td>
                Cloud User
                </td>
                <td>
                    <asp:TextBox ID="TxtUserName" runat="server" CssClass="textbox" Enabled="false"></asp:TextBox>
                </td>
                </tr>
                <tr>
                <td>
                Cloud User Email
                </td>
                <td>
                    <asp:TextBox ID="TxtEmail" runat="server" CssClass="textbox" Enabled="false"></asp:TextBox>
                </td>
                </tr><tr>
                <td>
                Reupload
                </td>
                <td>
                    <asp:FileUpload ID="FileReUpload" runat="server" />
                </td>
                </tr><tr>
                <td>
                
                </td>
                <td>
                    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" 
                        onclick="BtnSubmit_Click" />
                </td>
                </tr>
                </table>
                </div>
                </div>
                <uc1:TPAControl ID="TPAControl1" runat="server" />
&nbsp;&nbsp;<div class="clr">
            </div>
                </div>
                </div>
</asp:Content>


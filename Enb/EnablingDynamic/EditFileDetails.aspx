<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="EditFileDetails.aspx.cs" Inherits="EditFileDetails" %>

<%@ Register Src="CloudUserControl.ascx" TagName="CloudUserControl" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="content_resize">
            <div class="mainbar">
                <div style="padding: 22px 0 10px 67px; font-size: 25px">
                    Update File Details
                </div>
                <div style="padding: 22px 0 10px 0">
                    <table>
                        <tr>
                            <td>
                                File Name
                            </td>
                            <td>
                                <asp:TextBox ID="TxtFileName" runat="server" Enabled="false" CssClass="textbox"></asp:TextBox>
                                <asp:HiddenField ID="HiddenFID" runat="server" />
                                <asp:HiddenField ID="HiddenKey" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                TPA Name
                            </td>
                            <td>
                                <asp:TextBox ID="TxtTPAName" runat="server" Enabled="false" CssClass="textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Browse File
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUp" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Button ID="BtnUpload" runat="server" Text="Update" OnClick="BtnUpload_Click" CssClass="button_example" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <uc1:CloudUserControl ID="CloudUserControl1" runat="server" />
            <div class="clr">
            </div>
        </div>
    </div>
</asp:Content>

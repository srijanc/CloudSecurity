<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FileStatus.aspx.cs" Inherits="FileStatus" %>

<%@ Register src="CloudUserControl.ascx" tagname="CloudUserControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="content">
        <div class="content_resize">
            <div class="mainbar">
                <div style="padding: 22px 0 10px 67px; font-size: 25px">
                    Files Verified By TPA
                </div>
                <div style="padding: 22px 0 10px 0">
                    <asp:GridView ID="GridFileView" runat="server" CssClass="CSSTableGenerator" HeaderStyle-BackColor="#3673AB"
                        HeaderStyle-ForeColor="white" ForeColor="Black" AutoGenerateColumns="False" OnRowCommand="GridFileView_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="TPA Name" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblUserName" runat="server" Text='<%#Eval("TPA_Name")%>'></asp:Label>
                                    <asp:HiddenField ID="HiddenKey" runat="server" Value='<%#Eval("Files_Key") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="FileName" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblFileName" runat="server" Text='<%#Eval("Files_FileName")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblEmail" runat="server" Text='<%#Eval("TPA_Email")%>'></asp:Label>
                                    <asp:HiddenField ID="HiddenCloudUserName" runat="server" Value='<%#Eval("CloudUserReg_Name") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Action" HeaderStyle-Height="30px" HeaderStyle-Width="90px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:ImageButton ID="imgappbutt" runat="server" CommandName="Download" Height="30"
                                        Width="90" CommandArgument='<%#Eval("ReuploadFile_Filepath") %>' ImageUrl="images/download.png" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <uc1:CloudUserControl ID="CloudUserControl1" runat="server" />
&nbsp;&nbsp;<div class="clr">
            </div>
        </div>
    </div>
</asp:Content>


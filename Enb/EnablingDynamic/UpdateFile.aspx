<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="UpdateFile.aspx.cs" Inherits="UpdateFile" %>

<%@ Register src="CloudUserControl.ascx" tagname="CloudUserControl" tagprefix="uc1" %>

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
                    <asp:GridView ID="GridFileView" runat="server" CssClass="CSSTableGenerator" HeaderStyle-BackColor="#3673AB"
                        HeaderStyle-ForeColor="white" ForeColor="Black" 
                        AutoGenerateColumns="False" OnRowCommand="GridFileView_RowCommand" 
                        onrowediting="GridFileView_RowEditing">
                        <Columns>
                            <asp:TemplateField HeaderText="TPA Name" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblTPAName" runat="server" Text='<%#Eval("TPA_Name")%>'></asp:Label>
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
                                    <asp:ImageButton ID="imgappbutt" runat="server" CommandName="Edit" Height="40"
                                        Width="40" CommandArgument='<%#Eval("Files_Id") %>' ImageUrl="images/edit.png" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <uc1:CloudUserControl ID="CloudUserControl1" runat="server" />
            <div class="clr">
            </div>
        </div>
    </div>
</asp:Content>

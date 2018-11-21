<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AllFiles.aspx.cs" Inherits="AllFiles" %>

<%@ Register src="CloudUserControl.ascx" tagname="CloudUserControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="content">
        <div class="content_resize">
            <div class="mainbar">
                <div style="padding: 22px 0 10px 67px; font-size: 25px">
                    All Files
                </div>
                <div style="padding: 22px 0 10px 0">
                    <asp:GridView ID="GridFileView" runat="server" CssClass="CSSTableGenerator" HeaderStyle-BackColor="#3673AB"
                        HeaderStyle-ForeColor="white" ForeColor="Black" 
                        AutoGenerateColumns="False" OnRowCommand="GridFileView_RowCommand" 
                        onrowdatabound="GridFileView_RowDataBound">
                        <Columns>
                            <asp:TemplateField HeaderText="User Name" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblUserName" runat="server" Text='<%#Eval("CloudUserReg_Name")%>'></asp:Label>
                                    
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="FileName" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblFileName" runat="server" Text='<%#Eval("Files_FileName")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="TPA Name" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblTPAName" runat="server" Text='<%#Eval("TPA_Name")%>'></asp:Label>
                                    <asp:HiddenField ID="HiddenFiles_Id" runat="server" Value='<%#Eval("Files_Id")  %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Action" HeaderStyle-Height="30px" HeaderStyle-Width="90px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:ImageButton ID="imgappbutt" runat="server" CommandName="Send" Height="30"
                                        Width="90" CommandArgument='<%#Eval("Files_Id") %>' ImageUrl="images/send_request_button.png" />
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


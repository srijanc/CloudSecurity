<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TPARequestedFiles.aspx.cs" Inherits="TPARequestedFiles" %>

<%@ Register src="TPAControl.ascx" tagname="TPAControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content">
        <div class="content_resize">
            <div class="mainbar">
                <div style="padding: 22px 0 10px 67px; font-size: 25px">
                   TPA Requested Files to Cloud User
                </div>
                <div style="padding: 22px 0 10px 0">
                 <asp:GridView ID="GridFileView" runat="server" CssClass="CSSTableGenerator" 
                    HeaderStyle-BackColor="#3673AB" HeaderStyle-ForeColor="white"
ForeColor="Black" AutoGenerateColumns="False">
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
<asp:TemplateField HeaderText="Email" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
<ItemTemplate>
<asp:Label ID="LblDate" runat="server" Text='<%#Eval("CloudUserReg_Email")%>'></asp:Label>

</ItemTemplate>
</asp:TemplateField>


</Columns>
</asp:GridView>
                </div>

                </div>
                <uc1:TPAControl ID="TPAControl1" runat="server" />
&nbsp;<div class="clr"></div>
                </div>
                </div>

</asp:Content>


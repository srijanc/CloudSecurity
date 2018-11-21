<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CheckTPA.aspx.cs" Inherits="CheckTPA" %>

<%@ Register src="AdminControl.ascx" tagname="AdminControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="content">
        <div class="content_resize">
            <div class="mainbar">
                <div style="padding: 22px 0 10px 67px; font-size: 25px">
                    Check User Registration Details
                </div>
                <div style="padding: 22px 0 10px 0">
                    <asp:GridView ID="grvADview" runat="server" CssClass="CSSTableGenerator" HeaderStyle-BackColor="#3673AB"
                        HeaderStyle-ForeColor="white" ForeColor="Black" AutoGenerateColumns="False" AllowPaging="True"
                       OnRowCommand="grvADview_RowCommand"
                        CellPadding="4" OnRowEditing="grvADview_RowEditing" OnRowDeleting="grvADview_RowDeleting"
                        OnRowDataBound="grvADview_RowDataBound">
                        <Columns>
                        <asp:TemplateField HeaderText="TPA Name" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblTPAName" runat="server" Text='<%#Eval("TPA_Name")%>'></asp:Label>
                                    
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblEmail" runat="server" Text='<%#Eval("TPA_Email")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Phone" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblPhone" runat="server" Text='<%#Eval("TPA_Phone")%>'></asp:Label>
                                    
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="City" HeaderStyle-Height="30px" HeaderStyle-Width="90px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblCity" runat="server" Text='<%#Eval("TPA_City")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Action" HeaderStyle-Height="30px" HeaderStyle-Width="90px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:ImageButton ID="imgappbutt" runat="server" CommandName="Approve"  Height="20px" Width="20px"  CommandArgument='<%#Eval("TPA_Id") %>' ImageUrl="images/D-icon.png" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            </Columns>
                    </asp:GridView>
                </div>
            </div>
            <uc1:AdminControl ID="AdminControl1" runat="server" />
&nbsp;&nbsp;<div class="clr">
            </div>
        </div>
    </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="FilePending.aspx.cs" Inherits="FilePending" %>

<%@ Register Src="CloudUserControl.ascx" TagName="CloudUserControl" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="content_resize">
            <div class="mainbar">
                <div style="padding: 34px 0 10px 0; font-size: 25px">
                    Following files have not been verified by TPA
                </div>
                <div style="padding: 22px 0 10px 0">
                    <asp:GridView ID="GridFileView" runat="server" CssClass="CSSTableGenerator" HeaderStyle-BackColor="#3673AB"
                        HeaderStyle-ForeColor="white" ForeColor="Black" AutoGenerateColumns="False">
                        <Columns>
                            <asp:TemplateField HeaderText="FileName" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblFileName" runat="server" Text='<%#Eval("Files_FileName")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="TPA" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblTPA" runat="server" Text='<%#Eval("TPA_Name")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Date" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblDate" runat="server" Text='<%#Eval("Files_Date","{0:dd/MM/yyyy}")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <uc1:CloudUserControl ID="CloudUserControl1" runat="server" />
            &nbsp;<div class="clr">
            </div>
        </div>
    </div>
</asp:Content>

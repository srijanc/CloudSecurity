<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="AllRegisteredUsers.aspx.cs" Inherits="AllRegisteredUsers" %>

<%@ Register Src="AdminControl.ascx" TagName="AdminControl" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="content_resize">
            <div class="mainbar">
                <div style="padding: 34px 0 10px 0; font-size: 25px">
                    All Registered Cloud Users
                </div>
                <div style="padding: 22px 0 10px 0">
                    <asp:GridView ID="grvADview" runat="server" CssClass="CSSTableGenerator" HeaderStyle-BackColor="#3673AB"
                        HeaderStyle-ForeColor="white" ForeColor="Black" 
                        AutoGenerateColumns="False" OnRowCommand="grvADview_RowCommand"
                        CellPadding="4" onrowdeleting="grvADview_RowDeleting">
                        <Columns>
                            <asp:TemplateField HeaderText="More Info" HeaderStyle-Width="100px" HeaderStyle-HorizontalAlign="Center"
                                ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:ImageButton ID="imgMoreInfobutt" runat="server" ImageUrl="images/GoBtn.png"
                                        Height="20px" Width="20px" CommandName="moreinfouser" CommandArgument='<%#Eval("CloudUserReg_Id") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete" HeaderStyle-Width="70px" HeaderStyle-HorizontalAlign="Center"
                                ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:ImageButton ID="imgdelbutt" runat="server" ImageUrl="images/DeleteRed.png" Height="20px"
                                        Width="20px" CommandName="Delete" CommandArgument='<%#Eval("CloudUserReg_Id") %>'
                                        OnClientClick="return confirm('Are you sure you want delete');" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblName" runat="server" Text='<%#Eval("CloudUserReg_Name")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EmailId" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblEmail" runat="server" Text='<%#Eval("CloudUserReg_Email")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ContactNo" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblPhone" runat="server" Text='<%#Eval("CloudUserReg_Phone")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="City" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                Visible="false" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblCity" runat="server" Text='<%#Eval("CloudUserReg_City")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="State" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                Visible="false" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblState" runat="server" Text='<%#Eval("CloudUserReg_State")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Country" HeaderStyle-Height="30px" HeaderStyle-Width="180px"
                                Visible="false" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LblCountry" runat="server" Text='<%#Eval("CloudUserReg_Country")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <uc1:AdminControl ID="AdminControl1" runat="server" />
            &nbsp;<div class="clr">
            </div>
        </div>
    </div>
</asp:Content>

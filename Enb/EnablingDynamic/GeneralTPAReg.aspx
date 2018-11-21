<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="GeneralTPAReg.aspx.cs" Inherits="GeneralTPAReg" %>

<%@ Register src="MainSideMenuControl.ascx" tagname="MainSideMenuControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        function validation() {
            var msg = "";
            var ck_name = /^[a-zA-Z]|\.$/;
            var ck_contact = /^(\+91\d{10,10})|(^[0-9]\d{2,4}-\d{6,8})|^([0-9]{10})$/;
            var ck_email = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
            if (document.getElementById("<%=TxtName.ClientID%>").value == "" || document.getElementById("<%=TxtName.ClientID%>").value == null) {
                msg = msg + "Full Name can not be blank\n";
            }

            if (document.getElementById("<%=TxtEmail.ClientID%>").value == "" || document.getElementById("<%=TxtEmail.ClientID%>").value == null) {
                msg = msg + " E-mail can not be blank\n";
            }

            if (document.getElementById("<%=TxtPassword.ClientID%>").value == "" || document.getElementById("<%=TxtPassword.ClientID%>").value == null) {
                msg = msg + " Password can not be blank\n";
            }


            if (document.getElementById("<%=TxtPhone.ClientID%>").value == "" || document.getElementById("<%=TxtPhone.ClientID%>").value == null) {
                msg = msg + " Phone can not be blank\n";
            }

            if (document.getElementById("<%=TxtCity.ClientID%>").value == "" || document.getElementById("<%=TxtCity.ClientID%>").value == null) {
                msg = msg + " City can not be blank\n";
            }

            if (document.getElementById("<%=TxtState.ClientID%>").value == "" || document.getElementById("<%=TxtState.ClientID%>").value == null) {
                msg = msg + " State can not be blank\n";
            }

            if (document.getElementById("<%=TxtCountry.ClientID%>").value == "" || document.getElementById("<%=TxtCountry.ClientID%>").value == null) {
                msg = msg + " Country can not be blank\n";
            }



            if (!ck_contact.test(document.getElementById("<%=TxtPhone.ClientID%>").value) && document.getElementById("<%=TxtPhone.ClientID%>").value != "") {
                msg = msg + "\nPlease Enter Proper Phone Number like 9686968686\n";
            }

            if (!ck_email.test(document.getElementById("<%=TxtEmail.ClientID%>").value) && document.getElementById("<%=TxtEmail.ClientID%>").value != "") {
                msg = msg + "\nPlease Enter Proper Email Number like sample@sample.com\n";
            }


            if (msg != "") {
                alert(msg);
                return false;
            }
            else
                return true;

        }
    </script>

    <div class="content">
        <div class="content_resize">
            <div class="mainbar">
                <div style="padding: 34px 0 10px 0; font-size: 25px">
                    TPA Registration
                </div>
                <div style="padding: 22px 0 10px 10px">
                    <table cellpadding="5px">
                        <tr>
                            <td style="font-size: 15px; font-weight: bold">
                                Full Name
                            </td>
                            <td>
                                <asp:TextBox ID="TxtName" runat="server" CssClass="textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 15px; font-weight: bold">
                                E-mail
                            </td>
                            <td>
                                <asp:TextBox ID="TxtEmail" runat="server" CssClass="textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 15px; font-weight: bold">
                                Password
                            </td>
                            <td>
                                <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>
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
                                <asp:Button ID="BtnRegister" runat="server" Text="Register" CssClass="button_example"
                                    OnClientClick="return validation()" OnClick="BtnRegister_Click" />
                            </td>
                        </tr>
                    </table>
                    <br />
                </div>
            </div>
            <uc1:MainSideMenuControl ID="MainSideMenuControl1" runat="server" />
&nbsp;<div class="clr">
            </div>
        </div>
    </div>
</asp:Content>

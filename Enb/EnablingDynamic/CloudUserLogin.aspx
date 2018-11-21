<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="CloudUserLogin.aspx.cs" Inherits="CloudUserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<script type="text/javascript">
    function validation() {
        var msg = "";
        var ck_email = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;


        if (document.getElementById("<%=TxtPassword.ClientID%>").value == "" || document.getElementById("<%=TxtPassword.ClientID%>").value == null) {
            msg = msg + " Password can not be blank\n";
        }

        if (document.getElementById("<%=TxtEmail.ClientID%>").value == "" || document.getElementById("<%=TxtEmail.ClientID%>").value == null) {
            msg = msg + " Email can not be blank\n";
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="content_resize">
            <div class="mainbar">
            <div style="padding:34px 0 10px 92px;font-size:25px">
          Cloud User Login Form
            </div>
            <div style="padding:22px 0 10px 10px">
            <table cellpadding="5px">
            <tr>
            <td style="font-size:15px;font-weight:bold">
          User Name
            </td>
            <td>
            <asp:TextBox ID="TxtEmail" runat="server" class="inputs" placeholder="E-mail"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td style="font-size:15px;font-weight:bold">
            Password
            </td>
            <td>
            <asp:TextBox ID="TxtPassword" runat="server" CssClass="inputs" TextMode="Password" placeholder="Password"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td>
            
            </td>
            <td>
                <asp:Button ID="BtnLogin" runat="server" Text="Login" 
                    OnClientClick="return validation();" CssClass="button_example" 
                    onclick="BtnLogin_Click" />
            </td>
            </tr>
            </table>
            </div>
            <div style="padding:5px 0 5px 110px">
            Not Yet Registered?<a href="CloudUserReg.aspx"> Register Here</a>
            </div>
            </div>
            <div class="clr"></div>
        </div>
    </div>
</asp:Content>

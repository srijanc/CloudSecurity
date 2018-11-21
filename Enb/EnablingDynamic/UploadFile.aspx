<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UploadFile.aspx.cs" Inherits="UploadFile" %>

<%@ Register src="CloudUserControl.ascx" tagname="CloudUserControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script type ="text/javascript">
    function CheckFileExists() {
        PageMethods.CheckFileExists(document.getElementById('FileUp').value, FileExistsCallBack);
        return false;
    }


    function FileExistsCallBack(result) {
        if (result) //if file exists on server, confirm with user
        {
            if (confirm("File already exists. Do you want to overwrite"))
                __doPostBack('BtnSubmit', '');
        }
        else
            __doPostBack('BtnSubmit', ''); //file doesn't exists on server.. So upload it
    }
</script>
<div class="content">
        <div class="content_resize">
            <div class="mainbar">
            <div style="padding:34px 0 10px 237px;font-size:25px">
            Upload File
            </div>
            <div style="padding:22px 0 10px 162px">
            
            <table cellpadding="5px">
            <tr>
            <td>
            File Name
            </td>
            <td>
                <asp:TextBox ID="TxtFileName" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td>
            Upload
            </td>
            <td>
            <asp:FileUpload ID="FileUp" runat="server"/>
            </td>
            </tr>
            <tr>
            <td>
            Select TPA
            </td>
            <td>
                <asp:DropDownList ID="DropDownTPA" runat="server" CssClass="textbox">
                </asp:DropDownList>
            </td>
            </tr>
            <tr>
            <td>
            
            </td>
            <td>
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" CausesValidation="true" OnClientClick="return CheckFileExists();" 
                    CssClass="button_example" onclick="BtnSubmit_Click" />
                    
            </td>
            </tr>
            </table>
            
            </div>
            </div>
            <uc1:CloudUserControl ID="CloudUserControl1" runat="server" />
&nbsp;<div class="clr"></div>
            </div>
            </div>
	
</asp:Content>


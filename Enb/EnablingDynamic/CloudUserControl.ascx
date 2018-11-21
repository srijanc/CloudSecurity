<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CloudUserControl.ascx.cs" Inherits="CloudUserControl" %>
<div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>WELCOME 
              <asp:Label ID="LblUser" runat="server" ></asp:Label></span></h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="UploadFile.aspx">Upload File</a></li>
            <li><a href="MyProfile.aspx">My Profile</a></li>
            <li><a href="FileDetails.aspx">My File Details</a></li>
            <li><a href="UpdateFile.aspx">Update File Details</a></li>
            <li><a href="FilePending.aspx">File Pending</a></li>
            <li><a href="FileStatus.aspx">Approved File</a></li>
            <li><a href="UserRequestForFile.aspx">User Request for File</a></li>
            <li><a href="RequestByTPA.aspx">TPA Request for file</a></li>
            <li><a href="AllFiles.aspx">All File</a></li>
            <li><a href="RequestAcceptedFiles.aspx">Request Accepted File</a></li>
            <li><a href="CloudUserLogin.aspx">Log Out</a></li>
            <%--<li><a href="#">Archives</a></li>
            <li><a href="#">Web Templates</a></li>--%>
          </ul>
        </div>
        
      </div>
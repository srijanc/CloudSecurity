<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TPAControl.ascx.cs" Inherits="TPAControl" %>
<div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>WELCOME</span> TPA <asp:Label ID="LblUser" runat="server" ></asp:Label></h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="TPAGetFiles.aspx">File Details</a></li>
            <li><a href="TPARequestedFiles.aspx">File Request sent</a></li>
            <li><a href="TPADownloadFile.aspx">File Request Received</a></li>
            <li><a href="Reupload.aspx">Rupload File</a></li>
   <%--         <li><a href="#">Web Templates</a></li>--%>
          </ul>
        </div>
        
      </div>
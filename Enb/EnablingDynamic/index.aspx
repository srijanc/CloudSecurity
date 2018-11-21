<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Register src="MainSideMenuControl.ascx" tagname="MainSideMenuControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>BITS CLOUD</span> STORAGE SERVICES</h2>
          
          <div class="clr"></div>
          <div class="img"><img src="layout/images/img1.jpg" width="650" height="196" alt="" class="fl" /></div>
          <div class="post_content">
            Storage-as-a-Service offered by cloud service providers (CSPs) is a paid facility that enables organizations to outsource their sensitive data to be stored on remote servers. In this paper, we propose a cloud-based storage scheme that allows the data owner to benefit from the facilities offered by the CSP and enables indirect mutual trust between them. The proposed scheme has four important features: (i) it allows the owner to outsource sensitive data to a CSP, and perform full block-level dynamic operations on the outsourced data, i.e., block modification, insertion, deletion, and append, (ii) it ensures that authorized users (i.e., those who have the right to access the owner’s file) receive the latest version of the outsourced data, (iii) it enables indirect mutual trust between the owner and the CSP, and (iv) it allows the owner to grant or revoke access to the outsourced data. We discuss the security issues of the proposed scheme. Besides, we justify its performance through theoretical analysis and a prototype implementation on Amazon cloud platform to evaluate storage, communication, and computation overheads.
          </div>
          <div class="clr"></div>
        </div>
        
      </div>
    <uc1:MainSideMenuControl ID="MainSideMenuControl1" runat="server" />
&nbsp;<div class="clr"></div>
    </div>
  </div>


</asp:Content>


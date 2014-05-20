<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteControlPanal/ControlPanalMasterPage.Master" AutoEventWireup="true" CodeBehind="WebSiteName.aspx.cs" Inherits="WebSite.WebSiteControlPanal.WebSiteName" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row-fluid">
      <div class="container">

      <form class="form-signin">
        <h2 class="form-signin-heading">Web Site Name</h2>
        
          <asp:TextBox ID="TextBox1" runat="server" placeholder="Web Site Name-Engilish" class="input-block-level"></asp:TextBox>
        
          <asp:TextBox ID="TextBox2" runat="server" class="input-block-level" placeholder="WebSite-Arabic"></asp:TextBox>
      
          <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-large btn-primary" />
      </form>

    </div> <!-- /container -->

     </div>
</asp:Content>

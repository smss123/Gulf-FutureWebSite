<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteControlPanal/ControlPanalMasterPage.Master" AutoEventWireup="true" CodeBehind="WebSiteName.aspx.cs" Inherits="WebSite.WebSiteControlPanal.WebSiteName" EnableEventValidation="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row-fluid">
      <div class="container">

          


         
 
        <h2 class="form-signin-heading">Web Site Name</h2>
        
          <asp:TextBox ID="txtEnName" runat="server" placeholder="Web Site Name-Engilish" class="input-block-level"></asp:TextBox>
        
          <asp:TextBox ID="txtArName" runat="server" class="input-block-level" placeholder="WebSite Name-Arabic"></asp:TextBox>
      
          <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-large btn-primary" OnClick="btnSave_Click" />
    
        <div class="controls-row">
            <asp:Label runat="server" ID="lblmsg"></asp:Label>

        </div>
    </div> <!-- /container -->

     </div>
</asp:Content>

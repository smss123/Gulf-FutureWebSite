<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebSite.WebSiteControlPanal.Default" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Admin Login</title>
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    <link href="assets/styles.css" rel="stylesheet" media="screen">
     <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
  </head>
  <body id="login">
    <div class="container">

      <form class="form-signin" runat ="server">
        <h2 class="form-signin-heading">Please sign in</h2>
      
          <asp:TextBox runat ="server" ID="txtUserName" CssClass="input-block-level" placeholder="User Name"></asp:TextBox>
          <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="input-block-level" placeholder="Password"></asp:TextBox>
         <asp:Button runat ="server" ID="btnLogin" Text="Sign in" CssClass="btn btn-large btn-primary" />
        
      </form> <!-- End Form-->

    </div> <!-- /container -->
    <script src="vendors/jquery-1.9.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
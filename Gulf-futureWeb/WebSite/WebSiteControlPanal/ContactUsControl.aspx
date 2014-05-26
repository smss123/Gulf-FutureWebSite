<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteControlPanal/ControlPanalMasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUsControl.aspx.cs" Inherits="WebSite.WebSiteControlPanal.ContactUsControl" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server">
     </telerik:RadStyleSheetManager>
     <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
         <Scripts>
             <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js">
             </asp:ScriptReference>
             <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js">
             </asp:ScriptReference>
             <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js">
             </asp:ScriptReference>
         </Scripts>
     </telerik:RadScriptManager>
     <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
     </telerik:RadAjaxManager>
     <div class="row-fluid">
         <div id="msg" class="controls-row">
             <asp:Label runat="server" ID="lblmsg"></asp:Label>

         </div>
         <div class="block">
             <div class="navbar navbar-inner block-header">
                 <div class="muted pull-left">Contact Us-Arabic</div>
             </div>

               <!-- Begin Body-->
            <div class="block-content collapse in">

                <asp:UpdatePanel ID="UpdatePanel2" runat="server" >
                    <ContentTemplate>
                        <telerik:RadEditor runat="server" ID="ArEdior" SkinID="DefaultSetOfTools" Height="500px" Width="97%">
                            <ImageManager ViewPaths="~/Resources/Uploads/Editos,~/Resources/Uploads/Editos"
                                UploadPaths="~/Resources/Uploads/Editos,~/Resources/Uploads/Editos"
                                DeletePaths="~/Resources/Uploads/Editos,~/Resources/Uploads/Editos"
                                EnableAsyncUpload="true"></ImageManager>
                        </telerik:RadEditor>
                    </ContentTemplate>

                </asp:UpdatePanel>
            </div>
            <!-- End Body-->
         </div>



         <div class="block">
             <div class="navbar navbar-inner block-header">
                 <div class="muted pull-left">Contact Us-English</div>
             </div>

               <!-- Begin Body-->
            <div class="block-content collapse in">

                <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
                    <ContentTemplate>
                        <telerik:RadEditor runat="server" ID="EnEditor" SkinID="DefaultSetOfTools" Height="500px" Width="97%">
                            <ImageManager ViewPaths="~/Resources/Uploads/Editos,~/Resources/Uploads/Editos"
                                UploadPaths="~/Resources/Uploads/Editos,~/Resources/Uploads/Editos"
                                DeletePaths="~/Resources/Uploads/Editos,~/Resources/Uploads/Editos"
                                EnableAsyncUpload="true"></ImageManager>
                        </telerik:RadEditor>
                    </ContentTemplate>

                </asp:UpdatePanel>
            </div>
            <!-- End Body-->
         </div>

          <div class="block">
              <div class="navbar navbar-inner block-header">
                  <div class="muted pull-left">Soical network</div>
              </div>
              <div class="controls">
                  <div class="controls-row">
                        <div class="control-label">FaceBook</div>
                      <asp:TextBox ID="txtFacebook" runat="server" placeholder="FaceBook Url" Width="80%" ></asp:TextBox>
                  </div>
                   <div class="controls-row">
                        <div class="control-label">Tweeter</div>
                      <asp:TextBox ID="txtTweeter" runat="server" placeholder="Tweeter Url" Width="80%" ></asp:TextBox>
                  </div>

                  <div class="controls-row">
                        <div class="control-label">Google Plus</div>
                      <asp:TextBox ID="txtGooglePlus" runat="server" placeholder="GooglePlus Url" Width="80%" ></asp:TextBox>
                  </div>

                  <div class="controls-row">
                        <div class="control-label">YouTube</div>
                      <asp:TextBox ID="txtYouTube" runat="server" placeholder="YouTube Url" Width="80%" ></asp:TextBox>
                  </div>

                  <div class="controls-row">
                        <div class="control-label">instegram</div>
                      <asp:TextBox ID="txtinstegram" runat="server" placeholder="instegram Url" Width="80%" ></asp:TextBox>
                  </div>

                   <div class="controls-row">
                        <div class="control-label">LinkedIn</div>
                      <asp:TextBox ID="txtLinkedIn" runat="server" placeholder="LinkedIn Url" Width="80%" ></asp:TextBox>
                  </div>
              </div>
         </div>
         <div class="controls-row">
             <center>
                      <asp:Button runat="server" ID="btnSave" Text ="Save" CssClass="btn btn-primary" Width="300px" OnClick="btnSave_Click" />
             </center>
             
         </div>
        
     </div>
</asp:Content>

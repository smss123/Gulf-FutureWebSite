<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteControlPanal/ControlPanalMasterPage.Master" AutoEventWireup="true" CodeBehind="PhotoGellaryControl.aspx.cs" Inherits="WebSite.WebSiteControlPanal.PhotoGellaryControl" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../styles/kendo.common.min.css" rel="stylesheet" />
    <link href="../styles/kendo.metro.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <script src="../Scripts/js/kendo.web.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        <div class="block">
            <div class="navbar navbar-inner block-header">
                <div class="muted pull-left">Photo Gelary</div>
            </div>
            <!-- Begin Body-->
            <div class="block-content collapse in">
                
               <div id="windowx">

                   <div class="k-content-frame">
                       <div class="k-controls">
                           <telerik:RadAsyncUpload ID="RadAsyncUpload1" runat="server" ChunkSize="0" MultipleFileSelection="Automatic" TemporaryFolder="../Resources/Temp" TargetFolder="../Resources/Uploads/Images" OnFileUploaded="RadAsyncUpload1_FileUploaded"></telerik:RadAsyncUpload>
                           <asp:Button runat="server" ID="Button2" Text="Upload" CssClass="k-button" />
                       </div>

                   </div>

               </div>
               
              
            </div>
        </div>
    </div>
      <%--  window Config--%>
    <script type="text/javascript">
        $("#window").KendoWindow();
    </script>

       <div id="dialog"></div>
    <script>
        $("#dialog").kendoWindow({
            actions: ["Minimize", "Maximize"]
        });
    </script>

</asp:Content>

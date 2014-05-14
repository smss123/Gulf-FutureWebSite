<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteControlPanal/ControlPanalMasterPage.Master" AutoEventWireup="true" CodeBehind="AboutUsControl.aspx.cs" Inherits="WebSite.WebSiteControlPanal.AboutUsControl" %>

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

        <div class="block">
            <div class="navbar navbar-inner block-header">
                <div class="muted pull-left">About Us-Arabic</div>
            </div>
            <!-- Begin Body-->
            <div class="block-content collapse in">

                <asp:UpdatePanel ID="UpdatePanel2" runat="server" >
                    <ContentTemplate>
                        <telerik:RadEditor runat="server" ID="RadEditor2" SkinID="DefaultSetOfTools" Height="675px" Width="99%" CssClass="container-fluid">
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


        <!-- About Us - English-->
        <div class="block">
            <div class="navbar navbar-inner block-header">
                <div class="muted pull-left">About Us-Arabic</div>
            </div>
            <!-- Begin Body-->
            <div class="block-content collapse in">

                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <telerik:RadEditor runat="server" ID="RadEditor1" SkinID="DefaultSetOfTools" Height="675px" Width="99%">
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

         <div class="navbar navbar-inner block-header">
                <div class="muted pull-left"></div>
             <div id="BtnDiv" style="margin-left: 40%; margin-right: 70%">
                 <asp:Button runat="server" ID="btnSave" Text="Save" CssClass="btn btn-primary " Width="300px" />

             </div>
            
            </div>
    </div>


</asp:Content>

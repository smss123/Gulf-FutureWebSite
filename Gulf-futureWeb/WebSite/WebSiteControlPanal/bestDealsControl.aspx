<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteControlPanal/ControlPanalMasterPage.Master" AutoEventWireup="true" CodeBehind="bestDealsControl.aspx.cs" Inherits="WebSite.WebSiteControlPanal.bestDealsControl" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Data.Linq" tagprefix="dx" %>
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
                <div class="muted pull-left">Best Deals</div>
            </div>
    
              <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True" CellSpacing="0" GridLines="None" ShowGroupPanel="True">
                  <ClientSettings AllowColumnsReorder="True" AllowDragToGroup="True" ReorderColumnsOnClient="True">
                      <Selecting AllowRowSelect="True" />
                      <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                  </ClientSettings>
              </telerik:RadGrid>   
         </div>
     </div>

</asp:Content>

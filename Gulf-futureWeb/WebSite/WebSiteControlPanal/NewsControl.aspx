<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteControlPanal/ControlPanalMasterPage.Master" AutoEventWireup="true" CodeBehind="NewsControl.aspx.cs" Inherits="WebSite.WebSiteControlPanal.NewsControl" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../styles/kendo.common.min.css" rel="stylesheet" />
    <link href="../styles/kendo.default.min.css" rel="stylesheet" />
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
             <div class="muted pull-left">News</div>
         </div>

         <asp:Label ID="lblmsg" runat="server"></asp:Label>
         <div class="controls">
             <div class="controls-row">
                 <div class="control-label">
                     <label for="txtDate">Date </label>
                 </div>
                 <telerik:RadDatePicker ID="txtDate" runat="server" Culture="en-US"></telerik:RadDatePicker>
             </div>
             <div class="controls-row">
                 <div class="control-label"> Photo</div>
                 <asp:FileUpload    id="upld" runat="server" CssClass="k-upload"  />
             </div>
             <div class="controls-row">
                 <div class="control-label">
                     <label for="txtArCaption">Caption-Arabic</label></div>
                 <asp:TextBox ID="txtArCaption" runat="server" placeholder="Enter Arabic Caption...."></asp:TextBox>

             </div>
              <div class="controls-row">
                 <div class="control-label">
                     <label for="txtEnCaption">Caption-Engilsh</label></div>
                 <asp:TextBox ID="txtEnCaption" runat="server" placeholder="Enter Engilsh Caption...."></asp:TextBox>

             </div>

             <div class="controls-row">
                 <div class="control-label">
                     <label for="txtEnSummary">Summary-Engilsh</label>
                 </div>
                 <asp:TextBox ID="txtEnSummary" 
                    runat="server" 
                    placeholder="Enter Engilsh Summary...." 
                    Width="50%" 
                    Height="150px" 
                    Rows="10" 
                    Columns="200"></asp:TextBox>

             </div>


             <div class="controls-row">
                 <div class="control-label">
                     <label for="txtArSummary">Summary-Arabic</label>
                 </div>
                 <asp:TextBox ID="txtArSummary" 
                    runat="server" 
                    placeholder="Enter Arabic Summary...." 
                    Width="50%" 
                    Height="150px" 
                    Rows="10" 
                    Columns="200"></asp:TextBox>

             </div>


             <div class="controls-row">
                 <div class="control-label">
                     <label for="txtArDetails">Details-Arabic</label>
                 </div>
                 <asp:TextBox ID="txtArDetails"
                     runat="server"
                     placeholder="Enter Arabic Summary...."
                     Width="50%"
                     Height="150px"
                     Rows="10"
                     Columns="200"></asp:TextBox>

             </div>

             <div class="controls-row">
                 <div class="control-label">
                     <label for="txtEnDetails">Details-English</label>
                 </div>
                 <asp:TextBox ID="txtEnDetails"
                     runat="server"
                     placeholder="Enter English Summary...."
                     Width="50%"
                     Height="150px"
                     Rows="10"
                     Columns="200"></asp:TextBox>

             </div>
             <div class="controls-row">
                 <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary " OnClick="btnSave_Click" />

             </div>
             <hr />
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="NewsSource" CssClass="table table-hover">
                 <Columns>
                     <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                     <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                     <asp:BoundField DataField="DateOf" HeaderText="Date" SortExpression="DateOf" />
                     <asp:BoundField DataField="ArCaption" HeaderText="Caption-Arabic" SortExpression="ArCaption" />
                     <asp:BoundField DataField="ArSummary" HeaderText="Caption-English" SortExpression="ArSummary" />
                     <asp:BoundField DataField="ArDetails" HeaderText="Details-Arabic" SortExpression="ArDetails" />
                     <asp:TemplateField HeaderText="Photo" SortExpression="Photo">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Photo") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Image ID="Image1" runat="server" Height="72px" ImageUrl='<%# Bind("Photo") %>' Width="97px" />
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:BoundField DataField="EnCaption" HeaderText="Caption-English" SortExpression="EnCaption" />
                     <asp:BoundField DataField="EnSummary" HeaderText="Summary-English" SortExpression="EnSummary" />
                     <asp:BoundField DataField="EnDetails" HeaderText="Details-English" SortExpression="EnDetails" />
                 </Columns>
             </asp:GridView>
            
            

             <asp:EntityDataSource ID="NewsSource" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="OurNews" EntityTypeFilter="OurNews">
             </asp:EntityDataSource>
            
            

         </div>
         
     </div>    
     </div>
</asp:Content>

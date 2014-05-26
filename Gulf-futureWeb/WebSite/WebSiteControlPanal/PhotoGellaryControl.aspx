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
                       <asp:Label ID="lblmsg" runat="server" ></asp:Label>
                       <div class="k-controls">
                           <div class="k-row-break">

                               <div class="k-label">Upload Image</div>
                               <telerik:RadAsyncUpload ID="RadAsyncUpload1" runat="server" ChunkSize="0" MultipleFileSelection="Automatic" TemporaryFolder="../Resources/Temp" TargetFolder="../Resources/Uploads/Images" OnFileUploaded="RadAsyncUpload1_FileUploaded"></telerik:RadAsyncUpload>
                              
                           </div>
                           <hr />
                           <div class="k-row-break">
                               <asp:TextBox runat="server" ID="txtArDectiption" placeholder="Description Here Arabic.." TextMode="MultiLine" Rows="10" Columns="50" Width="60%" Height="40%"></asp:TextBox>

                           </div>
                            <div class="k-row-break">
                               <asp:TextBox runat="server" ID="txtEnDescription" placeholder="Description Here Engilsh.." TextMode="MultiLine" Rows="10" Columns="50" Width="60%" Height="40%"></asp:TextBox>

                           </div>
                           <div class="k-row-break">
                               <asp:Button runat="server" ID="btnSave" Text="save" CssClass="k-button" Width="10%" OnClick="btnSave_Click"  />
                           </div>
                       </div>
                       
                   </div>
                   <hr />
                   <div class="navbar navbar-inner block-header">
                       <div class="muted pull-left">Photos</div>

                       <asp:EntityDataSource ID="PhotoDataSource" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="PhotoGellaries" EntityTypeFilter="PhotoGellary">
                       </asp:EntityDataSource>
                   </div>
                   <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="PhotoDataSource" Width="80%" CssClass="table table-hover" >
                       <Columns>
                           <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                           <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                           <asp:TemplateField HeaderText="img" SortExpression="img" >
                               <EditItemTemplate>
                                   <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("img") %>'></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:Image ID="Image1" runat="server" Height="137px" ImageUrl='<%# Eval("img") %>' Width="189px" />
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="arDescription" SortExpression="arDescription"  >
                               <EditItemTemplate>
                                   <div class="info">
                                       <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("arDescription") %>' Rows="10" Columns="50" Width="200px" Height="200px"></asp:TextBox>

                                   </div>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:Label ID="Label1" runat="server" Text='<%# Bind("arDescription") %>' ></asp:Label>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="EnDescription" SortExpression="EnDescription">
                               <EditItemTemplate>
                                   <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("EnDescription") %>' Rows="10" Columns="50" Width="200px" Height="200px"></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:Label ID="Label2" runat="server" Text='<%# Bind("EnDescription") %>'  Width="200px" Height="200px"></asp:Label>
                               </ItemTemplate>
                           </asp:TemplateField>
                       </Columns>
                   </asp:GridView>

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

<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteControlPanal/ControlPanalMasterPage.Master" AutoEventWireup="true" CodeBehind="SildeControl.aspx.cs" Inherits="WebSite.WebSiteControlPanal.SildeControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row-fluid">
          <div class="navbar navbar-inner block-header">
                <div class="muted pull-left">Slide Control</div>
          </div>
         <div class="controls">
             <asp:Label runat="server" ID="lblmsg"></asp:Label>
             <div class="controls-row">
                 <div class="control-label">
                     Upload Arabic Photo
                 </div>
                 <asp:FileUpload runat="server" id="UpldArImage" />
             </div>
             <hr />
             <div class="controls-row">
                 <div class="control-label">
                     Upload English Photo
                 </div>
                 <asp:FileUpload runat="server" ID="UpldEnImage" CssClass="input-file uniform_on " />
             </div>
             <div class="controls-row">
                 <asp:Button runat="server" Text="save" ID="btnSave"  CssClass="btn btn-primary " OnClick="btnSave_Click" />
             </div>

         </div>
         <hr />
         <div class="controls-row">
             <asp:GridView ID="grdSlide" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SlideDataSource" CssClass="table table-hover">
                 <Columns>
                     <asp:CommandField ShowDeleteButton="True" />
                     <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                     <asp:TemplateField HeaderText="Slide Image-Arabic" SortExpression="ArSlide">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ArSlide") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <div class="controls-row">
                                 <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# Eval("ArSlide") %>' Width="90%" />
                             </div>
                             
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Slide Image-English" SortExpression="EnSlide">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("EnSlide") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <div class="controls-row">
                                 <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# Eval("EnSlide") %>' Width="90%" />

                             </div>
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Columns>
             </asp:GridView>
             <asp:EntityDataSource ID="SlideDataSource" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="SlideConfigs" EntityTypeFilter="SlideConfig">
             </asp:EntityDataSource>
         </div>


     </div>


   
</asp:Content>

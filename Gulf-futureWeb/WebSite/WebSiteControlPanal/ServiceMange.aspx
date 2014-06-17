<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteControlPanal/ControlPanalMasterPage.Master" AutoEventWireup="true" CodeBehind="ServiceMange.aspx.cs" Inherits="WebSite.WebSiteControlPanal.ServiceMange" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="block">
        <div class="navbar navbar-inner block-header">
            <div class="muted pull-left">
                <telerik:RadScriptManager ID="RadScriptManager1" Runat="server">
                </telerik:RadScriptManager>
                <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" Runat="server">
                </telerik:RadStyleSheetManager>
                Our Service</div>
        </div>
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="EntityDataSource1" DefaultMode="Insert">
            
            <InsertItemTemplate>
                <div style="margin: 5px">
                    
                    
                    Our Service - Arabic
                <div class="controls-row">
                    <asp:TextBox ID="ArOurServiceTextBox" runat="server" Text='<%# Bind("ArOurService") %>' />
                </div>

                    
                    Our Servive - English
                    <div class="controls-row">
                        <asp:TextBox ID="EnOurServiceTextBox" runat="server" Text='<%# Bind("EnOurService") %>' />
                    </div>
                    
               
                    <br />
                   Description-Arabic:
     
                  <div class="controls-row">
                      <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                          <ContentTemplate>
                              <telerik:RadEditor runat="server" ID="ArEdior" SkinID="DefaultSetOfTools" Height="675px"   Content='<%# Bind("ArDescription") %>'>

                                  <ImageManager ViewPaths="~/Resources/Uploads/Editos,~/Resources/Uploads/Editos"
                                      UploadPaths="~/Resources/Uploads/Editos,~/Resources/Uploads/Editos"
                                      DeletePaths="~/Resources/Uploads/Editos,~/Resources/Uploads/Editos"
                                      EnableAsyncUpload="true"></ImageManager>
                              </telerik:RadEditor>
                          </ContentTemplate>

                      </asp:UpdatePanel>
                  </div>
                    <br />
                   Description-English:
                
                     <div class="controls-row">
                         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                             <ContentTemplate>
                                 <telerik:RadEditor runat="server" ID="RadEditor1" SkinID="DefaultSetOfTools" Height="675px"  Content='<%# Bind("EnDescription") %>'>

                                     <ImageManager ViewPaths="~/Resources/Uploads/Editos,~/Resources/Uploads/Editos"
                                         UploadPaths="~/Resources/Uploads/Editos,~/Resources/Uploads/Editos"
                                         DeletePaths="~/Resources/Uploads/Editos,~/Resources/Uploads/Editos"
                                         EnableAsyncUpload="true"></ImageManager>
                                 </telerik:RadEditor>
                             </ContentTemplate>

                         </asp:UpdatePanel>
                     </div>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="error btn" />
                </div>
            </InsertItemTemplate>
            
        </asp:FormView>

        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="OurServices" EntityTypeFilter="OurService" OnInserted="EntityDataSource1_Inserted" OnDeleted="EntityDataSource1_Deleted" OnUpdated="EntityDataSource1_Updated">
        </asp:EntityDataSource>

           <hr />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="EntityDataSource1" AutoGenerateColumns="False" DataKeyNames="Id" AllowPaging="True" CssClass="table table-hover" >
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="ArOurService" HeaderText="Our Service - Arabic" SortExpression="ArOurService" />
                <asp:BoundField DataField="EnOurService" HeaderText="Our Service - English" SortExpression="EnOurService" />
                <asp:BoundField DataField="ArDescription"  HeaderText="Description-Arabic" SortExpression="ArDescription" />
                <asp:BoundField DataField="EnDescription" HeaderText="Description-English" SortExpression="EnDescription" />
            </Columns>
        </asp:GridView>


    </div>

</asp:Content>

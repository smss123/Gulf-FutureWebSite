﻿<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteControlPanal/ControlPanalMasterPage.Master" AutoEventWireup="true" CodeBehind="bestDealsControl.aspx.cs" Inherits="WebSite.WebSiteControlPanal.bestDealsControl" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

   
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           <!------------------- Kendo Ui----------------------->
   

    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server">
     </telerik:RadStyleSheetManager>
     <telerik:RadScriptManager ID="RadScriptManager1" runat="server" EnableCdn="True" EnableHistory="True" EnablePageMethods="True">
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
         <AjaxSettings>
             <telerik:AjaxSetting AjaxControlID="EntityDataSource1">
             </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="EntityDataSource2">
             </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="EntityDataSource3">
             </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="EntityDataSource4">
                 <UpdatedControls>
                     <telerik:AjaxUpdatedControl ControlID="EntityDataSource1" UpdatePanelCssClass="" />
                     <telerik:AjaxUpdatedControl ControlID="EntityDataSource2" UpdatePanelCssClass="" />
                     <telerik:AjaxUpdatedControl ControlID="EntityDataSource3" UpdatePanelCssClass="" />
                     <telerik:AjaxUpdatedControl ControlID="EntityDataSource4" UpdatePanelCssClass="" />
                 </UpdatedControls>
             </telerik:AjaxSetting>
         </AjaxSettings>
     </telerik:RadAjaxManager>
     <div class="row-fluid">
          <div class="block">
            <div class="navbar navbar-inner block-header">
                <div class="muted pull-left">Best Deals</div>


                <telerik:RadGrid ID="RadGrid2" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AllowCustomPaging="True" AllowFilteringByColumn="True" AllowMultiRowEdit="True" AllowMultiRowSelection="True" AllowPaging="True" AllowSorting="True" AutoGenerateDeleteColumn="True" AutoGenerateEditColumn="True" AutoGenerateHierarchy="True" CellSpacing="0" DataSourceID="EntityDataSource2" GridLines="None">
                    <MasterTableView AllowFilteringByColumn="False" AutoGenerateColumns="False" CommandItemDisplay="Top" DataKeyNames="Id" DataSourceID="EntityDataSource2">
                        <RowIndicatorColumn Visible="False">
                        </RowIndicatorColumn>
                        <ExpandCollapseColumn Created="True">
                        </ExpandCollapseColumn>
                        <Columns>
                            <telerik:GridBoundColumn DataField="Id" DataType="System.Int32" FilterControlAltText="Filter Id column" HeaderText="Id" ReadOnly="True" SortExpression="Id" UniqueName="Id">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ContryName" FilterControlAltText="Filter ContryName column" HeaderText="ContryName" SortExpression="ContryName" UniqueName="ContryName">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ArDecription" FilterControlAltText="Filter ArDecription column" HeaderText="ArDecription" SortExpression="ArDecription" UniqueName="ArDecription">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ArContryName" FilterControlAltText="Filter ArContryName column" HeaderText="ArContryName" SortExpression="ArContryName" UniqueName="ArContryName">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="EnDescription" FilterControlAltText="Filter EnDescription column" HeaderText="EnDescription" SortExpression="EnDescription" UniqueName="EnDescription">
                            </telerik:GridBoundColumn>
                        </Columns>
                    </MasterTableView>
                </telerik:RadGrid>
                <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Conturies">
                </asp:EntityDataSource>
                <hr />
                <telerik:RadGrid ID="RadGrid3" runat="server" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellSpacing="0" DataSourceID="EntityDataSource3" GridLines="None" ShowGroupPanel="True">
                    <ClientSettings AllowColumnsReorder="True" AllowDragToGroup="True" ReorderColumnsOnClient="True">
                        <Selecting AllowRowSelect="True" />
                        <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                    </ClientSettings>
                    <MasterTableView AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AllowCustomPaging="True" AllowCustomSorting="True" AllowMultiColumnSorting="True" CommandItemDisplay="Top" DataKeyNames="Id" DataSourceID="EntityDataSource3" EditMode="PopUp">
                        <CommandItemSettings ShowCancelChangesButton="True" ShowExportToExcelButton="True" ShowExportToPdfButton="True" ShowExportToWordButton="True" ShowRefreshButton="False" ShowSaveChangesButton="True" />
                        <RowIndicatorColumn Visible="False">
                        </RowIndicatorColumn>
                        <ExpandCollapseColumn Created="True">
                        </ExpandCollapseColumn>
                        <Columns>
                            <telerik:GridBoundColumn DataField="Id" DataType="System.Int32" FilterControlAltText="Filter Id column" HeaderText="Id" ReadOnly="True" SortExpression="Id" UniqueName="Id">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="CityName" FilterControlAltText="Filter CityName column" HeaderText="CityName" SortExpression="CityName" UniqueName="CityName">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Description" FilterControlAltText="Filter Description column" HeaderText="Description" SortExpression="Description" UniqueName="Description">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ConturyId" DataType="System.Int32" FilterControlAltText="Filter ConturyId column" HeaderText="ConturyId" SortExpression="ConturyId" UniqueName="ConturyId">
                            </telerik:GridBoundColumn>
                        </Columns>
                    </MasterTableView>
                </telerik:RadGrid>
                <asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Cities">
                </asp:EntityDataSource>
                <hr />
                <br />
                <telerik:RadGrid ID="RadGrid4" runat="server" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellSpacing="0" DataSourceID="EntityDataSource4" GridLines="None" ShowGroupPanel="True">
                    <ClientSettings AllowColumnsReorder="True" AllowDragToGroup="True" ReorderColumnsOnClient="True">
                        <Selecting AllowRowSelect="True" />
                        <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                    </ClientSettings>
                    <MasterTableView DataKeyNames="Id" DataSourceID="EntityDataSource4">
                        <Columns>
                            <telerik:GridBoundColumn DataField="Id" DataType="System.Int32" FilterControlAltText="Filter Id column" HeaderText="Id" ReadOnly="True" SortExpression="Id" UniqueName="Id">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="LocationName" FilterControlAltText="Filter LocationName column" HeaderText="LocationName" SortExpression="LocationName" UniqueName="LocationName">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Descrition" FilterControlAltText="Filter Descrition column" HeaderText="Descrition" SortExpression="Descrition" UniqueName="Descrition">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="CityId" DataType="System.Int32" FilterControlAltText="Filter CityId column" HeaderText="CityId" SortExpression="CityId" UniqueName="CityId">
                            </telerik:GridBoundColumn>
                        </Columns>
                    </MasterTableView>
                </telerik:RadGrid>
                <asp:EntityDataSource ID="EntityDataSource4" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Locations">
                </asp:EntityDataSource>
                <br />
                
            </div>
              <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteColumn="True" AutoGenerateEditColumn="True" CellSpacing="0" DataSourceID="EntityDataSource1" GridLines="None" ShowGroupPanel="True">
                  <ClientSettings AllowColumnsReorder="True" AllowDragToGroup="True">
                      <Selecting AllowRowSelect="True" />
                      <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                  </ClientSettings>
                  <MasterTableView AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AllowCustomPaging="True" AllowCustomSorting="True" AllowMultiColumnSorting="True" AllowNaturalSort="False" CommandItemDisplay="Top" DataKeyNames="Id" DataSourceID="EntityDataSource1">
                      <RowIndicatorColumn Visible="False">
                      </RowIndicatorColumn>
                      <ExpandCollapseColumn Created="True">
                      </ExpandCollapseColumn>
                      <Columns>
                          <telerik:GridBoundColumn DataField="Id" DataType="System.Int32" FilterControlAltText="Filter Id column" HeaderText="Id" ReadOnly="True" SortExpression="Id" UniqueName="Id">
                          </telerik:GridBoundColumn>
                          <telerik:GridBoundColumn DataField="Title" FilterControlAltText="Filter Title column" HeaderText="Title" SortExpression="Title" UniqueName="Title">
                          </telerik:GridBoundColumn>
                          <telerik:GridBoundColumn DataField="Description" FilterControlAltText="Filter Description column" HeaderText="Description" SortExpression="Description" UniqueName="Description">
                          </telerik:GridBoundColumn>
                          <telerik:GridBoundColumn DataField="price" FilterControlAltText="Filter price column" HeaderText="price" SortExpression="price" UniqueName="price">
                          </telerik:GridBoundColumn>
                          <telerik:GridBoundColumn DataField="image1" FilterControlAltText="Filter image1 column" HeaderText="image1" HtmlEncode="True" SortExpression="image1" UniqueName="image1">
                          </telerik:GridBoundColumn>
                          <telerik:GridBoundColumn DataField="image2" FilterControlAltText="Filter image2 column" HeaderText="image2" SortExpression="image2" UniqueName="image2">
                          </telerik:GridBoundColumn>
                          <telerik:GridBoundColumn DataField="image3" FilterControlAltText="Filter image3 column" HeaderText="image3" SortExpression="image3" UniqueName="image3">
                          </telerik:GridBoundColumn>
                          <telerik:GridBoundColumn DataField="LocationId" DataType="System.Int32" FilterControlAltText="Filter LocationId column" HeaderText="LocationId" SortExpression="LocationId" UniqueName="LocationId">
                          </telerik:GridBoundColumn>
                      </Columns>
                      <BatchEditingSettings SaveAllHierarchyLevels="True" />
                  </MasterTableView>
              </telerik:RadGrid>

    
              <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="RealStatProfiles">
              </asp:EntityDataSource>

    
              <div id="Grid">

              </div>
              <div id="x"> Hello Word</div>
    
         </div>
     </div>

</asp:Content>

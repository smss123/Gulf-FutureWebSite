<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteControlPanal/ControlPanalMasterPage.Master" AutoEventWireup="true" CodeBehind="bestDealsControl.aspx.cs" Inherits="WebSite.WebSiteControlPanal.bestDealsControl" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

   
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           <!------------------- Kendo Ui----------------------->
    <link href="../styles/kendo.common.min.css" rel="stylesheet" />
    <link href="../styles/kendo.default.min.css" rel="stylesheet" />
    <%--<script src="../Scripts/js/jquery.min.js"></script>--%>
    <script src="../Scripts/js/kendo.web.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     

      <%--  <div id="grid" style="width:100%"></div>
              <script>
                  var dataSource = new kendo.data.DataSource({
                      transport: {
                          read: {
                              url: "../Service/GulfService.asmx/CountryGetAll",
                              dataType: "json",
                              type: "POST"
                          }
                      },
                      pageSize: 10
                  });
                  $("#grid").kendoGrid({
                      dataSource: dataSource,
                      pageable: true,
                      columns: [
                          {
                              title: "ID", field: "Id"
                          },
                          {
                              title: "Country Name-English", field: "EnContryName"
                          },
                          {
                              title: "Country Description-English", field: "EnDescription"
                          },
                          {
                              title: "Country Name-Arabic", field: "ArContryName"
                          },
                          {
                              title: "Country Description-Arabic", field: "ArDecription"
                          },
                          {

                          }, { command: ["edit", "destroy"], title: "&nbsp;", width: "160px" }]



                      ,
                      selectable: true,
                      editable: "popup" //"inline"
                  });
              </script>--%>   
    
    

     <div class="row-fluid">
         <!------ cOUNTRY aREA----->
          <div class="block">
              <div class="navbar navbar-inner block-header">
                  <div class="muted pull-left">Country Area</div>
              </div>
                 <br />
              <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
              <div style="margin-left:3%">
                  <div class="controls">
                      <ul>

                          <li>
                               Country Name-English:
                              <div class="controls-row">
                                 
                          <asp:TextBox ID="txtEnCountryName" runat="server" CssClass="k-input"></asp:TextBox>
                              </div>
                          </li>

                          <li>
                               Country Description-English:
                              <div class="controls-row">
                                 
                          <asp:TextBox ID="txtEnCountryDescription" runat="server" CssClass="k-input"></asp:TextBox>
                              </div>
                          </li>
                          <li>
                              Country Name-Arabic:
                              <div class="controls-row">
                                  
                          <asp:TextBox ID="txtArCountryName" runat="server" CssClass="k-input"></asp:TextBox>
                              </div>
                          </li>
                          <li>
                               Country Description-Arabic:
                              <div class="controls-row">
                                 
                          <asp:TextBox ID="txtArCountryDescription" runat="server" CssClass="k-input"></asp:TextBox>
                              </div>
                          </li>
                          <li>
                                 <asp:Button ID="btnSave" runat="server" Text="Save"  CssClass="btn btn-primary" Width="220px" OnClick="btnSave_Click"/>
                          </li>
                      </ul>
                     
                  </div>
                  
                  
              </div>
              
              <hr />
              <asp:GridView ID="GrdCountry" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="CountryDataSource" CssClass="table table-hover" AllowPaging="True" AllowSorting="True">
                  <Columns>
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                      <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                      <asp:BoundField DataField="EnContryName" HeaderText=" Country Name-English" SortExpression="EnContryName" />
                      <asp:BoundField DataField="EnDescription" HeaderText="Country Description-English" SortExpression="EnDescription" />
                        <asp:BoundField DataField="ArContryName" HeaderText=" Country Name-Arabic" SortExpression="ArContryName" />
                      <asp:BoundField DataField="ArDecription" HeaderText="Country Description-Arabic" SortExpression="ArDecription" />
                    
                      
                  </Columns>
              </asp:GridView>  
              <asp:EntityDataSource ID="CountryDataSource" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Conturies" EntityTypeFilter="Contury">
              </asp:EntityDataSource>
         </div>

         <div class="block">
             <div class="navbar navbar-inner block-header">
                  <div class="muted pull-left">Cites Area</div>
              </div>
             <div class="controls">
                 <div style="margin-left:3%">
                   
                     <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="CityDataSource" DefaultMode="Insert" OnItemInserted="FormView1_ItemInserted" >
                         
                         <InsertItemTemplate>
                             <br />
                               City Name - Arabic:
                             <div class="controls-row">

                                 <asp:TextBox ID="ArCityNameTextBox" runat="server" Text='<%# Bind("ArCityName") %>' />
                             </div>
                            
                             <br />
                             City Decription - Arabic:
                             <div class="controls-row">
                                 <asp:TextBox ID="ArDecriptionTextBox" runat="server" Text='<%# Bind("ArDecription") %>' />
                             </div>
                              <br />
                             Country:
                              <div class="controls-row">
                                  <asp:DropDownList ID="txtcounties" runat="server" DataSourceID="EntityDataSource1" DataTextField="EnContryName" DataValueField="Id" SelectedValue='<%# Bind("ConturyId") %>'></asp:DropDownList>
                              </div>
          
                             <br />
                             City Name-English:
                             <div class="controls-row">
                                 <asp:TextBox ID="EnCityNameTextBox" runat="server" Text='<%# Bind("EnCityName") %>' />
                             </div>
                            
                             <br />
                             City Description-English:
                              <div class="controls-row">
                                  <asp:TextBox ID="EnDescriptionTextBox" runat="server" Text='<%# Bind("EnDescription") %>' />
                              </div>
                             
                            
                             <br />
                             <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Save" CssClass="btn btn-primary" />
                             &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn" />
                         </InsertItemTemplate>
                         
                     </asp:FormView>
                 </div>
                   <asp:EntityDataSource runat="server" ID="EntityDataSource1" DefaultContainerName="dbContext" ConnectionString="name=dbContext" EnableFlattening="False" EntitySetName="Conturies" EntityTypeFilter="Contury" Select="it.[Id], it.[EnContryName]" ></asp:EntityDataSource>
                 <hr />
                 <asp:GridView ID="GrdCities" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="CityDataSource" CssClass="table table-hover" AllowPaging="True" AllowSorting="True">
                     <Columns>
                         <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                         <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                         <asp:BoundField DataField="ArCityName" HeaderText="City Name-Arabic" SortExpression="ArCityName" />
                         <asp:BoundField DataField="ArDecription" HeaderText="Decription-Arabic" SortExpression="ArDecription" />
                         <asp:TemplateField HeaderText="Country" SortExpression="ConturyId">
                             <EditItemTemplate>
                                 <%--<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ConturyId") %>'></asp:TextBox>--%>
                                 <asp:DropDownList runat="server" ID="CountryDropdown" DataSourceID="CountrySourceForDropDownlist" DataTextField="EnContryName" DataValueField="Id" selectedValue='<%# Bind("ConturyId") %>'></asp:DropDownList>
                                  </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label1" runat="server" Text='<%# Bind("Contury.EnContryName") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:BoundField DataField="EnCityName" HeaderText="City Name-English" SortExpression="EnCityName" />
                         <asp:BoundField DataField="EnDescription" HeaderText="Description-English" SortExpression="EnDescription" />
                     </Columns>
                 </asp:GridView>
                 <asp:EntityDataSource ID="CityDataSource" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Cities" EntityTypeFilter="City" Include="Contury">
                 </asp:EntityDataSource>
             </div>

         </div>

            <div class="block">
                <div class="navbar navbar-inner block-header">
                  <div class="muted pull-left">Local Area</div>
              </div>

                <div class="controls">
                    <div style="margin-left: 3%">

                        <asp:FormView ID="FormView2" runat="server" DataKeyNames="Id" DataSourceID="LocalizeDataSource" DefaultMode="Insert">

                            <InsertItemTemplate>

                                <br />
                                Location Name- Arabic:
                            <div class="controls-row">
                                <asp:TextBox ID="ArLocationNameTextBox" runat="server" Text='<%# Bind("ArLocationName") %>' />
                            </div>


                                <br />

                                Location Descrition-Arabic:
                            <div class="controls-row">
                                <asp:TextBox ID="ArLocationDescritionTextBox" runat="server" Text='<%# Bind("ArLocationDescrition") %>' />
                            </div>
                                <br />
                                City:
                            
                            <div class="controls-row">
                                <asp:DropDownList runat="server" ID="txtCity" DataSourceID="SqlDataSource1" DataTextField="EnCityName" DataValueField="Id" SelectedValue='<%# Bind("CityId") %>'></asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Web_Gulf-FutureConnectionString %>' SelectCommand="SELECT [Id], [EnCityName] FROM [Cities]"></asp:SqlDataSource>
                            </div>
                                <br />
                                Location Name-Engilsh:
                            <div class="controls-row">
                                <asp:TextBox ID="EnLocationNameTextBox" runat="server" Text='<%# Bind("EnLocationName") %>' />
                            </div>

                                <br />
                                Location Description-English:
                            <div class="controls-row">
                                <asp:TextBox ID="EnDescriptionTextBox" runat="server" Text='<%# Bind("EnDescription") %>' />
                            </div>
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn" />
                            </InsertItemTemplate>

                        </asp:FormView>
                        <asp:EntityDataSource ID="LocalizeDataSource" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Locations" EntityTypeFilter="Location">
                        </asp:EntityDataSource>
                    </div>
                    <div class="controls-row">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="LocalizeDataSource" CssClass="table table-hover">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="ArLocationName" HeaderText="ArLocationName" SortExpression="ArLocationName" />
                                <asp:BoundField DataField="ArLocationDescrition" HeaderText="ArLocationDescrition" SortExpression="ArLocationDescrition" />
                                <asp:BoundField DataField="CityId" HeaderText="CityId" SortExpression="CityId" />
                                <asp:BoundField DataField="EnLocationName" HeaderText="EnLocationName" SortExpression="EnLocationName" />
                                <asp:BoundField DataField="EnDescription" HeaderText="EnDescription" SortExpression="EnDescription" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>

         </div>


         <!------DataSources Area---->
         <asp:EntityDataSource runat="server" ID="CountrySourceForDropDownlist" DefaultContainerName="dbContext" ConnectionString="name=dbContext" EnableFlattening="False" EntitySetName="Conturies" EntityTypeFilter="Contury"></asp:EntityDataSource>
                            

         <!--------------------------->

         <div class="block">
             <div class="navbar navbar-inner block-header">
                  <div class="muted pull-left">Real State Area</div>
              </div>


         </div>
     </div>


    <link href="../styles/kendo.common.min.css" rel="stylesheet" />
    <link href="../styles/kendo.metro.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <script src="../Scripts/js/kendo.web.min.js"></script>
                


       
</asp:Content>

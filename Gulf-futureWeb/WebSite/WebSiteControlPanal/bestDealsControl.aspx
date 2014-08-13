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
            <div style="margin-left: 3%">
                <div class="controls">
                    <ul>

                        <li>Country Name-English:
                              <div class="controls-row">

                                  <asp:TextBox ID="txtEnCountryName" runat="server" CssClass="k-input"></asp:TextBox>
                              </div>
                        </li>

                        <li>Country Description-English:
                              <div class="controls-row">

                                  <asp:TextBox ID="txtEnCountryDescription" runat="server" CssClass="k-input"></asp:TextBox>
                              </div>
                        </li>
                        <li>Country Name-Arabic:
                              <div class="controls-row">

                                  <asp:TextBox ID="txtArCountryName" runat="server" CssClass="k-input"></asp:TextBox>
                              </div>
                        </li>
                        <li>Country Description-Arabic:
                              <div class="controls-row">

                                  <asp:TextBox ID="txtArCountryDescription" runat="server" CssClass="k-input"></asp:TextBox>
                              </div>
                        </li>
                        <li>
                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" Width="220px" OnClick="btnSave_Click" />
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
                <div style="margin-left: 3%">

                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="CityDataSource" DefaultMode="Insert" OnItemInserted="FormView1_ItemInserted">

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
                <asp:EntityDataSource runat="server" ID="EntityDataSource1" DefaultContainerName="dbContext" ConnectionString="name=dbContext" EnableFlattening="False" EntitySetName="Conturies" EntityTypeFilter="Contury" Select="it.[Id], it.[EnContryName]"></asp:EntityDataSource>
                <hr />
                <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
                <asp:GridView ID="GrdCities" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource5" CssClass="table table-hover" AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="ArCityName" HeaderText="City Name-Arabic" SortExpression="ArCityName" />
                        <asp:BoundField DataField="ArDecription" HeaderText="Decription-Arabic" SortExpression="ArDecription" />
                        <asp:TemplateField HeaderText="Country" SortExpression="ConturyId">
                            <EditItemTemplate>
                                <%--<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ConturyId") %>'></asp:TextBox>--%>
                                <asp:DropDownList runat="server" ID="CountryDropdown" DataSourceID="CountrySourceForDropDownlist" DataTextField="EnContryName" DataValueField="Id" SelectedValue='<%# Bind("ConturyId") %>'></asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("EnContryName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="EnCityName" HeaderText="City Name-English" SortExpression="EnCityName" />
                        <asp:BoundField DataField="EnDescription" HeaderText="Description-English" SortExpression="EnDescription" />
                    </Columns>
                </asp:GridView>
                <asp:EntityDataSource ID="CityDataSource" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Cities" EntityTypeFilter="City" Include="Contury">
                </asp:EntityDataSource>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Web_Gulf-FutureConnectionString %>" DeleteCommand="DELETE FROM [Cities] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Cities] ([ArCityName], [ArDecription], [ConturyId], [EnCityName], [EnDescription]) VALUES (@ArCityName, @ArDecription, @ConturyId, @EnCityName, @EnDescription)" SelectCommand="SELECT dbo.Cities.Id, dbo.Cities.ArCityName, dbo.Cities.ArDecription, dbo.Cities.ConturyId, dbo.Cities.EnCityName, dbo.Cities.EnDescription, dbo.Conturies.Id AS Expr1, dbo.Conturies.EnContryName FROM dbo.Cities INNER JOIN dbo.Conturies ON dbo.Cities.ConturyId = dbo.Conturies.Id" UpdateCommand="UPDATE [Cities] SET [ArCityName] = @ArCityName, [ArDecription] = @ArDecription, [ConturyId] = @ConturyId, [EnCityName] = @EnCityName, [EnDescription] = @EnDescription WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ArCityName" Type="String" />
                        <asp:Parameter Name="ArDecription" Type="String" />
                        <asp:Parameter Name="ConturyId" Type="Int32" />
                        <asp:Parameter Name="EnCityName" Type="String" />
                        <asp:Parameter Name="EnDescription" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ArCityName" Type="String" />
                        <asp:Parameter Name="ArDecription" Type="String" />
                        <asp:Parameter Name="ConturyId" Type="Int32" />
                        <asp:Parameter Name="EnCityName" Type="String" />
                        <asp:Parameter Name="EnDescription" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>

        </div>

        <div class="block">
            <div class="navbar navbar-inner block-header">
                <div class="muted pull-left">Local Area</div>
            </div>

            <div class="controls">
                <div style="margin-left: 3%">

                    <asp:FormView ID="FormView2" runat="server" DataKeyNames="Id" DataSourceID="LocalizeDataSource" DefaultMode="Insert" OnPageIndexChanging="FormView2_PageIndexChanging" OnItemInserted="FormView2_ItemInserted">

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
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3" CssClass="table table-hover">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="ArLocationName" HeaderText="Location Name-Arabic" SortExpression="ArLocationName" />
                            <asp:BoundField DataField="ArLocationDescrition" HeaderText="Location Descrition-Arabic" SortExpression="ArLocationDescrition" />
                            <asp:BoundField DataField="CityId" HeaderText="City" SortExpression="CityId" />
                            <asp:BoundField DataField="EnLocationName" HeaderText="Location Name-English" SortExpression="EnLocationName" />
                            <asp:BoundField DataField="EnDescription" HeaderText="Location Description-English" SortExpression="EnDescription" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>

        </div>


        <!------DataSources Area---->
        <asp:EntityDataSource runat="server" ID="CountrySourceForDropDownlist" DefaultContainerName="dbContext" ConnectionString="name=dbContext" EnableFlattening="False" EntitySetName="Conturies" EntityTypeFilter="Contury"></asp:EntityDataSource>


        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Web_Gulf-FutureConnectionString %>" DeleteCommand="DELETE FROM [Locations] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Locations] ([ArLocationName], [ArLocationDescrition], [CityId], [EnLocationName], [EnDescription]) VALUES (@ArLocationName, @ArLocationDescrition, @CityId, @EnLocationName, @EnDescription)" SelectCommand="SELECT * FROM [Locations]" UpdateCommand="UPDATE [Locations] SET [ArLocationName] = @ArLocationName, [ArLocationDescrition] = @ArLocationDescrition, [CityId] = @CityId, [EnLocationName] = @EnLocationName, [EnDescription] = @EnDescription WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ArLocationName" Type="String" />
                <asp:Parameter Name="ArLocationDescrition" Type="String" />
                <asp:Parameter Name="CityId" Type="Int32" />
                <asp:Parameter Name="EnLocationName" Type="String" />
                <asp:Parameter Name="EnDescription" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ArLocationName" Type="String" />
                <asp:Parameter Name="ArLocationDescrition" Type="String" />
                <asp:Parameter Name="CityId" Type="Int32" />
                <asp:Parameter Name="EnLocationName" Type="String" />
                <asp:Parameter Name="EnDescription" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


        <!--------------------------->

        <div class="block">
            <div class="navbar navbar-inner block-header">
                <div class="muted pull-left">Real State Area</div>
            </div>
            <div class="controls">
                <div style="margin-left: 3%">
                    <div class="form-signin">
                        <div class="k-form-text-row">
                            Title-Arabic
                            <br />
                            <asp:TextBox ID="txtArTitle" runat="server"></asp:TextBox>
                        </div>
                        <div class="k-form-text-row">
                            Description-Arabic<br />
                            <asp:TextBox ID="txtArDescription" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="k-form-text-row">
                            Title-English<br />
                            <asp:TextBox ID="txtEnTitle" runat="server"></asp:TextBox>
                        </div>
                        <div class="k-form-text-row">
                            Description-English<br />
                            <asp:TextBox ID="txtEnDescription" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="k-form-text-row">
                            Price<br />
                            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                        </div>
                        <div class="k-form-text-row">
                             Estate Type<br />
                            <asp:DropDownList runat="server" ID="txtEstatType">
                                <asp:ListItem Text="Empty land" />
                                <asp:ListItem Text="Buildings" />
                                <asp:ListItem Text="Buildings" />
                                <asp:ListItem Text="Villas" />
                                <asp:ListItem Text="Offices" />
                            </asp:DropDownList>
                        </div>
                         <div class="k-form-text-row">
                             investment Type<br />
                            <asp:DropDownList runat="server">
                                <asp:ListItem Text="Rent" />
                                <asp:ListItem Text="Sale" />
                            </asp:DropDownList>
                        </div>
                        <div class="k-form-text-row">
                             Status <br />
                            <asp:DropDownList runat="server" ID="txtStatus">
                                <asp:ListItem Text="Distinctive" />
                                <asp:ListItem Text="Sale" />
                                <asp:ListItem Text="Rent" />
                            </asp:DropDownList>
                        </div>

                        <div class="k-form-text-row">
                            Location<br />
                            <asp:DropDownList ID="txtLocation" runat="server" DataSourceID="LocationSource" DataTextField="EnLocationName" DataValueField="Id"></asp:DropDownList>
                            <asp:EntityDataSource ID="LocationSource" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableFlattening="False" EntitySetName="Locations" EntityTypeFilter="Location" Select="it.[EnLocationName], it.[Id]">
                            </asp:EntityDataSource>
                        </div>
                           <div class="k-form-text-row">
                                make in Master Page
                               <br />
                               <asp:CheckBox runat="server" CssClass="checkbox" ID="txtisInMasterPage" />
                           
                           </div>


                        <div class="k-form-text-row">
                            Image 1<br />
                            <asp:FileUpload runat="server" ID="img1" />
                        </div>
                        <div class="k-form-text-row">
                            Image 2<br />
                            <asp:FileUpload runat="server" ID="img2" />
                        </div>
                        <div class="k-form-text-row">
                            Image 3<br />
                            <asp:FileUpload runat="server" ID="img3" />
                        </div>
                        <div class="k-form-text-row">
                            Image 4<br />
                            <asp:FileUpload runat="server" ID="img4" />
                        </div>
                        <div class="k-form-text-row">
                            <asp:Button ID="BtnSaveLocaltion" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="BtnSaveLocaltion_Click" />
                        </div>

                        <asp:GridView ID="GridViewRealState" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="ArTitle" HeaderText="Title-Arabic" SortExpression="ArTitle" />
                                <asp:BoundField DataField="ArDescription" HeaderText="Description-Arabic" SortExpression="ArDescription" />
                                <asp:BoundField DataField="EnTitle" HeaderText="Title-English" SortExpression="EnTitle" />
                                <asp:BoundField DataField="EnDescription" HeaderText="Description-English" SortExpression="EnDescription" />
                                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                <asp:TemplateField HeaderText="image1" SortExpression="image1">
                                     <EditItemTemplate>
                                           <asp:Image ID="Image1" runat="server" Height="89px" ImageUrl='<%# Bind("image2") %>' Width="110px" />
                                       
                                      </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" Height="89px" ImageUrl='<%# Bind("image1") %>' Width="110px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="image2" SortExpression="image2">
                                      <EditItemTemplate>
                                           <asp:Image ID="Image2" runat="server" Height="89px" ImageUrl='<%# Bind("image2") %>' Width="110px" />
                                       
                                      </EditItemTemplate>
                                    <ItemTemplate>
                                         <asp:Image ID="Image2" runat="server" Height="89px" ImageUrl='<%# Bind("image2") %>' Width="110px" />
                                       
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="image3" SortExpression="image3">
                                        <EditItemTemplate>
                                           <asp:Image ID="Image3" runat="server" Height="89px" ImageUrl='<%# Bind("image2") %>' Width="110px" />
                                       
                                      </EditItemTemplate>
                                    <ItemTemplate>
                                         <asp:Image ID="Image3" runat="server" Height="89px" ImageUrl='<%# Bind("image3") %>' Width="110px" />
                         
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Image 4" SortExpression="image4">
                                    <ItemTemplate>
                                         <asp:Image ID="Image4" runat="server" Height="89px" ImageUrl='<%# Bind("image4") %>' Width="110px" />
                                       
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="LocationId" HeaderText="LocationId" SortExpression="LocationId" />
                                <asp:BoundField DataField="EstatType" HeaderText="EstatType" SortExpression="EstatType" />
                                <asp:TemplateField HeaderText="status" SortExpression="status">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%#Bind("status")%>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="isInMasterPage" SortExpression="isInMasterPage">
                                    <EditItemTemplate>
                                        <asp:CheckBox ID="che" runat="server" ClientIDMode="Static"  ></asp:CheckBox>
                                        <asp:TextBox ID="txtChecked" runat="server" ClientIDMode="Static" Text='<%#Bind("isInMasterPage")%>' />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="Label2" runat="server"  Checked='<%#Eval("isInMasterPage").ToString()=="true"?true:false%>'></asp:CheckBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <asp:EntityDataSource ID="RealStateDataSource" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="RealStatProfiles" EntityTypeFilter="RealStatProfile">
                        </asp:EntityDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Web_Gulf-FutureConnectionString %>" DeleteCommand="DELETE FROM [RealStatProfiles] WHERE [Id] = @Id" InsertCommand="INSERT INTO [RealStatProfiles] ([ArTitle], [ArDescription], [price], [image1], [image2], [image3], [LocationId], [EnTitle], [EnDescription], [Image4], [EstatType], [status], [isInMasterPage]) VALUES (@ArTitle, @ArDescription, @price, @image1, @image2, @image3, @LocationId, @EnTitle, @EnDescription, @Image4, @EstatType, @status, @isInMasterPage)" SelectCommand="SELECT * FROM [RealStatProfiles]" UpdateCommand="UPDATE [RealStatProfiles] SET [ArTitle] = @ArTitle, [ArDescription] = @ArDescription, [price] = @price, [image1] = @image1, [image2] = @image2, [image3] = @image3, [LocationId] = @LocationId, [EnTitle] = @EnTitle, [EnDescription] = @EnDescription, [Image4] = @Image4, [EstatType] = @EstatType, [status] = @status, [isInMasterPage] = @isInMasterPage WHERE [Id] = @Id">
                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ArTitle" Type="String" />
                                <asp:Parameter Name="ArDescription" Type="String" />
                                <asp:Parameter Name="price" Type="String" />
                                <asp:Parameter Name="image1" Type="String" />
                                <asp:Parameter Name="image2" Type="String" />
                                <asp:Parameter Name="image3" Type="String" />
                                <asp:Parameter Name="LocationId" Type="Int32" />
                                <asp:Parameter Name="EnTitle" Type="String" />
                                <asp:Parameter Name="EnDescription" Type="String" />
                                <asp:Parameter Name="Image4" Type="String" />
                                <asp:Parameter Name="EstatType" Type="String" />
                                <asp:Parameter Name="status" Type="String" />
                                <asp:Parameter Name="isInMasterPage" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ArTitle" Type="String" />
                                <asp:Parameter Name="ArDescription" Type="String" />
                                <asp:Parameter Name="price" Type="String" />
                                <asp:Parameter Name="image1" Type="String" />
                                <asp:Parameter Name="image2" Type="String" />
                                <asp:Parameter Name="image3" Type="String" />
                                <asp:Parameter Name="LocationId" Type="Int32" />
                                <asp:Parameter Name="EnTitle" Type="String" />
                                <asp:Parameter Name="EnDescription" Type="String" />
                                <asp:Parameter Name="Image4" Type="String" />
                                <asp:Parameter Name="EstatType" Type="String" />
                                <asp:Parameter Name="status" Type="String" />
                                <asp:Parameter Name="isInMasterPage" Type="String" />
                                <asp:Parameter Name="Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>


        </div>
    </div>
 

    <link href="../styles/kendo.common.min.css" rel="stylesheet" />
    <link href="../styles/kendo.metro.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <script src="../Scripts/js/kendo.web.min.js"></script>
    <script>

        $(document).ready(function () {
            $("#che").click(function () {
                if($(this).is(':checked')) {
                    $("#txtChecked").val("True");
                } else {
                    $("#txtChecked").val("false");
                }
            });

        });
    </script>



</asp:Content>

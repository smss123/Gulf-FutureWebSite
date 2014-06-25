<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcResultSearch.ascx.cs" Inherits="WebSite.UserControls.UcResultSearch" %>

    
  

<asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1">
    <ItemTemplate>


        
        <DIV class="property-row">
            <DIV class="row">
                <DIV class="property-row-picture col-sm-6 col-md-6 col-lg-4 col-md-6 col-lg-4">
                    <DIV class="property-row-picture-inner">
                        <A href='Property Specifications.aspx?Rst=<%# Eval("Id")%>' class="property-row-picture-target">
                            <img src='<%# Eval("image1") %>' alt="">
                        </A>
                    </DIV>
                    <!-- /.property-row-picture -->
                </DIV>
                <!-- /.property-row-picture -->

                <DIV class="property-row-content col-sm-6 col-md-6 col-lg-8 col-md-6 col-lg-8">
                    <H2 class="center">
                        <A href='Property Specifications.aspx?Rst=<%# Eval("Id")%>'><asp:Label ID="ArTitleLabel" runat="server" Text='<%# Eval("ArTitle") %>' /> </A>
                    </H2>
                    <!-- /.property-row-title -->
                    <DIV class="property-row-price"><asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />  ر .ع</DIV>
                    <!-- /.property-row-price -->
                    <H4 class="property-row-subtitle">
                        <A href="Property Specifications.html">مواصفات العقار</A>
                    </H4>
                    <!-- /.property-row-subtitle -->
                    <P class="property-row-body">
                       <asp:Label ID="ArDescriptionLabel" runat="server" Text='<%# Eval("ArDescription") %>' />
                    </P>
                    <!-- /.property-row-body -->
                </DIV>
                <!-- /.property-row-content -->
            </DIV>
            <!-- /.row -->
        </DIV><!-- /.property-row -->







        <%-----------------------------------------------------------------------------------%>
       
       
       
      
       
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web_Gulf-FutureConnectionString %>" SelectCommand="SELECT * FROM [RealStatProfiles] WHERE (([price] >= @price) AND ([price] <= @price2) AND ([EstatType] = @EstatType) AND ([LocationId] = @LocationId) AND ([status] = @status)) ORDER BY [Id] DESC, [ArTitle] DESC">
    <SelectParameters>
        <asp:QueryStringParameter DefaultValue="" Name="price" QueryStringField="from" Type="String" />
        <asp:QueryStringParameter Name="price2" QueryStringField="to" Type="String" />
        <asp:QueryStringParameter Name="EstatType" QueryStringField="type" Type="String" />
        <asp:QueryStringParameter Name="LocationId" QueryStringField="locID" Type="Int32" />
        <asp:QueryStringParameter Name="status" QueryStringField="statusX" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>

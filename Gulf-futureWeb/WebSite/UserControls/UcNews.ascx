<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcNews.ascx.cs" Inherits="WebSite.UserControls.UcNews" %>
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="EntityDataSource2">
    <ItemTemplate>
        <div class="post clearfix">
            <div class="row">
                <div class="post-date col-sm-1">
                    <strong><%#DateTime.Parse(Eval("DateOf").ToString()).Day.ToString() %></strong>
                    <span><%#DateTime.Parse(Eval("DateOf").ToString()).ToString("MMM") %> </span>
                    <strong><%#DateTime.Parse(Eval("DateOf").ToString()).Year.ToString() %> </strong>
                </div>
                <!-- /.post-date -->

                <div class="post-picture col-sm-3">
                    <div class="post-picture-inner">
                        <a href="NewsDetails.aspx?Rst=<%#Eval("ID") %>" class="post-picture-target">
                            <img src='<%#Eval("photo") %>' alt="" class="img-responsive">
                        </a>
                        &nbsp;&nbsp;<!-- /.post-picture-target --></div>
                    <!-- /.post-picture-inner -->
                </div>
                <!-- /.post-picture -->

                <div class="post-content col-sm-8">
                    <h3 class="post-title"><a href="NewsDetails.aspx?Rst=<%#Eval("ID") %>"><%#Eval("ArCaption") %> </a></h3>
                    <p>
                       <%#Eval("ArSummary") %>                        
                    </p>
                    <a href="NewsDetails.aspx?Rst=<%#Eval("ID") %>" >المزيد </a>
                </div>
                <!-- /.post-content-->
            </div>
            <!-- /.row -->
        </div>
                                            <!-- /.post -->
    </ItemTemplate>
</asp:Repeater>

<asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableFlattening="False" EntitySetName="OurNews" EntityTypeFilter="OurNews" AutoGenerateOrderByClause="True">
</asp:EntityDataSource>

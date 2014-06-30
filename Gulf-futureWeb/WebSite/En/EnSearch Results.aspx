<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnSearch_Results.aspx.cs" Inherits="WebSite.EN.EnSearch_Results" %>

<%@ Register Src="~/UserControls/UcResultSearch.ascx" TagPrefix="uc1" TagName="UcResultSearch" %>

<!doctype html>
<html>
    <!-- Mirrored from html.realocation.byaviators.com/ by HTTrack Website Copier/3.x [XR&CO'2010], Wed, 02 Apr 2014 09:18:48 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="#">
        <link rel="stylesheet" type="text/css" href="assets/libraries/font-awesome/css/font-awesome.css" media="screen, projection">
        <link rel="stylesheet" type="text/css" href="assets/libraries/jquery-bxslider/jquery.bxslider.css" media="screen, projection">
        <link rel="stylesheet" type="text/css" href="assets/libraries/flexslider/flexslider.css" media="screen, projection">
        <link rel="stylesheet" type="text/css" href="assets/css/realocation.css" media="screen, projection" id="css-main">
        <link href="../fonts.googleapis.com/css975a.css?family=Raleway:400,700" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="DroidKufi/style.css">
        <title>all</title>
    </head>
    <body>
        <div id="wrapper">
            <div id="header-wrapper">
                <img src="assets/img/banar.jpg" />
                <div id="header">
                    <div id="header-inner">
                        <div class="header-bar">
                        </div><!-- /.header-bar -->

                        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".header-navigation">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <div class="header-navigation">
                            <div class="container">
                                <div class="row">
                                    <UL class="header-nav nav nav-pills">
                                        <LI>
                                            <A href="EnDefault.aspx">Home</A>
                                        </LI>
                                        <LI>
                                            <A href="EnAbout Us.aspx">About Us </A>
                                        </LI>
                                        <LI class="menuparent">
                                            <A href="#">Services </A>
                                            <UL class="sub-menu">
                                            <%
                                            string ser;
                                            //--------our service here 
                                            foreach (var item in this.Ourservice)
                                            {
                                                ser = string.Format("<li><a href='EnOurSerivcesX.aspx?SID={0}'>{1} </a></li>", item.Id, item.EnOurService);
                                                this.Response.Write(ser);
                                            }
                                                    
                                            %>
                                            </UL>
                                        </LI>
                                        <LI>
                                            <A href="EnPhoto Gallery.aspx">Photo Gallery </A>
                                        </LI>
                                        <LI>
                                            <A href="EnNews.aspx">New News </A>
                                        </LI>
                                        <LI>
                                            <A href="EnAdd a Listing.aspx">Add real estate </A>
                                        </LI>
                                        <LI>
                                            <A href="EnContact Us.aspx">Contact Us </A>
                                        </LI>
                                        <LI>
                                            <A href="../Default.aspx">عربي </A>
                                        </LI>
                                    </UL>
                                </div>
                            </div><!-- /.container -->
                        </div><!-- /.header-navigation -->
                    </div><!-- /.header-inner -->
                </div><!-- /#header -->
            </div><!-- /#header-wrapper -->

            <div id="main-wrapper">
                <div id="main">
                    <div id="main-inner">
                        <div class="container">
                            <div class="block-content block-content-small-padding">
                                <div class="block-content-inner">
                                    <div class="row">
                                        <div class="col-sm-9">

                                            <br>
                                            <h2 class="h2center">Search result</h2>
                                            <div class="property-rows">

                                                <uc1:UcResultSearch runat="server" ID="UcResultSearch" />
                                            </div><!-- /.property-rows -->
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="sidebar">
                                                <div class="sidebar-inner">
                                                    <div class="widget">

                                                        <br><br><br>
                                                        <div class="widget-content" dir="rtl">
                                                            <form runat="server">
                                                                <div class="row">
                                                                    <div class="form-group col-sm-12">
                                                                        <label> country </label>
                                                                        <DIV class="select-wrapper">
                                                                            <asp:DropDownList runat="server" ID="txtcountry" DataSourceID="countryDataSource" DataTextField="ArContryName" DataValueField="Id" AutoPostBack="True" class="form-control">
                                                                            </asp:DropDownList>
                                                                            <asp:EntityDataSource runat="server" ID="countryDataSource" DefaultContainerName="dbContext" ConnectionString="name=dbContext" EnableFlattening="False" EntitySetName="Conturies" EntityTypeFilter="Contury"></asp:EntityDataSource>

                                                                        </DIV>
                                                                    </div><!-- /.form-group -->
                                                                    <div class="form-group col-sm-12">
                                                                        <label> city </label>
                                                                        <DIV class="select-wrapper">
                                                                            <asp:DropDownList runat="server" ID="txtCity" DataSourceID="CityDataSource" DataTextField="ArCityName" DataValueField="Id" class="form-control" AutoPostBack="true">
                                                                            </asp:DropDownList>
                                                                            <asp:EntityDataSource runat="server" ID="CityDataSource" DefaultContainerName="dbContext" ConnectionString="name=dbContext" EnableFlattening="false" EntitySetName="Cities" EntityTypeFilter="City" AutoGenerateWhereClause="true" Select="" Where="">

                                                                                <WhereParameters>
                                                                                    <asp:ControlParameter ControlID="txtcountry" DefaultValue="-1" Name="ConturyId" Type="Int32" />
                                                                                </WhereParameters>
                                                                            </asp:EntityDataSource>

                                                                        </DIV>
                                                                    </div><!-- /.form-group -->
                                                                    <div class="form-group col-sm-12">
                                                                        <label> Neighborhood </label>
                                                                        <asp:DropDownList runat="server" DataSourceID="LocationDataSource" DataTextField="ArLocationName" DataValueField="Id" class="form-control" AutoPostBack="true" ID="txtLoc">
                                                                        </asp:DropDownList>
                                                                        <asp:EntityDataSource runat="server" ID="LocationDataSource" DefaultContainerName="dbContext" ConnectionString="name=dbContext" EnableFlattening="False" EntitySetName="Locations" EntityTypeFilter="Location" Select="" Where="" AutoGenerateWhereClause="true">
                                                                            <WhereParameters>
                                                                                <asp:ControlParameter ControlID="txtCity" DefaultValue="-1" Name="CityId" Type="Int32" />
                                                                            </WhereParameters>
                                                                        </asp:EntityDataSource>

                                                                    </div><!-- /.form-group -->
                                                                    <div class="form-group col-sm-12">
                                                                        <label>Property Type </label>
                                                                        <DIV class="select-wrapper">

                                                                            <asp:DropDownList runat="server" ID="txtEstatType" class="form-control">
                                                                                <asp:ListItem Text="Empty land" />
                                                                                <asp:ListItem Text="Buildings" />
                                                                                <asp:ListItem Text="Buildings" />
                                                                                <asp:ListItem Text="Villas" />
                                                                                <asp:ListItem Text="Offices" />
                                                                            </asp:DropDownList>
                                                                        </DIV>
                                                                    </div><!-- /.form-group -->
                                                                    <DIV class="form-group col-sm-12">
                                                                        <LABEL>Type of investment </LABEL>

                                                                        <DIV class="select-wrapper">

                                                                            <asp:DropDownList runat="server" ID="txtStatus" class="form-control">
                                                                                <asp:ListItem Text="Distinctive" />
                                                                                <asp:ListItem Text="Sale" />
                                                                                <asp:ListItem Text="Rent" />
                                                                            </asp:DropDownList>

                                                                        </DIV>
                                                                        <!-- /.select-wrapper -->
                                                                    </DIV>
                                                                    <div class="form-group col-sm-6">
                                                                        <label> price From </label>
                                                                        <asp:TextBox runat="server" ID="txtfrom" class="form-control" placeholder="100 R.O " />
                                                                    </div><!-- /.form-group -->
                                                                    <div class="form-group col-sm-6">
                                                                        <label> السعر إلى </label>
                                                                        <asp:TextBox runat="server" ID="txtTo" class="form-control" placeholder="90000 R.O " />
                                                                    </div><!-- /.form-group -->
                                                                </div><!-- /.row -->
                                                                <div class="form-group">
                                                                    <asp:Button Text="Find" runat="server"   class="btn btn-primary btn-inversed btn-block" id="btnSearch" OnClick="btnSearch_Click"/>
                                                                </div><!-- /.form-group -->
                                                            </form>
                                                        </div><!-- /.widget-content -->
                                                    </div><!-- /.widget -->

                                                    <br>
                                                    <div class="widget">

                                                        <h2 class="center"> Specials </h2>
                                                        <div class="properties-small-list">

                                                        <%
                                                            
                                                        string realstateX;
                                                        foreach (var item in this.RealStatProfileList)
                                                        {
                                                            realstateX = string.Format(" <div class='property-small clearfix'> <div class='property-small-picture col-sm-12 col-md-4'><div class='property-small-picture-inner'><a href='ENProperty Specifications.aspx?Rst={0}' class='property-small-picture-target'><img src='{1}' alt=''></a> </div></div><div class='property-small-content col-sm-12 col-md-8' dir='rtl'> <h3 class='property-small-title'><a href='ENProperty Specifications.aspx?Rst={2}'>{3} </a></h3><div class='property-small-price'>{4}R.O <span class='property-small-price-suffix'>/  Price </span></div> </div> </div>", item.Id, item.image1, item.Id, item.EnTitle, item.price);
                                                            this.Response.Write(realstateX);
                                                        }
                                                            
                                                            
                                                            
                                                        %>

                                                        </div><!-- /.properties-small-list -->
                                                    </div><!-- /.widget -->
                                                </div><!-- /.sidebar-inner -->
                                            </div><!-- /.sidebar -->
                                        </div>
                                    </div><!-- /.row -->
                                </div><!-- /.block-content-inner -->
                            </div><!-- /.block-content -->
                        </div><!-- /.container -->
                    </div><!-- /#main-inner -->
                </div><!-- /#main -->
            </div>

            <hr>
            <div class="btn-group" align="center">
                <a href="#">
                    <button type="button" class="btn btn-default">1</button>
                </a>
                <a href="#">
                    <button type="button" class="btn btn-default">2</button>
                </a>
                <a href="#">
                    <button type="button" class="btn btn-default">3</button>
                </a>
                <a href="#">
                    <button type="button" class="btn btn-default">4</button>
                </a>
                <a href="#">
                    <button type="button" class="btn btn-default">5</button>
                </a>
                <a href="#">
                    <button type="button" class="btn btn-default">6</button>
                </a>
                <a href="#">
                    <button type="button" class="btn btn-default">7</button>
                </a>
                <a href="#">
                    <button type="button" class="btn btn-default">8</button>
                </a>
                <a href="#">
                    <button type="button" class="btn btn-default">9</button>
                </a>
                <a href="#">
                    <button type="button" class="btn btn-default">10</button>
                </a>
            </div>
            <br><br>
            <div id="main-wrapper">
                <div class="container">
                </div><!-- container -->

                <DIV id="footer-wrapper" style="display: block;">
                    <DIV id="footer">
                        <DIV id="footer-inner">
                            <DIV class="footer-bottom">
                                <DIV class="container">
                                    <P class="center no-margin">
                                    MUSCAT - Oman - Ghubra North -
                                    Phone : 24615249/24615303 - Fax : 24615250
                                    <BR>
                                    Mobile : 00968 9667887 -
                                    E-mail : info@gulf-future.com
                                    <DIV class="center">
                                        <UL class="social">
                                            <LI>
                                                <A href="https://www.facebook.com/gulffuture2014" target="_blank">
                                                    <IMG src="assets/img/flinkes/1398822022_46-facebook.png" />
                                                </A>
                                            </LI>
                                            <LI>
                                                <A href="https://twitter.com/gulffuture2014" target="_blank">
                                                    <IMG src="assets/img/flinkes/1398822034_43-twitter.png" />
                                                </A>
                                            </LI>
                                            <LI>
                                                <A href="https://plus.google.com/u/2/101857190209490041914/about" target="_blank">
                                                    <IMG src="assets/img/flinkes/1398821926_80-google-plus.png" />
                                                </A>
                                            </LI>
                                            <LI>
                                                <A href="http://www.linkedin.com/profile/view?id=342612625&trk=nav_responsive_tab_profile_pic" target="_blank">
                                                    <IMG src="assets/img/flinkes/1398822003_51-linkedin.png" />
                                                </A>
                                            </LI>
                                            <LI>
                                                <A href="http://instagram.com/gulffuture2014" target="_blank">
                                                    <IMG src="assets/img/flinkes/1398822458_instagram_circle_black.png" />
                                                </A>
                                            </LI>
                                            <LI>
                                                <A href="https://www.youtube.com/channel/UCi3yy_Q_UpK8JmUFadoXhIw" target="_blank">
                                                    <IMG src="assets/img/flinkes/1398822006_58-youtube.png" />
                                                </A>
                                            </LI>
                                        </UL>
                                        <!-- /.social -->
                                    </DIV>
                                    <!-- /.center -->
                                </DIV>
                                <!-- /.container -->
                            </DIV>
                            <!-- /.footer-bottom -->
                        </DIV>
                        <!-- /#footer-inner -->
                    </DIV>
                    <!-- /#footer -->
                </DIV><!-- /#footer-wrapper -->
            </div>
        </div>
        <!-- /wrapper -->
        <script type="text/javascript" src="assets/js/jquery.js"></script>
        <script type="text/javascript" src="assets/libraries/isotope/jquery.isotope.min.js"></script>
        <script type="text/javascript" src="../maps.googleapis.com/maps/api/jsd7d7html.html?v=3&amp;sensor=true"></script>
        <script type="text/javascript" src="assets/js/gmap3.infobox.js"></script>
        <script type="text/javascript" src="assets/js/gmap3.clusterer.js"></script>
        <script type="text/javascript" src="assets/js/map.js"></script>
        <script type="text/javascript" src="assets/libraries/bootstrap-sass/vendor/assets/javascripts/bootstrap/transition.js"></script>
        <script type="text/javascript" src="assets/libraries/bootstrap-sass/vendor/assets/javascripts/bootstrap/collapse.js"></script>
        <script type="text/javascript" src="assets/libraries/jquery-bxslider/jquery.bxslider.min.js"></script>
        <script type="text/javascript" src="assets/libraries/flexslider/jquery.flexslider.js"></script>
        <script type="text/javascript" src="assets/js/jquery.chained.min.js"></script>
        <script type="text/javascript" src="assets/js/realocation.js"></script>

    </body>
    <!-- Mirrored from html.realocation.byaviators.com/ by HTTrack Website Copier/3.x [XR&CO'2010], Wed, 02 Apr 2014 09:21:33 GMT -->
</html>
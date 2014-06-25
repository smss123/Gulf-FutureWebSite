<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebSite.Default" %>

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

        <title>شركه مستقبل الخليج</title>
    </head>
    <body>
        <div id="wrapper">
            <div id="header-wrapper">
                <img src="assets/img/banar.jpg" />
                <div id="header">
                    <div id="header-inner">
                        <div class="header-bar">
                        </div>
                        <!-- /.header-bar -->

                        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".header-navigation">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <div class="header-navigation">
                            <div class="container">
                                <div class="row">
                                    <ul class="header-nav nav nav-pills">
                                        <li>
                                            <a href="#">الرئيسية </a>
                                        </li>
                                        <li>
                                            <a href="About Us.aspx">من نحن </a>
                                        </li>
                                        <li class="menuparent">
                                            <a href="#">خدماتنا </a>
                                            <ul class="sub-menu">

                                            <%
                                            string ser;
                                            //--------our service here 
                                            foreach (var item in this.Ourservice)
                                            {
                                                ser = "<li><a href='OurSerivcesX.aspx?SID=" + item.Id + "'>" + item.ArOurService + " </a></li>  ";
                                                Response.Write(ser);
                                            }
                                                    
                                            %>

                                            </ul>
                                        </li>
                                        <li>
                                            <a href="Photo Gallery.aspx">معرض الصور </a>
                                        </li>
                                        <li>
                                            <a href="News.aspx">جديد الاخبار </a>
                                        </li>
                                        <li>
                                            <a href="Add a Listing.aspx">أصف عقارك </a>
                                        </li>
                                        <li>
                                            <a href="Contact Us.aspx">اتصل بنا </a>
                                        </li>
                                        <li>
                                            <a href="English/index.aspx">English </a>
                                        </li>
                                    </ul>
                                    <!-- /.header-nav -->
                                </div>
                            </div>
                            <!-- /.container -->
                        </div>
                        <!-- /.header-navigation -->
                    </div>
                    <!-- /.header-inner -->
                </div>
                <!-- /#header -->
            </div>
            <!-- /#header-wrapper -->

            <div id="main-wrapper">
                <div id="main">
                    <div id="main-inner">
                        <!-- slider -->
                        <div class="static-image">
                            <div class="static-image-inner">
                                <div class="flexslider">
                                    <ul class="slides">
                                    <%
                                    string slide;
                                    foreach (var item in Slides)
                                    {
                                        slide = "<li data-thumb='" + item.ArSlide + "'>" +
                                                "<img src='" + item.ArSlide + "'alt=''>" +
                                                "</li>";
                                    
                                        Response.Write(slide);  
                                    }
                                    
                                    %>
                                    <%--<li data-thumb="assets/img/tmp/properties/large/5xxl.jpg">
                                    <img src="assets/img/tmp/properties/large/5xxl.jpg" alt="">
                                    </li>
                                    
                                    <li data-thumb="assets/img/tmp/properties/large/5xxl.jpg">
                                    <img src="assets/img/tmp/properties/large/5xxl.jpg" alt="">
                                    </li>
                                    
                                    <li data-thumb="assets/img/tmp/properties/large/5xxl.jpg">
                                    <img src="assets/img/tmp/properties/large/5xxl.jpg" alt="">
                                    </li>
                                    
                                    <li data-thumb="assets/img/tmp/properties/large/5xxl.jpg">
                                    <img src="assets/img/tmp/properties/large/5xxl.jpg" alt="">
                                    </li>--%>
                                    </ul>
                                    <!-- /.slides -->
                                </div>
                                <!-- /.flexslider -->
                            </div>
                            <!-- /.static-image-inner -->
                            <!-- /end slider-->

                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-4 col-sm-offset-8 col-md-3 col-md-offset-9 map-navigation-positioning">
                                        <div class="map-navigation-wrapper">

                                            <div class="map-navigation">

                                                <form runat="server" class="clearfix">
                                                    <div class="form-group col-sm-12">
                                                        <label>الدولة </label>
                                                        <div class="select-wrapper">
                                                            <asp:DropDownList runat="server" ID="txtcountry" DataSourceID="countryDataSource" DataTextField="ArContryName" DataValueField="Id" AutoPostBack="True" class="form-control" >
                                                            </asp:DropDownList>
                                                            <asp:EntityDataSource runat="server" ID="countryDataSource" DefaultContainerName="dbContext" ConnectionString="name=dbContext" EnableFlattening="False" EntitySetName="Conturies" EntityTypeFilter="Contury"></asp:EntityDataSource>

                                                        </div>
                                                        <!-- /.select-wrapper -->
                                                    </div>
                                                    <!-- /.form-group -->

                                                    <div class="form-group col-sm-12">
                                                        <label>المدينة </label>

                                                        <div class="select-wrapper">
                                                            <asp:DropDownList runat="server" ID="txtCity" DataSourceID="CityDataSource" DataTextField="ArCityName" DataValueField="Id" class="form-control" AutoPostBack="true">
                                                            </asp:DropDownList>
                                                            <asp:EntityDataSource runat="server" ID="CityDataSource" DefaultContainerName="dbContext" ConnectionString="name=dbContext" EnableFlattening="false" EntitySetName="Cities" EntityTypeFilter="City" AutoGenerateWhereClause="true" Select="" Where="">
                                                                
                                                                 <WhereParameters>
                                                                    <asp:ControlParameter ControlID="txtcountry" DefaultValue="-1" Name="ConturyId" Type="Int32"  />
                                                                </WhereParameters>
                                                            </asp:EntityDataSource>
                                                            
                                                        </div>
                                                        <!-- /.select-wrapper -->
                                                    </div>
                                                    <!-- /.form-group -->

                                                    <div class="form-group col-sm-12">
                                                        <label>الحي </label>
                                                        <asp:DropDownList runat="server" DataSourceID="LocationDataSource" DataTextField="ArLocationName" DataValueField="Id" class="form-control" AutoPostBack="true" ID="txtLoc">
                                                        </asp:DropDownList>
                                                        <asp:EntityDataSource runat="server" ID="LocationDataSource" DefaultContainerName="dbContext" ConnectionString="name=dbContext" EnableFlattening="False" EntitySetName="Locations" EntityTypeFilter="Location" Select="" Where="" AutoGenerateWhereClause=true>
                                                            <WhereParameters>
                                                                <asp:ControlParameter ControlID="txtCity" DefaultValue="-1" Name="CityId" Type="Int32" />
                                                            </WhereParameters>
                                                        </asp:EntityDataSource>
                                                        
                                                        <!-- /.select-wrapper -->
                                                    </div>
                                                    <!-- /.form-group -->

                                                    <div class="form-group col-sm-12">
                                                        <label>نوع العقار </label>

                                                        <div class="select-wrapper">
                                                           
                                                            <asp:DropDownList runat="server" ID="txtEstatType" class="form-control">
                                                                <asp:ListItem Text="Empty land" />
                                                                <asp:ListItem Text="Buildings" />
                                                                <asp:ListItem Text="Buildings" />
                                                                <asp:ListItem Text="Villas" />
                                                                <asp:ListItem Text="Offices" />
                                                            </asp:DropDownList>
                                                        </div>
                                                        <!-- /.select-wrapper -->
                                                    </div>

                                                    <div class="form-group col-sm-12">
                                                        <label>نوع الاستثمار </label>

                                                        <div class="select-wrapper">
                                                            
                                                            <asp:DropDownList runat="server" ID="txtStatus" class="form-control">
                                                                <asp:ListItem Text="Distinctive" />
                                                                <asp:ListItem Text="Sale" />
                                                                <asp:ListItem Text="Rent" />
                                                            </asp:DropDownList>
                                                           
                                                        </div>
                                                        <!-- /.select-wrapper -->
                                                    </div>
                                                    <!-- /.form-group -->

                                                    <div class="form-group col-sm-6">
                                                        <label>السعر من </label>
                                                        
                                                        <asp:TextBox runat="server" ID="txtfrom" class="form-control" placeholder="100 ر.ع " />
                                                    </div>
                                                    <!-- /.form-group -->

                                                    <div class="form-group col-sm-6">
                                                        <label>السعر إلى </label>
                                                       <asp:TextBox runat="server" ID="txtTo" class="form-control" placeholder="90000 ر.ع " />
                                                    </div>
                                                    <!-- /.form-group -->

                                                    <div class="form-group col-sm-12">
                                                        
                                                        <asp:Button Text="بحث" runat="server"   class="btn btn-primary btn-inversed btn-block" id="btnSearch" OnClick="btnSearch_Click"/>
                                                    </div>
                                                    <!-- /.form-group -->
                                                </form>
                                            </div>
                                            <!-- /.map-navigation -->

                                        </div>
                                        <!-- /.map-navigation-wrapper -->
                                    </div>
                                    <!-- /.col-sm-3 -->
                                </div>
                                <!-- /.row -->
                            </div>
                            <!-- /.container -->

                        </div>
                        <!-- /.map-wrapper -->
                    </div>
                    <!-- /.block-content-inner -->
                </div>
                <!-- /.block-content -->

                <div id="akhbar" style="width: 60%; height: auto; margin: 0 auto;">

                    <marquee direction="right" width="100%" height="30" style="tahoma: 150%; font-size: 12pt; padding-top: 5px; font-family: Droid Arabic Kufi; color: #006;" onmouseover="this.stop();" onmouseout="this.start();">

                    <%
                    
                    string newsitem;
                    for (int i = 0; i < Ournews.Count; i++)
                    {
                        newsitem = "----" +
                                   "<a href='newsDetails.aspx'>" + Ournews[i].ArCaption + " </a> ";
                        Response.Write(newsitem);
                    }
                        
                    
                    %></marquee>

                </div>

                <div class="container">
                    <!-- SLOGAN -->
                    <div class="block-content background-primary background-map block-content-small-padding fullwidth">
                        <div id="manager">
                        <%
                             
                        //----------------------------------Admin Word Here 

                        Response.Write(AdminWork);    
                             
                        %>
                        </div>
                    </div>
                    <!-- /.block-content-->

                    <DIV class="block-content block-content-small-padding">
                        <DIV class="block-content-inner">
                            <H2 class="center">أفضل العروض </H2>

                            <UL class="properties-filter">
                                <LI class="selected">
                                    <A href="#" data-filter="*">
                                        <SPAN>الكل </SPAN>
                                    </A>
                                </LI>
                                <LI>
                                    <A href="#" data-filter=".property-featured">
                                        <SPAN>المميز </SPAN>
                                    </A>
                                </LI>
                                <LI>
                                    <A href="#" data-filter=".property-rent">
                                        <SPAN>إيجــــار </SPAN>
                                    </A>
                                </LI>
                                <LI>
                                    <A href="#" data-filter=".property-sale">
                                        <SPAN>بيــــع </SPAN>
                                    </A>
                                </LI>
                            </UL>
                            <!-- /.property-filter -->
                        </DIV>
                        <DIV class="properties-items">
                            <DIV class="row">


                                <%
                                    int counterFeature = 0;
                                    try
                                    {
                                        string feat;
                                        foreach (var Fitem in realstate)
                                        {
                                            if (Fitem.isInMasterPage == "True" && Fitem.status == "Distinctive")
                                            {
                                                feat = "<DIV class='property-item property-featured col-sm-6 col-md-3'>" +
                                                       " <DIV class='property-box'> " +
                                                       "<DIV class='property-box-inner'>" +
                                                       "<H3 class='property-box-title'><A href='Property Specifications.html'>" + Fitem.ArTitle + "</A></H3> " +
                                                       "<H4 class='property-box-subtitle'><A href='Property Specifications.html'>" + Fitem.Location.ArLocationName + " </A></H4> " +

                                                       " <DIV class='property-box-label property-box-label-primary'>" + Fitem.status + " </DIV> " +
                                                       " <!-- /.property-box-label -->" +

                                                       "<DIV class='property-box-picture'> " +
                                                       " <DIV class='property-box-price'>" + Fitem.price + " ر.ع</DIV>" +
                                                       "<!-- /.property-box-price -->" +
                                                       "<DIV class='property-box-picture-inner'>" +
                                                       " <A href='Property Specifications.html' class='property-box-picture-target'> " +
                                                       " <IMG src='" + Fitem.image1 + "' alt=''> " +
                                                       " </A>" +
                                                       "<!-- /.property-box-picture-target -->" +
                                                       "</DIV> " +
                                                       "<!-- /.property-picture-inner -->" +
                                                       "</DIV>" +
                                                       "<!-- /.property-picture -->" +

                                                       "</DIV>" +
                                                       "<!-- /.property-box-inner -->" +
                                                       "</DIV>" +
                                                       "<!-- /.property-box -->" +
                                                       "</DIV>";


                                                Response.Write(feat);
                                                if (counterFeature == 3)
                                                {
                                                    break;
                                                }
                                                counterFeature++;

                                            }
                                        }
                                    }
                                    catch (Exception)
                                    {

                                        throw;
                                    }
                                           
                                            
                                               
                                            
                                %>


                                <!-- /.property-box -->

                                <!-- /.property-item -->
                            </DIV>



                            <DIV class="row">


                                <%       //--------------------------Rent
                                    int counterSale = 0;
                                    try
                                    {
                                        string feat;





                                        foreach (var Fitem in realstate)
                                        {
                                            if (Fitem.isInMasterPage == "True" && Fitem.status == "Rent")
                                            {
                                                feat = "<div class='property-item property-rent col-sm-6 col-md-3'>" +
                                        "<div class='property-box'>" +
                                        "<div class='property-box-inner'>" +
                                        "<h3 class='property-box-title'><a href='Property Specifications.html'> "+Fitem.ArTitle+" </a></h3>" +
                                        "<h4 class='property-box-subtitle'><a href='Property Specifications.html'> "+Fitem.Location.ArLocationName+" </a></h4>" +
                                        "<div class='property-box-picture'>" +
                                        "<div class='property-box-price'>"+Fitem.price+" ر.ع </div>" +
                                        "<!-- /.property-box-price -->" +
                                        "<div class='property-box-picture-inner'>" +
                                        "<a href='Property Specifications.html' class='property-box-picture-target'>" +
                                        "<img src='"+Fitem.image1+"' alt=''>" +
                                        "</a><!-- /.property-box-picture-target --> " +
                                        "</div>" +
                                        "<!-- /.property-picture-inner -->" +
                                        "</div>" +
                                        "<!-- /.property-picture -->" +
                                        "</div>" +
                                        "<!-- /.property-box-inner -->" +
                                        "</div>" +
                                        "<!-- /.property-box -->" +
                                        "</div>" +
                                        "<!-- /.property-item -->";

                                                Response.Write(feat);
                                                if (counterSale == 3)
                                                {
                                                    break;
                                                }
                                                counterSale++;

                                            }
                                        }
                                    }
                                    catch (Exception)
                                    {

                                        throw;
                                    }
                                           
                                            
                                               
                                            
                                %>
                            </DIV>



                            <DIV class="row">


                                <%       //--------------------------Rent
                                    int counterXpn = 0;
                                    try
                                    {
                                        string feat;
                                        foreach (var Fitem in realstate)
                                        {

                                            if (Fitem.isInMasterPage == "True" && Fitem.status == "Sale")
                                            {
                                                feat = "<DIV class='property-item property-sale col-sm-6 col-md-3'>" +
                                                      " <DIV class='property-box'> " +
                                                      "<DIV class='property-box-inner'>" +
                                                      "<H3 class='property-box-title'><A href='Property Specifications.html'>" + Fitem.ArTitle + "</A></H3> " +
                                                      "<H4 class='property-box-subtitle'><A href='Property Specifications.html'>"+Fitem.Location.ArLocationName+" </A></H4> " +
                                                      " <DIV class='property-box-label property-box-label-primary'>إيجار </DIV> " +
                                                      " <!-- /.property-box-label -->" +
                                                      "<DIV class='property-box-picture'> " +
                                                      " <DIV class='property-box-price'>300 ر.ع</DIV>" +
                                                      "<!-- /.property-box-price -->" +
                                                      "<DIV class='property-box-picture-inner'>" +
                                                      " <A href='Property Specifications.html' class='property-box-picture-target'> " +
                                                      " <IMG src='assets/img/tmp/properties/medium/12.jpg' alt=''> " +
                                                      " </A>" +
                                                      "<!-- /.property-box-picture-target -->" +
                                                      "</DIV> " +
                                                      "<!-- /.property-picture-inner -->" +
                                                      "</DIV>" +
                                                      "<!-- /.property-picture -->" +
                                                      "</DIV>" +
                                                      "<!-- /.property-box-inner -->" +
                                                      "</DIV>" +
                                                      "<!-- /.property-box -->" +
                                                      "</DIV>";


                                                Response.Write(feat);
                                                if (counterXpn == 3)
                                                {
                                                    break;
                                                }
                                                counterXpn++;

                                            }
                                        }
                                    }
                                    catch (Exception)
                                    {

                                        throw;
                                    }
                                           
                                            
                                               
                                            
                                %>

                                <!-- /.property-item -->


                            </DIV>
                        </DIV>
                        
                        <%--   </DIV--%>
                        <!-- /.row -->

                        

                        <%--<div class="row">
                                    <div class="property-item property-featured col-sm-6 col-md-3">
                                        <div class="property-box">
                                            <div class="property-box-inner">
                                                <h3 class="property-box-title">
                                                    <a href="Property Specifications.html">عقار للإيجار </a>
                                                </h3>
                                                <h4 class="property-box-subtitle">
                                                    <a href="Property Specifications.html">الغبرة الشمالية </a>
                                                </h4>

                                                <div class="property-box-picture">
                                                    <div class="property-box-price">150 ر.ع </div>
                                                    <!-- /.property-box-price -->
                                                    <div class="property-box-picture-inner">
                                                        <a href="Property Specifications.html" class="property-box-picture-target">
                                                            <img src="assets/img/tmp/properties/medium/8.jpg" alt="">
                                                        </a>
                                                        <!-- /.property-box-picture-target -->
                                                    </div>
                                                    <!-- /.property-picture-inner -->
                                                </div>
                                                <!-- /.property-picture -->

                                                <!-- /.property-box-meta -->
                                            </div>
                                            <!-- /.property-box-inner -->
                                        </div>
                                        <!-- /.property-box -->
                                    </div>
                                    <!-- /.property-item -->

                                    <div class="property-item property-sale col-sm-6 col-md-3">
                                        <div class="property-box">
                                            <div class="property-box-inner">
                                                <h3 class="property-box-title">
                                                    <a href="Property Specifications.html">أرض فضاء </a>
                                                </h3>
                                                <h4 class="property-box-subtitle">
                                                    <a href="Property Specifications.html">الحيل الجنوبية </a>
                                                </h4>

                                                <div class="property-box-label property-box-label-primary">للبيع </div>
                                                <!-- /.property-box-label -->

                                                <div class="property-box-picture">
                                                    <div class="property-box-price">55000 ر.ع </div>
                                                    <!-- /.property-box-price -->
                                                    <div class="property-box-picture-inner">
                                                        <a href="Property Specifications.html" class="property-box-picture-target">
                                                            <img src="assets/img/tmp/properties/medium/7.jpg" alt="">
                                                        </a>
                                                        <!-- /.property-box-picture-target -->
                                                    </div>
                                                    <!-- /.property-picture-inner -->
                                                </div>
                                                <!-- /.property-picture -->

                                            </div>
                                            <!-- /.property-box-inner -->
                                        </div>
                                        <!-- /.property-box -->
                                    </div>
                                    <!-- /.property-item -->

                                    <div class="property-item property-rent col-sm-6 col-md-3">
                                        <div class="property-box">
                                            <div class="property-box-inner">
                                                <h3 class="property-box-title">
                                                    <a href="Property Specifications.html">أرض فضاء للإيجار </a>
                                                </h3>
                                                <h4 class="property-box-subtitle">
                                                    <a href="Property Specifications.html">الغبرة الشمالية </a>
                                                </h4>

                                                <div class="property-box-label property-box-label-primary">للإيجار </div>
                                                <!-- /.property-box-label -->

                                                <div class="property-box-picture">
                                                    <div class="property-box-price">1000 ر.ع </div>
                                                    <!-- /.property-box-price -->
                                                    <div class="property-box-picture-inner">
                                                        <a href="Property Specifications.html" class="property-box-picture-target">
                                                            <img src="assets/img/tmp/properties/medium/5.jpg" alt="">
                                                        </a>
                                                        <!-- /.property-box-picture-target -->
                                                    </div>
                                                    <!-- /.property-picture-inner -->
                                                </div>
                                                <!-- /.property-picture -->

                                            </div>
                                            <!-- /.property-box-inner -->
                                        </div>
                                        <!-- /.property-box -->
                                    </div>
                                    <!-- /.property-item -->

                                    <div class="property-item property-sale col-sm-6 col-md-3">
                                        <div class="property-box">
                                            <div class="property-box-inner">
                                                <h3 class="property-box-title">
                                                    <a href="Property Specifications.html">أرض فضاء للاستثمار </a>
                                                </h3>
                                                <h4 class="property-box-subtitle">
                                                    <a href="Property Specifications.html">القرم </a>
                                                </h4>

                                                <div class="property-box-label">Sale</div>
                                                <!-- /.property-box-label -->

                                                <div class="property-box-picture">
                                                    <div class="property-box-price">300000 ر.ع </div>
                                                    <!-- /.property-box-price -->
                                                    <div class="property-box-picture-inner">
                                                        <a href="Property Specifications.html" class="property-box-picture-target">
                                                            <img src="assets/img/tmp/properties/medium/2.jpg" alt="">
                                                        </a>
                                                        <!-- /.property-box-picture-target -->
                                                    </div>
                                                    <!-- /.property-picture-inner -->
                                                </div>
                                                <!-- /.property-picture -->
                                            </div>
                                            <!-- /.property-box-inner -->
                                        </div>
                                        <!-- /.property-box -->
                                    </div>
                                    <!-- /.property-item -->
                                </div>--%>
                        <!-- /.row -->



                       


                    </DIV>
                            <!-- /.properties-items -->

                        </div>
                        <!-- /.block-content-inner -->
                    </div>
                    <!-- /.block-content -->
                    <!-- CAROUSEL -->

                    <!-- /.block-content -->
                </div>
                <!-- /.container -->
           
            <!-- /#main-inner -->

            <div id="footer-wrapper" style="display: block;">
                <div id="footer">
                    <div id="footer-inner">
                        <div class="footer-bottom">
                            <div class="container">
                                <p class="center no-margin">
                                مسقط - سلطنة عمان - الغبرة الشمالية -
                                هاتف :24615249 /24615303 - الفاكس :-24615250 <br>
                                نقال : 00968 9667887 -
                                البريد الإلكتروني : info@gulf-future.com

                                <div class="center">
                                    <ul class="social">
                                        <li>
                                            <a href="https://www.facebook.com/gulffuture2014" target="_blank">
                                                <img src="assets/img/flinkes/1398822022_46-facebook.png" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://twitter.com/gulffuture2014" target="_blank">
                                                <img src="assets/img/flinkes/1398822034_43-twitter.png" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://plus.google.com/u/2/101857190209490041914/about" target="_blank">
                                                <img src="assets/img/flinkes/1398821926_80-google-plus.png" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="http://www.linkedin.com/profile/view?id=342612625&trk=nav_responsive_tab_profile_pic" target="_blank">
                                                <img src="assets/img/flinkes/1398822003_51-linkedin.png" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="http://instagram.com/gulffuture2014" target="_blank">
                                                <img src="assets/img/flinkes/1398822458_instagram_circle_black.png" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.youtube.com/channel/UCi3yy_Q_UpK8JmUFadoXhIw" target="_blank">
                                                <img src="assets/img/flinkes/1398822006_58-youtube.png" />
                                            </a>
                                        </li>
                                    </ul>
                                    <!-- /.social -->
                                </div>
                                <!-- /.center -->
                            </div>
                            <!-- /.container -->
                        </div>
                        <!-- /.footer-bottom -->
                    </div>
                    <!-- /#footer-inner -->
                </div>
                <!-- /#footer -->
            </div>
            <!-- /#footer-wrapper -->

        </div>
        </div>
        <!-- /#main -->
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
    
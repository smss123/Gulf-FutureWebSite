﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="WebSite.News" %>

<%@ Register Src="~/UserControls/UcNews.ascx" TagPrefix="uc1" TagName="UcNews" %>



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

    <title>News</title>
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
                                    <li><a href="index.html">الرئيسية </a></li>
                                    <li><a href="About Us.html">من نحن  </a></li>
                                    <li class="menuparent">
                                        <a href="#">خدماتنا </a>
                                        <ul class="sub-menu">
                                            <li><a href="Services1.html">إدارة مباني </a></li>
                                            <li><a href="Services2 .html">بيع وشراء العقارات </a></li>
                                            <li><a href="Services3 .html">تثمين الممتلكات </a></li>
                                        </ul>
                                    </li>
                                    <li><a href="Photo Gallery.html">معرض الصور </a></li>
                                    <li><a href="News.html">جديد الاخبار </a></li>
                                    <li><a href="Add a Listing.html">أصف عقارك  </a></li>
                                    <li><a href="Contact Us.html">اتصل بنا  </a></li>
                                    <li><a href="English/index.html">English  </a></li>
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
                    <div class="container">
                        <div class="block-content block-content-small-padding">
                            <div class="block-content-inner">
                                <div class="row">
                                    <br>
                                    <div class="col-sm-9" style="background-color: #F5F5F5">
                                        <br>
                                        <h2 class="h2center">جديد الأخبار </h2>

                                        <hr>
                                        <div class="posts">


                                            <uc1:UcNews runat="server" ID="UcNews" />
                                            <!-- /.post -->
                                        </div>
                                        <!-- /.posts -->
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="sidebar">
                                            <div class="sidebar-inner">
                                                <div class="widget">



                                                    <div class="widget-content" dir="rtl">
                                                        <form method="post" action="http://html.realocation.byaviators.com/properties-rows.html?">
                                                            <div class="row">
                                                                <div class="form-group col-sm-12">
                                                                    <label>البلد </label>
                                                                    <input type="text" class="form-control" placeholder=" البلد ">
                                                                </div>
                                                                <!-- /.form-group -->

                                                                <div class="form-group col-sm-12">
                                                                    <label>المدينة  </label>
                                                                    <input type="text" class="form-control" placeholder=" المدينة">
                                                                </div>
                                                                <!-- /.form-group -->

                                                                <div class="form-group col-sm-12">
                                                                    <label>الحي </label>
                                                                    <input type="text" class="form-control" placeholder=" الحي ">
                                                                </div>
                                                                <!-- /.form-group -->

                                                                <div class="form-group col-sm-12">
                                                                    <label>نوع العقار </label>
                                                                    <input type="text" class="form-control" placeholder=" نوع العقار">
                                                                </div>
                                                                <!-- /.form-group -->

                                                                <div class="form-group col-sm-6">
                                                                    <label>السعر من </label>
                                                                    <input type="text" class="form-control" placeholder=" السعر من ">
                                                                </div>
                                                                <!-- /.form-group -->

                                                                <div class="form-group col-sm-6">
                                                                    <label>السعر إلى </label>
                                                                    <input type="text" class="form-control" placeholder=" السعر إلى ">
                                                                </div>
                                                                <!-- /.form-group -->
                                                            </div>
                                                            <!-- /.row -->

                                                            <div class="form-group">
                                                                <input type="text" value=" بحث " class="btn btn-block btn-primary btn-inversed">
                                                            </div>
                                                            <!-- /.form-group -->
                                                        </form>
                                                    </div>
                                                    <!-- /.widget-content -->
                                                </div>
                                                <!-- /.widget -->


                                                <br>
                                                <div class="widget">

                                                    <h2 class="center">عروض مميزة </h2>

                                                    <div class="properties-small-list">


                                                        <div class="property-small clearfix">
                                                            <div class="property-small-picture col-sm-12 col-md-4">
                                                                <div class="property-small-picture-inner">
                                                                    <a href="Property Specifications.html" class="property-small-picture-target">
                                                                        <img src="assets/img/tmp/properties/medium/10.jpg" alt="">
                                                                    </a>
                                                                </div>
                                                                <!-- /.property-small-picture -->
                                                            </div>
                                                            <!-- /.property-small-picture -->

                                                            <div class="property-small-content col-sm-12 col-md-8" dir="rtl">
                                                                <h3 class="property-small-title"><a href="Property Specifications.html">فيلا في الغبرة الشمالية </a></h3>
                                                                <!-- /.property-small-title -->
                                                                <div class="property-small-price">1500 ر .ع <span class="property-small-price-suffix">/  السعر </span></div>
                                                                <!-- /.property-small-price -->
                                                            </div>
                                                            <!-- /.property-small-content -->
                                                        </div>
                                                        <!-- /.property-small -->


                                                        <div class="property-small clearfix">
                                                            <div class="property-small-picture col-sm-12 col-md-4">
                                                                <div class="property-small-picture-inner">
                                                                    <a href="Property Specifications.html" class="property-small-picture-target">
                                                                        <img src="assets/img/tmp/properties/medium/10.jpg" alt="">
                                                                    </a>
                                                                </div>
                                                                <!-- /.property-small-picture -->
                                                            </div>
                                                            <!-- /.property-small-picture -->

                                                            <div class="property-small-content col-sm-12 col-md-8" dir="rtl">
                                                                <h3 class="property-small-title"><a href="Property Specifications.html">فيلا في الغبرة الشمالية </a></h3>
                                                                <!-- /.property-small-title -->
                                                                <div class="property-small-price">1500 ر .ع <span class="property-small-price-suffix">/  السعر </span></div>
                                                                <!-- /.property-small-price -->
                                                            </div>
                                                            <!-- /.property-small-content -->
                                                        </div>
                                                        <!-- /.property-small -->


                                                        <div class="property-small clearfix">
                                                            <div class="property-small-picture col-sm-12 col-md-4">
                                                                <div class="property-small-picture-inner">
                                                                    <a href="Property Specifications.html" class="property-small-picture-target">
                                                                        <img src="assets/img/tmp/properties/medium/10.jpg" alt="">
                                                                    </a>
                                                                </div>
                                                                <!-- /.property-small-picture -->
                                                            </div>
                                                            <!-- /.property-small-picture -->

                                                            <div class="property-small-content col-sm-12 col-md-8" dir="rtl">
                                                                <h3 class="property-small-title"><a href="Property Specifications.html">فيلا في الغبرة الشمالية </a></h3>
                                                                <!-- /.property-small-title -->
                                                                <div class="property-small-price">1500 ر .ع <span class="property-small-price-suffix">/  السعر </span></div>
                                                                <!-- /.property-small-price -->
                                                            </div>
                                                            <!-- /.property-small-content -->
                                                        </div>
                                                        <!-- /.property-small -->


                                                        <div class="property-small clearfix">
                                                            <div class="property-small-picture col-sm-12 col-md-4">
                                                                <div class="property-small-picture-inner">
                                                                    <a href="Property Specifications.html" class="property-small-picture-target">
                                                                        <img src="assets/img/tmp/properties/medium/10.jpg" alt="">
                                                                    </a>
                                                                </div>
                                                                <!-- /.property-small-picture -->
                                                            </div>
                                                            <!-- /.property-small-picture -->

                                                            <div class="property-small-content col-sm-12 col-md-8" dir="rtl">
                                                                <h3 class="property-small-title"><a href="Property Specifications.html">فيلا في الغبرة الشمالية </a></h3>
                                                                <!-- /.property-small-title -->
                                                                <div class="property-small-price">1500 ر .ع <span class="property-small-price-suffix">/  السعر </span></div>
                                                                <!-- /.property-small-price -->
                                                            </div>
                                                            <!-- /.property-small-content -->
                                                        </div>
                                                        <!-- /.property-small -->



                                                        <div class="property-small clearfix">
                                                            <div class="property-small-picture col-sm-12 col-md-4">
                                                                <div class="property-small-picture-inner">
                                                                    <a href="Property Specifications.html" class="property-small-picture-target">
                                                                        <img src="assets/img/tmp/properties/medium/10.jpg" alt="">
                                                                    </a>
                                                                </div>
                                                                <!-- /.property-small-picture -->
                                                            </div>
                                                            <!-- /.property-small-picture -->

                                                            <div class="property-small-content col-sm-12 col-md-8" dir="rtl">
                                                                <h3 class="property-small-title"><a href="Property Specifications.html">فيلا في الغبرة الشمالية </a></h3>
                                                                <!-- /.property-small-title -->
                                                                <div class="property-small-price">1500 ر .ع <span class="property-small-price-suffix">/  السعر </span></div>
                                                                <!-- /.property-small-price -->
                                                            </div>
                                                            <!-- /.property-small-content -->
                                                        </div>
                                                        <!-- /.property-small -->

                                                        <div class="property-small clearfix">
                                                            <div class="property-small-picture col-sm-12 col-md-4">
                                                                <div class="property-small-picture-inner">
                                                                    <a href="Property Specifications.html" class="property-small-picture-target">
                                                                        <img src="assets/img/tmp/properties/medium/10.jpg" alt="">
                                                                    </a>
                                                                </div>
                                                                <!-- /.property-small-picture -->
                                                            </div>
                                                            <!-- /.property-small-picture -->

                                                            <div class="property-small-content col-sm-12 col-md-8" dir="rtl">
                                                                <h3 class="property-small-title"><a href="Property Specifications.html">فيلا في الغبرة الشمالية </a></h3>
                                                                <!-- /.property-small-title -->
                                                                <div class="property-small-price">1500 ر .ع <span class="property-small-price-suffix">/  السعر </span></div>
                                                                <!-- /.property-small-price -->
                                                            </div>
                                                            <!-- /.property-small-content -->
                                                        </div>
                                                        <!-- /.property-small -->
                                                    </div>
                                                    <!-- /.properties-small-list -->
                                                </div>
                                                <!-- /.widget -->
                                            </div>
                                            <!-- /.sidebar-inner -->
                                        </div>
                                        <!-- /.sidebar -->
                                    </div>
                                </div>
                                <!-- /.row -->
                            </div>
                            <!-- /.block-content-inner -->
                        </div>
                        <!-- /.block-content -->
                    </div>
                    <!-- /.container -->
                </div>
                <!-- /#main-inner -->
            </div>
            <!-- /#main -->
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

        <br>
        <br>

        <div id="main-wrapper">
            <div class="container">
            </div>
            <!-- container -->

        </div>
        <div id="footer-wrapper" style="display: block;">
            <div id="footer">
                <div id="footer-inner">
                    <div class="footer-bottom">
                        <div class="container">
                            <p class="center no-margin">
                                مسقط - سلطنة عمان - الغبرة الشمالية - 
                          هاتف :24615249 /24615303 - الفاكس :-24615250  
                         
                                <br>
                                نقال : 00968 9667887 -   
                        البريد الإلكتروني : info@gulf-future.com
                            
                                <div class="center">
                                    <ul class="social">
                                        <li><a href="https://www.facebook.com/gulffuture2014" target="_blank">
                                            <img src="assets/img/flinkes/1398822022_46-facebook.png" />
                                        </a></li>
                                        <li><a href="https://twitter.com/gulffuture2014" target="_blank">
                                            <img src="assets/img/flinkes/1398822034_43-twitter.png" />
                                        </a></li>
                                        <li><a href="https://plus.google.com/u/2/101857190209490041914/about" target="_blank">
                                            <img src="assets/img/flinkes/1398821926_80-google-plus.png" />
                                        </a></li>
                                        <li><a href="http://www.linkedin.com/profile/view?id=342612625&trk=nav_responsive_tab_profile_pic" target="_blank">
                                            <img src="assets/img/flinkes/1398822003_51-linkedin.png" />
                                        </a></li>
                                        <li><a href="http://instagram.com/gulffuture2014" target="_blank">
                                            <img src="assets/img/flinkes/1398822458_instagram_circle_black.png" />
                                        </a></li>
                                        <li><a href="https://www.youtube.com/channel/UCi3yy_Q_UpK8JmUFadoXhIw" target="_blank">
                                            <img src="assets/img/flinkes/1398822006_58-youtube.png" />
                                        </a></li>
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

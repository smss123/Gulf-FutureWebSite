<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnPhoto_Gallery.aspx.cs" Inherits="WebSite.EN.EnPhoto_Gallery" %>

<%@ Register src="~/UserControls/UcShowPhotoGellary.ascx" tagname="UcShowPhotoGellary" tagprefix="uc1" %>

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

        <title>Photo Gallery</title>
    </head>

    <body>

        <form id="form1" runat="server">

            <div id="wrapper">
                <div id="header-wrapper">
                    <img src="assets/img/banar.jpg"/>
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
                                                <A href="Default.aspx">Home</A>
                                            </LI>
                                            <LI>
                                                <A href="About Us.aspx">About Us </A>
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
                                                <A href="Photo Gallery.aspx">Photo Gallery </A>
                                            </LI>
                                            <LI>
                                                <A href="News.aspx">New News </A>
                                            </LI>
                                            <LI>
                                                <A href="Add a Listing.aspx">Add real estate </A>
                                            </LI>
                                            <LI>
                                                <A href="Contact Us.aspx">Contact Us </A>
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
                    <div class="container">

                        <br> <br>
                        <div id="PhotoGallery">

                            <DIV style="margin-left:0%;margin-right:30%">

                                <uc1:UcShowPhotoGellary ID="UcShowPhotoGellary1" runat="server" />
                            </DIV>

                        </div>
                        <br>

                        <br><br>

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
                    </DIV>

                </div>
            </div> <!-- /#main -->

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

        </form>

    </body>

    <!-- Mirrored from html.realocation.byaviators.com/ by HTTrack Website Copier/3.x [XR&CO'2010], Wed, 02 Apr 2014 09:21:33 GMT -->
</html>
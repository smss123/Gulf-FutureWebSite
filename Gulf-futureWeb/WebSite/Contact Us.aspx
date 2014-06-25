<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact Us.aspx.cs" Inherits="WebSite.Contact_Us" EnableEventValidation="false" %>


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
    <title>Contact Us</title>
</head>
<body>

    <form runat="server">
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
                                        <li><a href="Default.aspx">الرئيسية </a></li>
                                        <li><a href="About Us.aspx">من نحن  </a></li>
                                        <li class="menuparent">
                                            <a href="#">خدماتنا </a>
                                            <ul class="sub-menu">
                                               <%
                                                   string ser;
                                                    //--------our service here 
                                                    foreach (var item in this.Ourservice)
                                                    {
                                                        ser = "<li><a href='OurSerivcesX.aspx?SID="+item.Id+"'>"+item.ArOurService+" </a></li>";
                                                        Response.Write(ser);
                                                    }  
                                                    
                                                %>
                                            </ul>
                                        </li>
                                        <li><a href="Photo Gallery.aspx">معرض الصور </a></li>
                                        <li><a href="News.aspx">جديد الاخبار </a></li>
                                        <li><a href="Add a Listing.aspx">أصف عقارك  </a></li>
                                        <li><a href="Contact Us.aspx">اتصل بنا  </a></li>
                                        <li><a href="English/index.aspx">English  </a></li>
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






            <div class="mmmm"></div>


            <center>
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d751.9792672780525!2d58.40457088599621!3d23.590876800700393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e1!3m2!1sar!2s!4v1402597833886" width="100%" height="400" frameborder="0" style="border:0"></iframe>
        </center>

            <div id="main-wrapper">
                <div class="container">
                    <div class="block-content block-content-small-padding">
                        <div id="rrrr">
                            <%
                                Response.Write(Mycontact);   
                            %>
                        </div>

                        <div id="llll">
                            <br>
                            <h2 class="h2center">راسلنا عبر البريد الإلكتروني </h2>



                            <form class="form-horizontal">
                                <fieldset>
                                    <div class="control-group">

                                        <asp:TextBox ID="txtName" runat="server" placeholder=" الاسم" class="input-xlarge" Style="text-align: right" />

                                    </div>
                                    <br />
                                    <div class="control-group">

                                        <asp:TextBox ID="txtEmail" runat="server" placeholder=" البريد الإلكتروني" class="input-xlarge" Style="text-align: right" />

                                    </div>
                                    <br />
                                    <div class="control-group">

                                        <asp:TextBox ID="txtSubject" runat="server" placeholder=" الموضوع" class="input-xlarge" Style="text-align: right" />

                                    </div>
                                    <br />
                                    <div class="control-group">
                                        <asp:TextBox ID="txtMsg" runat="server" Rows="4" class="input-xlarge" />


                                    </div>
                                    <br />
                                    <div class="control-group">

                                        <asp:Button ID="BtnSendMail" runat="server" Text="أرسال" CssClass="btn btn-large" OnClick="BtnSendMail_Click" />
                                    </div>
                                </fieldset>
                            </form>

                        </div>




                    </div>











                    <br>
                    <br>

                    <br>
                </div>
                <!-- container -->














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
    </form>
</body>
<!-- Mirrored from html.realocation.byaviators.com/ by HTTrack Website Copier/3.x [XR&CO'2010], Wed, 02 Apr 2014 09:21:33 GMT -->
</html>

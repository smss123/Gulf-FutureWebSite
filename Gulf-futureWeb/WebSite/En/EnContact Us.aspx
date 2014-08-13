﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnContact_Us.aspx.cs" Inherits="WebSite.EN.EnContact_Us" EnableEventValidation="false" %>


<!doctype html>

<HTML>

<!-- Mirrored from html.realocation.byaviators.com/ by HTTrack Website Copier/3.x [XR&CO'2010], Wed, 02 Apr 2014 09:18:48 GMT -->
<HEAD>
    <META charset="utf-8">
    <META name="description" content="">
    <META name="keywords" content="">
    <META name="author" content="">
    <META name="viewport" content="width=device-width, initial-scale=1.0">

    <LINK rel="shortcut icon" href="#">
    <LINK rel="stylesheet" type="text/css" href="assets/libraries/font-awesome/css/font-awesome.css" media="screen, projection">
    <LINK rel="stylesheet" type="text/css" href="assets/libraries/jquery-bxslider/jquery.bxslider.css" media="screen, projection">
    <LINK rel="stylesheet" type="text/css" href="assets/libraries/flexslider/flexslider.css" media="screen, projection">
    <LINK rel="stylesheet" type="text/css" href="assets/css/realocation.css" media="screen, projection" id="css-main">
    <LINK href="../fonts.googleapis.com/css975a.css?family=Raleway:400,700" rel="stylesheet" type="text/css">
    <LINK rel="stylesheet" type="text/css" href="DroidKufi/style.css">

    <TITLE>Contact Us</TITLE>
</HEAD>

<BODY>
    <DIV id="wrapper">
        <DIV id="header-wrapper">
            <IMG src="assets/img/banar.jpg" />
            <DIV id="header">
                <DIV id="header-inner">
                    <DIV class="header-bar">
                    </DIV>
                    <!-- /.header-bar -->

                    <BUTTON class="navbar-toggle" type="button" data-toggle="collapse" data-target=".header-navigation">
                        <SPAN class="sr-only">Toggle navigation</SPAN>
                        <SPAN class="icon-bar"></SPAN>
                        <SPAN class="icon-bar"></SPAN>
                        <SPAN class="icon-bar"></SPAN>
                    </BUTTON>


                    <DIV class="header-navigation">
                        <DIV class="container">
                            <DIV class="row">
                                <UL class="header-nav nav nav-pills">
                                    <LI><A href="EnDefault.aspx">Home</A>  </LI>
                                    <LI><A href="EnAbout Us.aspx">About Us </A></LI>
                                    <LI class="menuparent">
                                        <A href="#">Services </A>
                                        <UL class="sub-menu">
                                            <%
                                                string ser;
                                                //--------our service here 
                                                foreach (var item in this.Ourservice)
                                                {
                                                    ser = "<li><a href='EnOurSerivcesX.aspx?SID=" + item.Id + "'>" + item.EnOurService + " </a></li>";
                                                    Response.Write(ser);
                                                }  
                                                    
                                            %>
                                        </UL>
                                    </LI>
                                    <LI><A href="EnPhoto Gallery.aspx">Photo Gallery </A></LI>
                                    <LI><A href="EnNews.aspx">New News </A></LI>
                                    <LI><A href="EnAdd a Listing.aspx">Add real estate </A></LI>
                                    <LI><A href="EnContact Us.aspx">Contact Us </A></LI>
                                    <LI><A href="../Default.aspx">عربي  </A></LI>
                                </UL>
                                <!-- /.header-nav -->
                            </DIV>
                        </DIV>
                        <!-- /.container -->
                    </DIV>
                    <!-- /.header-navigation -->
                </DIV>
                <!-- /.header-inner -->
            </DIV>
            <!-- /#header -->
        </DIV>
        <!-- /#header-wrapper -->






        <DIV class="mmmm"></DIV>


        <CENTER>
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d751.9792672780525!2d58.40457088599621!3d23.590876800700393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e1!3m2!1sar!2s!4v1402597833886" width="100%" height="400" frameborder="0" style="border:0"></iframe>
        </CENTER>

        <DIV id="main-wrapper">
            <DIV class="container">
                <DIV class="block-content block-content-small-padding">
                    <DIV id="rrrr">
                        <%
                            Response.Write(Mycontact);   
                        %>
                    </DIV>

                    <DIV id="llll">
                        <BR>
                        <H2 class="h2center">E-mail us </H2>



                        <FORM runat="server" class="form-horizontal">
                            <FIELDSET>
                                <DIV class="control-group">

                                    <asp:TextBox ID="txtName" runat="server" placeholder=" Name" class="input-xlarge" />

                                </DIV>
                                <BR />
                                <DIV class="control-group">

                                    <asp:TextBox ID="txtEmail" runat="server" placeholder="E-mail" class="input-xlarge" />

                                </DIV>
                                <BR />
                                <DIV class="control-group">

                                    <asp:TextBox ID="txtSubject" runat="server" placeholder=" subject" class="input-xlarge" />

                                </DIV>
                                <BR />
                                <DIV class="control-group">
                                    <asp:TextBox ID="txtMsg" runat="server" Rows="4" class="input-xlarge" />


                                </DIV>
                                <BR />
                                <DIV class="control-group">

                                    <asp:Button ID="BtnSendMail" runat="server" Text="Send a message" CssClass="btn btn-large" OnClick="BtnSendMail_Click" />
                                </DIV>
                            </FIELDSET>
                        </FORM>

                    </DIV>




                </DIV>











                <BR>
                <BR>

                <BR>
            </DIV>
            <!-- container -->














            <DIV id="footer-wrapper" style="display: block;">
                <DIV id="footer">
                    <DIV id="footer-inner">
                        <DIV class="footer-bottom">
                            <DIV class="container">
                                <P class="center no-margin">
                                    MUSCAT - Oman - Ghubra North -
                           Phone : 24615249/24615303 - Fax : 24615250
                           <BR>
                                    Mobile: 00968 9667887 -
                         E-mail : info@gulf-future.com
                             <DIV class="center">
                                 <UL class="social">
                                     <LI><A href="https://www.facebook.com/gulffuture2014" target="_blank">
                                         <IMG src="assets/img/flinkes/1398822022_46-facebook.png" />
                                     </A></LI>
                                     <LI><A href="https://twitter.com/gulffuture2014" target="_blank">
                                         <IMG src="assets/img/flinkes/1398822034_43-twitter.png" />
                                     </A></LI>
                                     <LI><A href="https://plus.google.com/u/2/101857190209490041914/about" target="_blank">
                                         <IMG src="assets/img/flinkes/1398821926_80-google-plus.png" />
                                     </A></LI>
                                     <LI><A href="http://www.linkedin.com/profile/view?id=342612625&trk=nav_responsive_tab_profile_pic" target="_blank">
                                         <IMG src="assets/img/flinkes/1398822003_51-linkedin.png" />
                                     </A></LI>
                                     <LI><A href="http://instagram.com/gulffuture2014" target="_blank">
                                         <IMG src="assets/img/flinkes/1398822458_instagram_circle_black.png" />
                                     </A></LI>
                                     <LI><A href="https://www.youtube.com/channel/UCi3yy_Q_UpK8JmUFadoXhIw" target="_blank">
                                         <IMG src="assets/img/flinkes/1398822006_58-youtube.png" />
                                     </A></LI>
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
            <!-- /#footer-wrapper -->



        </DIV>
    </DIV>
    <!-- /#main -->







    <SCRIPT type="text/javascript" src="assets/js/jquery.js"></SCRIPT>
    <SCRIPT type="text/javascript" src="assets/libraries/isotope/jquery.isotope.min.js"></SCRIPT>
    <SCRIPT type="text/javascript" src="../maps.googleapis.com/maps/api/jsd7d7html.html?v=3&amp;sensor=true"></SCRIPT>
    <SCRIPT type="text/javascript" src="assets/js/gmap3.infobox.js"></SCRIPT>
    <SCRIPT type="text/javascript" src="assets/js/gmap3.clusterer.js"></SCRIPT>
    <SCRIPT type="text/javascript" src="assets/js/map.js"></SCRIPT>
    <SCRIPT type="text/javascript" src="assets/libraries/bootstrap-sass/vendor/assets/javascripts/bootstrap/transition.js"></SCRIPT>
    <SCRIPT type="text/javascript" src="assets/libraries/bootstrap-sass/vendor/assets/javascripts/bootstrap/collapse.js"></SCRIPT>
    <SCRIPT type="text/javascript" src="assets/libraries/jquery-bxslider/jquery.bxslider.min.js"></SCRIPT>
    <SCRIPT type="text/javascript" src="assets/libraries/flexslider/jquery.flexslider.js"></SCRIPT>
    <SCRIPT type="text/javascript" src="assets/js/jquery.chained.min.js"></SCRIPT>
    <SCRIPT type="text/javascript" src="assets/js/realocation.js"></SCRIPT>
   
</BODY>
<!-- Mirrored from html.realocation.byaviators.com/ by HTTrack Website Copier/3.x [XR&CO'2010], Wed, 02 Apr 2014 09:21:33 GMT -->
</HTML>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add a Listing.aspx.cs" Inherits="WebSite.Add_a_Listing" %>


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

    <title>اضافه عقار</title>
</head>

<body>




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
                    <ul class="header-nav nav nav-pills">
                        <li > <a href="Default.aspx"> الرئيسية </a>  </li>
                        <li > <a href="About Us.aspx">  من نحن  </a>  </li>
                        <li class="menuparent">
                        <a href="#"> خدماتنا </a>
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
                        <li > <a href="Photo Gallery.aspx"> معرض الصور </a>  </li>
                        <li > <a href="News.aspx">  جديد الاخبار </a>  </li>
                        <li > <a href="Add a Listing.aspx">   أصف عقارك  </a>  </li>
                       <li > <a href="Contact Us.aspx">  اتصل بنا  </a>  </li>
                        <li > <a href="En/EnDefault.aspx">  English  </a>  </li>
                    </ul><!-- /.header-nav -->
                </div>
            </div><!-- /.container -->
        </div><!-- /.header-navigation -->
    </div><!-- /.header-inner -->
</div><!-- /#header -->    </div><!-- /#header-wrapper -->

<div id="main-wrapper">
<br>

<div class="container" dir="rtl">
                    <div class="block-content block-content-small-padding" style="width:80%;margin:0 auto; ">
                    
                    
                        <div class="block-content-inner">
                            <h2 class="h2center">  أضف عقارك </h2>
                           

                            <form method="post" runat="server">
                                <div class="box">
                                    <h2>بيانات شخصية :   </h2>
                                  
                                    
                                    <div class="form-group">
                                        <label>الاسم </label>

                                        <asp:TextBox ID="txtFullname" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <!-- /.form-group -->
                                    <div class="form-group">
                                        <label>البريد الإلكتروني </label>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <!-- /.form-group -->

                                    <div class="form-group">
                                        <label>رقم الجوال  </label>
                                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <!-- /.form-group -->

                                    <h2>تفاصيل العقار :   </h2>

                                    <div class="form-group">
                                        <label>نوع العقار  </label>

                                        <div class="select-wrapper">
                                            <asp:DropDownList ID="txtEstatType" runat="server" class="form-control">

                                                <asp:ListItem Text="أراضي" Value="0" />
                                                <asp:ListItem Text="فلل" Value="1" />
                                                <asp:ListItem Text="مكاتب" Value="2" />
                                                <asp:ListItem Text="شقق" Value="3" />
                                                <asp:ListItem Text="بنايات سكنيه" Value="4" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label>نوع الاستثمار   </label>
                                        <div class="select-wrapper">

                                            <asp:DropDownList ID="txtinvsementType" runat="server" class="form-control">
                                                <asp:ListItem Text="بيع" Value="0" />
                                                <asp:ListItem Text="ايجار" Value="1" />
                                            </asp:DropDownList>


                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label>السعر   </label>
                                        <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <!-- /.form-group -->




                                    <h2>موقع العقار :   </h2>

                                    <div class="form-group">
                                        <label>البلد  </label>
                                        <div class="select-wrapper">
                                            <asp:DropDownList runat="server" ID="txtCountry" class="form-control">
                                                <asp:ListItem Text="text1" />
                                                <asp:ListItem Text="text2" />
                                            </asp:DropDownList>
                                          
                                              
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label>المدينة    </label>
                                        <div class="select-wrapper">
                                            <asp:DropDownList runat="server" ID="txtCity" class="form-control">
                                                <asp:ListItem Text="text1" />
                                                <asp:ListItem Text="text2" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                       
                                    <div class="form-group">
                                        <label>الحي     </label>
                                        <div class="select-wrapper">
                                            <div class="select-wrapper">
                                                <asp:DropDownList runat="server" ID="txtLocation" class="form-control">
                                                    <asp:ListItem Text="text1" />
                                                    <asp:ListItem Text="text2" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label>وصف  العقار </label>
                                         <asp:TextBox ID="txtDecription" TextMode="MultiLine" Rows="6" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <!-- /.form-group -->

                                    <h2>صور العقار  :   </h2>

                                    <div class="form-group">
                                        <asp:FileUpload  ID="img1" runat="server"  />
                                    </div>
                                    <!-- /.form-group -->

                                    <div class="form-group">
                                       <asp:FileUpload  ID="img2" runat="server"  />
                                    </div>
                                    <!-- /.form-group -->

                                    <div class="form-group">
                                        <asp:FileUpload  ID="img3" runat="server"  />
                                    </div>
                                    <!-- /.form-group -->

                                    <div class="form-group">
                                       <asp:FileUpload  ID="img4" runat="server"  />
                                    </div>
                                    <!-- /.form-group -->

                                    <div class="form-group">
                                        <asp:FileUpload  ID="img5" runat="server"  />
                                    </div>
                                    <!-- /.form-group -->



                                </div><!-- /.box -->

                                <div class="form-group center">
                                   
                                    <asp:Button Text="ارسل العقار" runat="server" class="btn btn-inversed btn-primary" ID="btnSave" OnClick="btnSave_Click" />
                                </div><!-- /.form-group -->
                            </form>
                        </div>
                        <br>
                        
                    </div><!-- /.block-content -->
                </div> <!-- container -->
        
        <div id="footer-wrapper" style="display:block;">
            <div id="footer" >
                <div id="footer-inner">
                    <div class="footer-bottom">
                        <div class="container" >
                            <p class="center no-margin">
                       <p class="center no-margin">
                                    <span style="direction:rtl">
                                        مسقط - سلطنة عمان - الغبرة الشمالية -
                                        هاتف :24615249 /24615303 - الفاكس :-24615250 <br>
                                      :نقال : 
                                         -9667887 -   00968
                                        -
                                       البريد الإلكتروني
                                        :
                                          info@gulf-future.com 
                                    </span>

                                   
                                        </p>

                             <div class="center">
                                <ul class="social">
                                <li><a href="https://www.facebook.com/gulffuture2014" target="_blank">  <img src="assets/img/flinkes/1398822022_46-facebook.png" /> </a> </li>
                                <li><a href="https://twitter.com/gulffuture2014" target="_blank"> <img src="assets/img/flinkes/1398822034_43-twitter.png" />  </a> </li>
                                <li><a href="https://plus.google.com/u/2/101857190209490041914/about" target="_blank"> <img src="assets/img/flinkes/1398821926_80-google-plus.png" />  </a> </li>
                                <li><a href="http://www.linkedin.com/profile/view?id=342612625&trk=nav_responsive_tab_profile_pic" target="_blank"> <img src="assets/img/flinkes/1398822003_51-linkedin.png" /> </a> </li>
                                <li><a href="http://instagram.com/gulffuture2014" target="_blank"> <img src="assets/img/flinkes/1398822458_instagram_circle_black.png" /> </a></li>
                                <li><a href="https://www.youtube.com/channel/UCi3yy_Q_UpK8JmUFadoXhIw" target="_blank"> <img src="assets/img/flinkes/1398822006_58-youtube.png" /> </a> </li>
                            </ul><!-- /.social -->
                            </div><!-- /.center -->
                        </div><!-- /.container -->
                    </div><!-- /.footer-bottom -->
                </div><!-- /#footer-inner -->
            </div><!-- /#footer -->
        </div><!-- /#footer-wrapper -->

        
        
        
    </div> </div> <!-- /#main -->

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
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="UIA_DDAC.register" %>

<!DOCTYPE html>
<html class="no-js"> 
    <head>
        <meta charset="utf-8">
        <title>Sign Up</title>
        <meta name="description" content="">

        <meta name="viewport" content="width=device-width">
		<meta name="author" content="templatemo">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800,700,600,300' rel='stylesheet' type='text/css'>
        
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/templatemo_misc.css">
        <link rel="stylesheet" href="css/templatemo_style.css">

        <script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
    </head>
    <body>


        <div class="site-header">
            <div class="container">
                <div class="main-header">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 col-xs-10">
                            <div class="logo">
                                <a href="#">
                                    <img src="images/logo.png" alt="travel html5 template" title="travel html5 template">
                                </a>
                            </div> <!-- /.logo -->
                        </div> <!-- /.col-md-4 -->
                        <div class="col-md-8 col-sm-6 col-xs-2">
                            <div class="main-menu">
                                <ul class="visible-lg visible-md">
                                    <li><a href="index.aspx">Home</a></li>
                                    <li ><a href="about.aspx">About Us</a></li>
                                    <li ><a href="tours.aspx">Tours</a></li>
                                    <li ><a href="contact.aspx">Contact</a></li>
                                    <li ><a href="login.aspx">Login</a></li>
                                </ul>
                                <a href="#" class="toggle-menu visible-sm visible-xs">
                                    <i class="fa fa-bars"></i>
                                </a>
                            </div> <!-- /.main-menu -->
                        </div> <!-- /.col-md-8 -->
                    </div> <!-- /.row -->
                </div> <!-- /.main-header -->
                <div class="row">
                    <div class="col-md-12 visible-sm visible-xs">
                        <div class="menu-responsive">
                            <ul>
                                <li><a href="index.aspx">Home</a></li>
                                    <li ><a href="about.aspx">About Us</a></li>
                                    <li ><a href="tours.aspx">Tours</a></li>
                                    <li ><a href="contact.aspx">Contact</a></li>
                                    <li ><a href="login.aspx">Login</a></li>
                            </ul>
                        </div> <!-- /.menu-responsive -->
                    </div> <!-- /.col-md-12 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.site-header -->

        <div class="page-top" id="templatemo_contact">
        </div> <!-- /.page-header -->

        <div class="contact-page">
            <div class="container">
                <div class="row">
                    <div class="col-md-7 col-sm-6 map-wrapper">
                        <h3 class="widget-title">!**Latest News**!</h3>
                        <div class="map-holder">
                            <div><img src="images/page4_img1.jpg" style="width:450px;"></img><br />
                                <p>Regardless of the type of hotel you’d prefer to stay on your next trip, UIA members can now provide the best service thorugh this website in Ukraine and countries across six continents. </p>We are commtitted to provide the best service with the very reasonable airfares where you can easily travel miles.
                            </div>
                        </div>
                        
                    </div>
                    <div class="col-md-5 col-sm-6">
                        <h3 class="widget-title">Create New Account</h3>
                        <div class="contact-form">
                            <form name="contactform" id="contactform" action="#" method="post"  runat="server">
                                <p>
                                    <asp:TextBox ID="name" runat="server" placeholder="Full Name: Aroohi"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="name"></asp:RequiredFieldValidator>
                                </p>
                                <p>
                                   <asp:TextBox ID="username" runat="server" placeholder="Username: Aroohi_123"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="username"></asp:RequiredFieldValidator>
                                </p>
                                <p>
                                    <asp:TextBox ID="password" runat="server" TextMode="Password" placeholder="Password: AlphaNumeric"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="password"></asp:RequiredFieldValidator>
                                </p>
                                <p>
                                    <asp:TextBox ID="cnfpassword" runat="server" TextMode="Password" placeholder="Password: AlphaNumeric"></asp:TextBox><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToCompare="password" ControlToValidate="cnfpassword"></asp:CompareValidator>
                                </p>
                                <p>
                                    <asp:TextBox ID="email" runat="server" placeholder="Email: example@rocketmail.com"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                </p>
                                <asp:Button ID="signup" runat="server" Text="SignUp" class="mainBtn" OnClick="signup_Click"/><br />
                                <asp:Label ID="Label1" runat="server" ForeColor="Green"></asp:Label>
                            </form>
                        </div> <!-- /.contact-form -->
                    </div>
                </div>
            </div>
        </div>




        <div class="partner-list">
            <div class="container">
                <div class="row">
                    <div class="col-md-2 col-sm-4 col-xs-6">
                        <div class="partner-item">
                            <img src="images/partners/partner1.png" alt="">
                        </div> <!-- /.partner-item -->
                    </div> <!-- /.col-md-2 -->
                    <div class="col-md-2 col-sm-4 col-xs-6">
                        <div class="partner-item">
                            <img src="images/partners/partner2.png" alt="">
                        </div> <!-- /.partner-item -->
                    </div> <!-- /.col-md-2 -->
                    <div class="col-md-2 col-sm-4 col-xs-6">
                        <div class="partner-item">
                            <img src="images/partners/partner3.png" alt="">
                        </div> <!-- /.partner-item -->
                    </div> <!-- /.col-md-2 -->
                    <div class="col-md-2 col-sm-4 col-xs-6">
                        <div class="partner-item">
                            <img src="images/partners/partner1.png" alt="">
                        </div> <!-- /.partner-item -->
                    </div> <!-- /.col-md-2 -->
                    <div class="col-md-2 col-sm-4 col-xs-6">
                        <div class="partner-item">
                            <img src="images/partners/partner2.png" alt="">
                        </div> <!-- /.partner-item -->
                    </div> <!-- /.col-md-2 -->
                    <div class="col-md-2 col-sm-4 col-xs-6">
                        <div class="partner-item last">
                            <img src="images/partners/partner3.png" alt="">
                        </div> <!-- /.partner-item -->
                    </div> <!-- /.col-md-2 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.partner-list -->



        <div class="site-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="footer-logo">
                            <a href="index.html">
                                <img src="images/logo.png" alt="">
                            </a>
                        </div>
                    </div> <!-- /.col-md-4 -->
                    <div class="col-md-4 col-sm-4">
                        <div class="copyright">
                            <span>Copyright &copy; 2017 <a href="#">Ukraine International Airline (UIA) <br />Designed by Jay Kumar Hiralal Gohil</a></span>
                        </div>
                    </div> <!-- /.col-md-4 -->
                    <div class="col-md-4 col-sm-4">
                        <ul class="social-icons">
                            <li><a href="#" class="fa fa-facebook"></a></li>
                            <li><a href="#" class="fa fa-twitter"></a></li>
                            <li><a href="#" class="fa fa-linkedin"></a></li>
                            <li><a href="#" class="fa fa-flickr"></a></li>
                            <li><a href="#" class="fa fa-rss"></a></li>
                        </ul>
                    </div> <!-- /.col-md-4 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.site-footer -->

        <script src="js/vendor/jquery-1.11.0.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.0.min.js"><\/script>')</script>
        <script src="js/bootstrap.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>

        <!-- Google Map -->
        <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        <script src="js/vendor/jquery.gmap3.min.js"></script>
        
        <!-- Google Map Init-->
        <script type="text/javascript">
            jQuery(function($){
                $('.first-map, .map-holder').gmap3({
                    marker:{
                        address: '16.8496189,96.1288854' 
                    },
                        map:{
                        options:{
                        zoom: 16,
                        scrollwheel: false,
                        streetViewControl : true
                        }
                    }
                });
            });
        </script>
    </body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewbookings.aspx.cs" Inherits="UIA_DDAC.viewbookings" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html class="no-js">

<head>
    <meta charset="utf-8">
    <title>View Bookings</title>
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
                        </div>
                        <!-- /.logo -->
                    </div>
                    <!-- /.col-md-4 -->
                    <div class="col-md-8 col-sm-6 col-xs-2">
                        <div class="main-menu">
                            <ul class="visible-lg visible-md">
                                <li><a href="flightschedule.aspx">Book a Flight</a></li>
                                <li><a href="checkin.aspx">Online Check-In</a></li>
                                <li class="active"><a href="viewbookings.aspx">View Bookings</a></li>
                                <li><a href="manageprofile.aspx">Manage Profile</a></li>
                                <li><a href="index.aspx">Logout</a></li>
                            </ul>
                            <a href="#" class="toggle-menu visible-sm visible-xs">
                                <i class="fa fa-bars"></i>
                            </a>
                        </div>
                        <!-- /.main-menu -->
                    </div>
                    <!-- /.col-md-8 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.main-header -->
            <div class="row">
                <div class="col-md-12 visible-sm visible-xs">
                    <div class="menu-responsive">
                        <ul>
                            <li><a href="flightschedule.aspx">Book a Flight</a></li>
                                <li><a href="checkin.aspx">Online Check-In</a></li>
                                <li class="active"><a href="viewbookings.aspx">View Bookings</a></li>
                                <li><a href="manageprofile.aspx">Manage Profile</a></li>
                                <li><a href="index.aspx">Logout</a></li>
                        </ul>
                    </div>
                    <!-- /.menu-responsive -->
                </div>
                <!-- /.col-md-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /.site-header -->

    <div class="page-top" id="templatemo_contact">
    </div>
    <!-- /.page-header -->

    <div class="contact-page">
        <div class="container">
            <div class="row">
               <center> <h1 style="font-weight:bold; font-size:larger;">View all Bookings</h1><br />
                <form id="modify" runat="server">
                    <asp:GridView ID="GridView1" style="margin-left:50px;" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="950px" >
                                <AlternatingRowStyle BackColor="White" />
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
                </form></center>
            </div>
        </div>
    </div>




    <div class="partner-list">
        <div class="container">
            <div class="row">
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <div class="partner-item">
                        <img src="images/partners/partner1.png" alt="">
                    </div>
                    <!-- /.partner-item -->
                </div>
                <!-- /.col-md-2 -->
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <div class="partner-item">
                        <img src="images/partners/partner2.png" alt="">
                    </div>
                    <!-- /.partner-item -->
                </div>
                <!-- /.col-md-2 -->
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <div class="partner-item">
                        <img src="images/partners/partner3.png" alt="">
                    </div>
                    <!-- /.partner-item -->
                </div>
                <!-- /.col-md-2 -->
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <div class="partner-item">
                        <img src="images/partners/partner1.png" alt="">
                    </div>
                    <!-- /.partner-item -->
                </div>
                <!-- /.col-md-2 -->
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <div class="partner-item">
                        <img src="images/partners/partner2.png" alt="">
                    </div>
                    <!-- /.partner-item -->
                </div>
                <!-- /.col-md-2 -->
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <div class="partner-item last">
                        <img src="images/partners/partner3.png" alt="">
                    </div>
                    <!-- /.partner-item -->
                </div>
                <!-- /.col-md-2 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /.partner-list -->



    <div class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4">
                    <div class="footer-logo">
                        <a href="index.html">
                            <img src="images/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <!-- /.col-md-4 -->
                <div class="col-md-4 col-sm-4">
                    <div class="copyright">
                        <span>Copyright &copy; 2017 <a href="#">Ukraine International Airline (UIA)
                            <br />
                            Designed by Jay Kumar Hiralal Gohil</a></span>
                    </div>
                </div>
                <!-- /.col-md-4 -->
                <div class="col-md-4 col-sm-4">
                    <ul class="social-icons">
                        <li><a href="#" class="fa fa-facebook"></a></li>
                        <li><a href="#" class="fa fa-twitter"></a></li>
                        <li><a href="#" class="fa fa-linkedin"></a></li>
                        <li><a href="#" class="fa fa-flickr"></a></li>
                        <li><a href="#" class="fa fa-rss"></a></li>
                    </ul>
                </div>
                <!-- /.col-md-4 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /.site-footer -->

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

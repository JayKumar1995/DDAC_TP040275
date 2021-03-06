﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="UIA_DDAC.Confirmation" %>

<!DOCTYPE html>
<html class="no-js"> 
    <head>
        <meta charset="utf-8">
        <title>Passenger Details Confirmation</title>
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
                                <li class="active"><a href="flightschedule.aspx">Book a Flight</a></li>
                                <li><a href="checkin.aspx">Online Check-In</a></li>
                                <li><a href="viewbookings.aspx">View Bookings</a></li>
                                <li><a href="manageprofile.aspx">Manage Profile</a></li>
                                <li><a href="index.aspx">Logout</a></li>
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
                                <li class="active"><a href="flightschedule.aspx">Book a Flight</a></li>
                                <li><a href="checkin.aspx">Online Check-In</a></li>
                                <li><a href="viewbookings.aspx">View Bookings</a></li>
                                <li><a href="manageprofile.aspx">Manage Profile</a></li>
                                <li><a href="index.aspx">Logout</a></li>
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
                        
                        <h3 class="widget-title" >Welcome Back</h3>
                        <h3><asp:Label ID="lblusername" runat="server" ></asp:Label></h3>
                        <div class="map-holder">
                            <ul>
                                <li><a href="manageprofile.aspx" style="font-weight: bold; font-size:medium;">Manage Profile</a></li><br />
                                <li><a href="flightschedule.aspx"style="font-weight: bold; font-size:medium;">Book a flight</a></li><br />
                                <li><a href="viewbookings.aspx"style="font-weight: bold; font-size:medium;">View Bookings</a></li><br />
                                <li><a href="checkin.aspx"style="font-weight: bold; font-size:medium;">Online Check-In</a></li><br />
                                <li><a href="index.aspx"style="font-weight: bold; font-size:medium;">Logout</a></li><br />
                            </ul>
                        </div>
                        
                    </div>
                    <div class="col-md-5 col-sm-6">
                        <h3 class="widget-title">Confirm Details</h3>
                        <div class="contact-form">
                            <form id="modify" runat="server">
                     <p>User ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="userid" runat="server" Text="Label"></asp:Label></p><br />
                     <p>Passenger ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="pid" runat="server" Text="Label"></asp:Label></p><br />
                     <p>Passenger Name:&nbsp;&nbsp;&nbsp; <asp:Label ID="pname" runat="server" Text="Label"></asp:Label></p><br />
                     <p>Passport number:&nbsp;&nbsp;&nbsp; <asp:Label ID="passnumber" runat="server" Text="Label"></asp:Label></p><br />
                     <p>Booking ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="bid" runat="server" Text="Label"></asp:Label></p><br />
                     <p>Booking Code:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="bcode" runat="server" Text="Label"></asp:Label></p><br />
                     <p>Flight Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="fnumber" runat="server" Text="Label"></asp:Label></p><br />
                     <p>Seat:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="seat" runat="server" Text="Label"></asp:Label></p><br />
                     <p>AirFare:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="RM 450.00"></asp:Label></p><br />
                     <p>Luggage Allowance: <asp:Label ID="Label2" runat="server" Text="15KG/Person"></asp:Label></p><br />
                     
                         <asp:Button ID="Button1" runat="server" Text="Confirm Booking" OnClick="Button1_Click"  />
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
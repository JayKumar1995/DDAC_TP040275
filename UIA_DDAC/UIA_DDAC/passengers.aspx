<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passengers.aspx.cs" Inherits="UIA_DDAC.passengers" %>

<!DOCTYPE html>
<html class="no-js"> 
    <head>
        <meta charset="utf-8">
        <title>Passenger Details</title>
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
                                <li ><a href="viewbookings.aspx">View Bookings</a></li>
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
                                <li ><a href="viewbookings.aspx">View Bookings</a></li>
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
                        <h3 class="widget-title">Passenger Details</h3>
                        <div class="contact-form">
                            <form name="contactform" id="contactform"   runat="server">
                                <p>
                                    <asp:TextBox ID="txtFname" runat="server" Width="170" placeholder="Example: Natalie"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtFname"></asp:RequiredFieldValidator>
                                </p>
                                <p>
                                    <asp:TextBox ID="txtLname" runat="server" Width="170" placeholder="Example: Christopher"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtLname"></asp:RequiredFieldValidator>
                                </p>
                                <p>
                                    <asp:DropDownList ID="ddlGender" runat="server" Width="460">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>
                                </p><br />
                                <p>
                                    <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" height="40"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtDOB"></asp:RequiredFieldValidator>
                                </p>
                                <p>
                                    <asp:DropDownList ID="ddlNationality" runat="server" Width="460">
                                         </asp:DropDownList>
                                </p><br />
                                <p>
                                    <asp:TextBox ID="txtPnumber" runat="server" Width="170" placeholder="Example: RY4114452"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtPnumber"></asp:RequiredFieldValidator>
                                </p>
                                <p>
                                    <asp:TextBox ID="txtEDate" runat="server" TextMode="Date" height="40"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtEDate"></asp:RequiredFieldValidator>
                                </p>
                                <p>
                                    <asp:DropDownList ID="ddlIssueState" runat="server" Width="460">
                                        </asp:DropDownList>
                                </p><br />
                                <p>
                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="460" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                                        <asp:ListItem Text="Please Select"></asp:ListItem>
                                        <asp:ListItem Text="FirstClass-A1"></asp:ListItem>
                                        <asp:ListItem Text="FirstClass-B1"></asp:ListItem>
                                        <asp:ListItem Text="FirstClass-C1"></asp:ListItem>
                                        <asp:ListItem Text="FirstClass-D1"></asp:ListItem>
                                        <asp:ListItem Text="Pre-Economy-E1"></asp:ListItem>
                                        <asp:ListItem Text="Pre-Economy-F1"></asp:ListItem>
                                        <asp:ListItem Text="Pre-Economy-G1"></asp:ListItem>
                                        <asp:ListItem Text="Economy-H1"></asp:ListItem>
                                        <asp:ListItem Text="Economy-I1"></asp:ListItem>
                                        <asp:ListItem Text="Economy-J1"></asp:ListItem>
                                    </asp:DropDownList>
                                </p><br />

                                <asp:Button ID="Button1" runat="server" Text="Save and Continue" class="mainBtn" OnClick="Button1_Click" />
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
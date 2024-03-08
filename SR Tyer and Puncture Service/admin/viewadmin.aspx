<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="viewadmin.aspx.cs" Inherits="SR_Tyer_and_Puncture_Service.admin.viewadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Dashboard</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link
      href="http://fonts.googleapis.com/css?family=Open+Sans"
      rel="stylesheet"
      type="text/css"
    />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="wrapper">
      <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="adjust-nav">
          <div class="navbar-header">
            <button
              type="button"
              class="navbar-toggle"
              data-toggle="collapse"
              data-target=".sidebar-collapse"
            >
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="Default.aspx"
              ><i class="fa fa-square-o"></i>&nbsp;SR Tyer & Puncture Service</a
            >
          </div>
        </div>
      </div>
      <!-- /. NAV TOP  -->
      <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
          <ul class="nav" id="main-menu">
            <li class="text-center user-image-back primary">
              <img src="assets/img/find_user.png" class="img-responsive" />
            </li>

            <li>
              <a href="Default.aspx"><i class="fa fa-desktop"></i>Dashboard</a>
            </li>
            <li>
              <a href="#"
                ><i class="fa fa-edit"></i>View<span class="fa arrow"></span
              ></a>
              <ul class="nav nav-second-level">
                <li>
                  <a href="viewadmin.aspx">View Admin</a>
                </li>
                <li>
                  <a href="viewcontact.aspx">View Contact</a>
                </li>
                <li>
                  <a href="viewsubscriber.aspx">View Subscribers</a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>
      <!-- /. NAV SIDE  -->
      <div id="page-wrapper">
        <div id="page-inner">
          <div class="container">
            <div class="row">
                <div class="col-md-6"> 
                    <h2>View Admin Details</h2>
                </div>
                <div class="col-md-4 text-right">
                    <a href="addadmin.aspx" class="btn btn-primary btn-lg btn-block">Add Admin</a>
                </div>
            </div>
        </div>

          <hr />
        </div>
      </div>
    </div>

    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
</asp:Content>

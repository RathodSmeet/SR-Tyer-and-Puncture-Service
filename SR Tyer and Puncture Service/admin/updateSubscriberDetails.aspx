﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="updateSubscriberDetails.aspx.cs" Inherits="SR_Tyer_and_Puncture_Service.admin.updateSubscriberDetails" %>
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
          <div class="row">
            <div class="col-md-12">
              <h2>Edit Subscriber Detail</h2>
            </div>
          </div>
          <hr />
          <div>
               <form class="form-horizontal" role="form">
                   <div class="form-group d-flex fg">
                            <label for="email" class="col-sm-3 control-label text-start h4"> Email</label>
                            <div class="col-sm-9">
                                <asp:TextBox ID="email" CssClass="form-control fc" runat="server"
                                    placeholder="Enter Your Email" TextMode="Email" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ControlToValidate="email"
                                    ErrorMessage="Enter Your Email" ForeColor="Red" Display="Dynamic" SetFocusOnError="True">
                                </asp:RequiredFieldValidator>
                            </div>
                       </div>
                      <div class="form-group d-flex fg">
                            <div style="margin: 40px 280px">
                                <asp:Button ID="add" CssClass="btn btn-primary" runat="server" Text="Update" Width="500px"
                                    Font-Bold="True" Font-Size="25px" OnClick="update_Click" />
                            </div>
                        </div>
            </form>
          </div>
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
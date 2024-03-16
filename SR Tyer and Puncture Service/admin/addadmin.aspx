<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="addadmin.aspx.cs" Inherits="SR_Tyer_and_Puncture_Service.admin.addadmin" %>
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
            <a class="navbar-brand" href="#"
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
              <h2>Add Admin </h2>
            </div>
          </div>
          <hr />
         <div class="row g-4" style="display: flex; justify-content:center">
                    <div class="col-md-6">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Your Name"></asp:TextBox>
                                            <!--<input type="email" class="form-control" id="email" placeholder="Your Email">-->
                                            <asp:Label runat="server" for="name" AssociatedControlID="name">Enter Your Name</asp:Label>
                                            <!--<label for="email">Your Email</label>-->
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="name" ErrorMessage="name must be required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Your Email" TextMode="Email"></asp:TextBox>
                                            <!--<input type="email" class="form-control" id="email" placeholder="Your Email">-->
                                            <asp:Label runat="server" for="email" AssociatedControlID="email">Enter Your Email</asp:Label>
                                            <!--<label for="email">Your Email</label>-->
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ErrorMessage="email must be required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-floating">
                                            <asp:TextBox ID="password" runat="server" class="form-control" placeholder="Your Password" TextMode="Password"></asp:TextBox>
                                            <asp:Label runat="server" for="password" AssociatedControlID="password">Enter Your Password</asp:Label>
                                           <!-- <input type="password" class="form-control" id="password" placeholder="Subject">
                                            <label for="password">Your Password</label>-->
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="password must be required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-floating">
                                            <asp:TextBox ID="cpassword" runat="server" class="form-control" placeholder="Repeat Password" TextMode="Password"></asp:TextBox>
                                            <asp:Label runat="server" for="cpassword" AssociatedControlID="password">Repeat Password</asp:Label>
                                           <!-- <input type="password" class="form-control" id="password" placeholder="Subject">
                                            <label for="password">Your Password</label>-->
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cpassword" ErrorMessage="confirm password must be required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</div>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="cpassword" ErrorMessage="both password not matched" ForeColor="Red"></asp:CompareValidator>
                                    </div>
                                       
                                            <asp:CheckBox runat="server" ID="chkShowPassword" Text="Show Password" onchange="togglePassword();" />
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <asp:TextBox ID="mobile" runat="server" class="form-control" placeholder="Enter Your Mobile No." pattern="[0-9]{10}" ></asp:TextBox>
                                            <asp:Label runat="server" for="mobile" AssociatedControlID="mobile">Enter Your Mobile no.</asp:Label>
                                           <!-- <input type="password" class="form-control" id="password" placeholder="Subject">
                                            <label for="password">Your Password</label>-->
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="mobile" ErrorMessage="mobile must be required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form-floating">
                                            <asp:TextBox ID="dob" runat="server" class="form-control" TextMode="Date" placeholder="Your Date of Birth"></asp:TextBox>
                                            <!--<input type="email" class="form-control" id="email" placeholder="Your Email">-->
                                            <asp:Label runat="server" for="dob" AssociatedControlID="dob">Enter Your Date of Birth</asp:Label>
                                            <!--<label for="email">Your Email</label>-->
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="dob" ErrorMessage="Date of birth must be required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    

                                    <div class="col-12" style="display:flex; justify-content:space-between">
                                        <div class="form-floating">
                                           <a href="login.aspx">Already Registered?</a>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <asp:Button ID="Button1" runat="server" class="btn btn-primary w-100 py-3" Text="GET OTP" OnClick="Button1_Click"  />
                                    </div>
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

     <script>
        function togglePassword() {
            var passwordField = document.getElementById('<%= password.ClientID %>');
            var passwordField1 = document.getElementById('<%= cpassword.ClientID %>');
                var checkBox = document.getElementById('<%= chkShowPassword.ClientID %>');

            // Change the type of the password field based on the checkbox state
            passwordField.type = checkBox.checked ? 'text' : 'password';
            passwordField1.type = checkBox.checked ? 'text' : 'password';
        }
     </script>

</asp:Content>

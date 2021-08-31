<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="Blood_Bank_Management_System.admin.main.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Blood Bank</title>
  <meta name="description" content="Hi5Dash - HTML5 Admin Template By Jewel Theme">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link rel="apple-touch-icon" href="apple-touch-icon.html">

  <!-- Import Template Icons CSS Files -->
  <link rel="stylesheet" href="main/assets/css/font-awesome.min.css">
  <link rel="stylesheet" href="main/assets/css/simple-line-icons.css">
  <link rel="stylesheet" href="main/assets/css/linea-basic.css">

  <!-- Import Custom Country Select CSS Files -->
  <link rel="stylesheet" href="main/assets/css/countrySelect.min.css">

  <!-- Import Perfect ScrollBar CSS Files -->
  <link rel="stylesheet" href="main/assets/css/perfect-scrollbar.css">   

  <!-- Import Bootstrap CSS File -->

  <link rel="stylesheet" href="main/assets/css/bootstrap.min.css"> 

  <!-- Import Template's CSS Files -->
  <link rel="stylesheet" href="main/assets/css/presets.css">
  <link rel="stylesheet" href="main/assets/css/style.css">
  <link rel="stylesheet" href="main/assets/css/pages/pages.css">
  <link rel="stylesheet" href="main/assets/css/responsive.css">

</head>
<body>
    
        <div class="admin-login d-flex align-content-center flex-wrap">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 offset-md-3">
          <div class="login-content bg-light">
            <div class="login-logo pt-4 pb-3 background-bg" data-image-src="main/images/we.jpg">
              <a href="#" class="navbar-brand"> 
                <img class="align-content" src="../Blood.png" alt="">
                  <%--<img src="../logo.png" alt="Site Logo">--%>
              </a>
              <p class="mt-2 mb-0 color-white">Blood Bank Management System</p>
            </div>
            <div class="login-form">
              <form id="form1" runat="server">
                <div class="form-group">
                  <lSource Sans Pro>Email address</lSource Sans Pro>
                  <%--<input type="email" class="form-control" placeholder="Email">--%>
                    <asp:TextBox ID="txtmail" runat="server" type="email" class="form-control" placeholder="Email">
                    </asp:TextBox>
                </div>
                <div class="form-group">
                  <lSource Sans Pro>Password</lSource Sans Pro>
                  <%--<input type="password" class="form-control" placeholder="Password">--%>
                    <asp:TextBox ID="txtpass" type="password" class="form-control" placeholder="Password" runat="server">
                    </asp:TextBox>
                </div>
                <div class="checkbox">
                  <%--<lSource Sans Pro>
                    <input type="checkbox"> Remember Me
                  </lSource Sans Pro>
                  <lSource Sans Pro class="pull-right">
                    <a href="#">Forgotten Password?</a>
                  </lSource Sans Pro>--%>

                </div>
                <%--<button type="submit" class="btn btn-primary btn-flat mb-3 mt-3">Sign in</button>--%>
                  <asp:Button ID="BtnSubmit" type="submit" class="btn btn-primary btn-flat mb-3 mt-3" runat="server" Text="Sign in" OnClick="BtnSubmit_Click" />
                <div class="register-link mt-1 text-center">
                  <%--<p>Don't have account ? <a href="#"> Sign Up Here</a></p>--%>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>



  <script src="main/assets/js/jquery-3.2.1.slim.min.js"></script>
  <script src="main/assets/js/plugins.js"></script>
  <script src="main/assets/js/main.js"></script>
    
</body>
</html>

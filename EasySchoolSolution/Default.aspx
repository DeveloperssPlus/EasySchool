<%@ Page Title="login" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html title="login" xmlns="http://www.w3.org/1999/xhtml" lang="ar-sa">
<head runat="server">
    <meta charset="utf-8" />
    <title>تسجيل الدخول</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta content="" name="description" />
    <link rel="shortcut icon" href="assets/global/images/favicon.png" />
    <link href="assets/global/css/style.css" rel="stylesheet" />
    <link href="assets/global/css/ui.css" rel="stylesheet" />
    <link href="assets/global/plugins/bootstrap-loading/lada.min.css" rel="stylesheet" />
</head>

<body class="rtl sidebar-top account2" data-page="login">

    <!-- BEGIN LOGIN BOX -->
    <div class="container" id="login-block">
        <i class="user-img icons-faces-users-03"></i>
        <div class="account-info">
            <img src="assets/logo-white.png" />        
        </div>
        <div class="account-form">
            <form class="form-signin" runat="server">
                <asp:Login ID="Login1" runat="server"  OnLoggedIn="Login1_LoggedIn" DestinationPageUrl="~/Default2.aspx" OnLoggingIn="Login1_LoggingIn" FailureText="هذا الحساب غير فعال">
                    <LayoutTemplate>
                        <h3><strong>تسجيل الدخول</strong></h3>
                        <div style="color: Red;">
                        
            <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
                            </div>
                        <div class="append-icon">
                            <asp:TextBox runat="server" ID="UserName" CssClass="form-control form-white username" placeholder="اسم المستخدم"></asp:TextBox>
                            <i class="icon-user"></i>
                        </div>
                        <asp:RequiredFieldValidator  runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ValidationGroup="Login1" ToolTip="User Name is required." ForeColor="Red" ID="UserNameRequired">الرجاء ادخال اسم المستخدم</asp:RequiredFieldValidator>

                        <div class="append-icon m-b-20">
                            <asp:TextBox runat="server" TextMode="Password" ID="Password" CssClass="form-control form-white password" placeholder="كلمة المرور"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ForeColor="Red" ErrorMessage="Password is required." ValidationGroup="Login1" ToolTip="Password is required." ID="PasswordRequired">الرجاء ادخال كلمة المرور
                            </asp:RequiredFieldValidator>
      <i class="icon-lock"></i>
                        </div>

                           <div class="append-icon m-b-20">
                            <asp:CheckBox runat="server" ID="RememberMe" CssClass="form-control form-white username" 
                               Text="تذكرني" Checked="true"></asp:CheckBox>
                           
                            <i class="icon-energy"></i>
                              
                        </div>
                    <asp:Button runat="server" CommandName="Login" Text="تسجيل الدخول" ValidationGroup="Login1" ID="LoginButton" CssClass="btn btn-lg btn-dark btn-rounded ladda-button"></asp:Button>
                        <br />
                        <span class="forgot-password"><a id="password" href="account-forgot-password.html">هل نسيت كلمة المرور؟</a></span>
                    </LayoutTemplate>
                </asp:Login>
            </form>
            <div class="form-password" >
                <h3><strong>استرجاع كلمة المرور</strong></h3>
                <div class="append-icon m-b-20">
                    <input type="password" name="password" class="form-control form-white password" placeholder="Password" required>
                    <i class="icon-lock"></i>
                </div>
                <button type="submit" id="submit-password" class="btn btn-lg btn-danger btn-block ladda-button" data-style="expand-left">Send Password Reset Link</button>
                <div class="clearfix m-t-60">
                    <p class="pull-left m-t-20 m-b-0"><a id="login" href="#">هل لديك حساب؟  تسجيل الدخول</a></p>
                </div>
            </div>
        </div>
    </div>
    <!-- END LOCKSCREEN BOX -->
    <p class="account-copyright">
        كافة الحقوق محفوظة<span> ©  2016</span>
    </p>

    <script src="assets/global/plugins/jquery/jquery-1.11.1.min.js"></script>
    <script src="assets/global/plugins/jquery/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/global/plugins/gsap/main-gsap.min.js"></script>
    <script src="assets/global/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/global/plugins/backstretch/backstretch.min.js"></script>
    <script src="assets/global/plugins/bootstrap-loading/lada.min.js"></script>
    <script src="assets/global/js/pages/login-v2.js"></script>

</body>
</html>

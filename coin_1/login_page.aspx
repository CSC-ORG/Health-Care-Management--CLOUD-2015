﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login_page.aspx.cs" Inherits="login_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     
    <link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/1/js-image-slider.js" type="text/javascript"></script>
    <link href="generic.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 200px;
            height: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="position:absolute; top: 514px; left: 472px; height: 322px; width: 345px;">
    
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Log In"></asp:Label>
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="200px" placeholder="  Username/E-mail"></asp:TextBox>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="200px" placeholder="  Password" TextMode="Password"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" ForeColor="#0000CC" Text="Username or Password  is incorrect" Visible="False"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="Button1_Click" />
    
    </div>
    </form>



    <div id="slider_out"  style="position:absolute; width: 1000px; height: 400px; left: 200px; top: 100px;">


         <div id="sliderFrame">
        <div id="slider">
            
                <img src="images/ALLISON_iStock_000018876753XXXLarge_edit.jpg" alt="" />
            
            <img src="images/Backgrounder_dutch_system_edit.jpg" alt="" />
            <img src="images/Stethoscope_By_Computer_Keyboard_edit.jpg"  />
            <img src="images/image-slider-3.jpg"  />
            
        </div>
        <div id="htmlcaption" style="display: none;">
            <em>HTML</em> caption. Link to <a href="http://www.google.com/">Google</a>.
        </div>
    </div>

    </div>



    <div id="top_part" style="position:absolute; width: 1000px; height: 90px; top: 5px; left: 200px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: 55px; font-style: italic; color: #FF8000; text-align: center;">Welcome to H.C.M.S.</div>
<div id="emergency" style="position:absolute; top: 514px; width: 200px; height: 200px; left: 200px;">
    <a href="#">
    <img alt="Emergency" class="auto-style1" src="images/emergency.png" /></a></div>



    <!--  
        fb log in
        -->

     <script>

         function statusChangeCallback(response) {
             console.log('statusChangeCallback');
             console.log(response);

             if (response.status === 'connected') {

                 testAPI();
             } else if (response.status === 'not_authorized') {

                 document.getElementById('status').innerHTML = 'Please log ' +
                   'into this app.';
             } else {

                 document.getElementById('status').innerHTML = 'Please log ' +
                   'into Facebook.';
             }
         }
         function checkLoginState() {
             FB.getLoginStatus(function (response) {
                 statusChangeCallback(response);
             });
         }

         window.fbAsyncInit = function () {
             FB.init({
                 appId: '1586671034943209',
                 cookie: true,  // enable cookies to allow the server to access 
                 // the session
                 xfbml: true,  // parse social plugins on this page
                 version: 'v2.2' // use version 2.2
             });
             FB.getLoginStatus(function (response) {
                 statusChangeCallback(response);
             });

         };

         (function (d, s, id) {
             var js, fjs = d.getElementsByTagName(s)[0];
             if (d.getElementById(id)) return;
             js = d.createElement(s); js.id = id;
             js.src = "//connect.facebook.net/en_US/sdk.js";
             fjs.parentNode.insertBefore(js, fjs);
         }(document, 'script', 'facebook-jssdk'));

         function testAPI() {
             console.log('Welcome!  Fetching your information.... ');
             FB.api('/me', function (response) {
                 console.log('Successful login for: ' + response.name);
                 document.getElementById('status').innerHTML =
                   'Thanks for logging in, ' + response.name + '!';
             });
         }
</script>


<div style="position:absolute; top: 624px; left: 857px; height: 47px; width: 274px;">
<fb:login-button scope="public_profile,email" onlogin="checkLoginState();" >
</fb:login-button>
<!--
<div id="status">
</div>-->
</div>

    
</body>
</html>

<%@ Page Language="VB" AutoEventWireup="true" CodeFile="login.aspx.vb" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--[if lt IE 7 ]> <html class="ie ltie7 ltie8 ltie9" lang="en"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie ie7 ltie8 ltie9" lang="en"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie ie8 ltie9" lang="en"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie ie9 ltie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html lang="en" class=""> <!--<![endif]-->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="keywords" content=""/>
<meta name="description" content=""/>
<meta name="viewport" content="width=device-width">
<title>Welcome to My Sutveys</title>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
</head>
<body class="red">
    <div class="wrap">
    <main id="main_content">
        <div class="align_center">
            <img id="logo" src="images/logo.png">
        </div>

            <form id="form1" runat="server" class="login">
            <asp:Label Visible="false" runat="server" ID="lblError"></asp:Label>
            <asp:Login ID="Login1" runat="server">
                <LayoutTemplate>
                        <asp:TextBox runat="server" id="UserName" placeholder="Email"></asp:TextBox>
                        <asp:TextBox TextMode="Password" runat="server" id="PassWord" placeholder="Password"></asp:TextBox>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="light_button wide"  CommandName="Login"/>
                </LayoutTemplate>
            </asp:Login>
        </form>

     </main><!--end main_content-->
        
        
        
        <footer id="footer">
        
        </footer>
    
    </div><!--end page-->
    

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script>    window.jQuery || document.write('<script src="js/jquery-1.9.1.min.js"><\/script>')</script>
<script src="js/main.js"></script>
    

</body>
</html>

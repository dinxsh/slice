<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Slice.Admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/ContentBox.css" rel="stylesheet"/>
</head>
<body style="background-image:url('Images/slider-img2.jpg'); background-repeat:no-repeat;background-size:1800px;">
    <form id="form1" runat="server">
        <br /><br /><br /><br /><br /><br /><br />
        <center> 
        <div class="content">            
            <h3>Log-In</h3> <hr /><br />
            User-Name: <br />
            <asp:TextBox runat="server" id="UserNameTxt"></asp:TextBox><br /><br />
            Password: <br />
            <asp:TextBox runat="server" id="PassText"></asp:TextBox><br /><br />                       
            <asp:Button runat="server" Text="Log-In"></asp:Button> <br /><br />
            <hr /><a href="Register.aspx">Create Account</a> <hr />
            <br />
        </div>
        </center>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Slice.Admin.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link type="text/css" href="~/Content/ContentBox.css" rel="stylesheet"/>
    <title>Slice | Register</title>    
</head>
<body style="background-image:url('Images/slider-img2.jpg');">
    <form id="form1" runat="server">       
        <center>
        <div class="content">                
            <h3>Register</h3> <hr />
            Name: <br />
            <asp:TextBox runat="server" id="NameTxt"></asp:TextBox> <br /><br />
            UserName: <br />          
            <asp:TextBox runat="server" id="UserNameTxt"></asp:TextBox><br /><br />            
            Number:<br />
            <asp:TextBox  runat="server" id="NumTxt"></asp:TextBox><br /><br />
            Email:<br />              
            <asp:TextBox runat="server" id="EmailTxt"></asp:TextBox><br /><br />
            Password:<br />           
            <asp:TextBox runat="server" id="PassText"></asp:TextBox><br /><br />           

            <asp:Button runat="server" OnClick="RegisterFunc" Text="Register"></asp:Button> <br /><br /><hr />
            <a href="login.aspx">Log-In instead</a> <hr />
            <p>By Registering you accept our <a href="terms_policies">terms and policies</a></p>                            
        </div>
        </center>
    </form>
</body>
</html>

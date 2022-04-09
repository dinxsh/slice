<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Slice.User.Register" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link type="text/css" href="~/Content/ContentBox.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Slice | Register</title>    
</head>
<body style="background-image:url('/images/Book-Img.jpg');">
    <form id="form1" runat="server">       
        <center>
        <div class="content"><br />                
            <h3 id="TitleTxt">Register</h3> <hr />
            <div class="form-group">
                Name: <br />
                <asp:TextBox class="form-control" runat="server" id="NameTxt" CssClass="TxtBox"></asp:TextBox> <br />
            </div>
            <div class="form-group">
                Username: <br />          
                <asp:TextBox class="form-control"  runat="server" id="UserNameTxt" CssClass="TxtBox"></asp:TextBox><br />
            </div>
            <div class="form-group">
                Number:<br />
                <asp:TextBox class="form-control" runat="server" id="NumTxt" CssClass="TxtBox"></asp:TextBox><br />
            </div>
            <div class="form-group">
                Email:<br />              
                <asp:TextBox class="form-control" runat="server" id="EmailTxt" CssClass="TxtBox"></asp:TextBox><br />
            </div>
            <div class="form-group">
                Password:<br />           
                <asp:TextBox class="form-control" runat="server" id="PassText" CssClass="TxtBox"></asp:TextBox><br />
            </div>
            <asp:Button runat="server" OnClick="RegisterFunc" ID="RegButton" Text="Register"></asp:Button> <br /><br /><hr />
            <a href="login.aspx">Log-In instead</a> <hr />
            <p>By Registering you accept our <a href="terms_policies">terms and policies</a></p>                            
        </div>
        </center>
    </form>
</body>
</html>

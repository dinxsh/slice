<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Slice.User.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Freecart - Register</title>
    <link href="Content/ContentBox.css" rel="stylesheet"/>
</head>
<body style="background-image:url('Images/about-img.jpg');">    
        <center>
        <div class="content">
            <center>
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
            </center>
        </div>
        </center>
</body>
</html>

</asp:Content>

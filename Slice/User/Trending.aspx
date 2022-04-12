<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.Master" AutoEventWireup="true" CodeBehind="Trending.aspx.cs" Inherits="Slice.User.Trending" %>	
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    		
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>        
        .BookCard {
            background-color: rgba(0,0,0,.1);
            box-shadow:10px;
            margin:5px; 
            width:40%;
        }
        .BookName {
            font-size:20px;
            font-family:Cambria;
            font-weight:1000;
            margin:20px;
            opacity:10;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">	
    <br /><br /><br /><br />
    <center>
    <div class="BookCard" >

    <p class="BookName">1)The Bible</p><br /><hr />        
        <button><span class="material-icons-outlined">bookmark</span></button>
        <button>Download</button>
        <button>Read</button> <br /> <br /> 
    </div>
    <div class="BookCard" >
    <p class="BookName">2)The Quran</p><br /><hr />        
        <button>star</button>
        <button>Download</button>
        <button>Read</button> <br /><br />
    </div> 
    <div class="BookCard" >
    <p class="BookName">3)The Lord of the Rings</p><br /><hr />
        <button>star</button>
        <button>Download</button> 
        <button>Read</button> <br /><br />
    </div>
    <div class="BookCard" >
    <p class="BookName">4)Harry Potter</p><br /><hr />
        <button>star</button>
        <button>Download</button>
        <button>Read</button> <br /><br />
    </div>
    <div class="BookCard" >
    <p class="BookName">1)The Bible</p><br /><hr />
        <button>star</button>
        <button>Download</button>
        <button>Read</button> <br /><br /><hr />
    </div>
    <div class="BookCard" >
    <p class="BookName">1)The Bible</p><br /><hr />
        <button>star</button>
        <button>Download</button>
        <button>Read</button> <br /><br />
    </div>
    <div class="BookCard" >
    <p class="BookName">1)The Bible</p><br /><hr />
        <button>star</button>
        <button>Download</button>
        <button>Read</button> <br /><br />
    </div>
    <div class="BookCard" >
    <p class="BookName">1)The Bible</p><br /><hr />
        <button><span class="material-icons-outlined">star</span></button>
        <button>Download</button>
        <button>Read</button> <br /><br />
    </div>
    </center>
</asp:Content>
   
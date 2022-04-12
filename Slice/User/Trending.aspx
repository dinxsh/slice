<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.Master" AutoEventWireup="true" CodeBehind="Trending.aspx.cs" Inherits="Slice.User.Trending" %>	
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    		
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href="../Scripts/Trending.js" />
	<script>
	let i=0;
	$(document).ready(function() {			
		$.ajax({
			url: "https://api.itbook.store/1.0/new",
			type: 'GET',
			success: function(res) {
				for (i=0; i<=res.total; i++){	
					console.log(res);
					const img = document.createElement("image");
					img.setAttribute("class", "BookDiv");
					img.src = res.books[i].image;					
					document.getElementById("BookDiv").appendChild(img);																					
				}				
		}
	});});
	</script>
    <style>        
        .BookCard {
            background-color: rgba(0,0,0,.1);
            box-shadow: 8px 8px gray;
            margin:5px; 
            width:40%;
            border-radius:10px;
        }
        .BookName {
            font-size:20px;
            font-family:Cambria;
            font-weight:1000;
            margin:20px;            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">	
<center>
<br><hr><br><br />
    <p>Categories</p> <br>
	<div class="dropdown">
	  <button class="btn btn-secondary btn-lg dropdown-toggle" type="button"  data-toggle="dropdown">
		Select Category
	  </button>
	  <div class="dropdown-menu">
		<a class="dropdown-item" href="#">Technology</a>
		<a class="dropdown-item" href="#">Medical</a>
		<a class="dropdown-item" href="#">Health</a>
		<a class="dropdown-item" href="#">Stock</a>
	  </div>
	</div>
 
<br><br><hr>	

	<div id="BookDiv"></div>
		
    <div class="BookCard" >
    <p class="BookName">1)The Bible</p><br /><hr />        
        <button>star</button>
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
   
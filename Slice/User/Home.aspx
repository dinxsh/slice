<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Slice.User.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
    <style>
		#BookDiv{			
			margin:30px;
		}		
	</style>	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script>
	$(document).ready(function() {	
	const settings = {
	"async": true,
	"crossDomain": true,
	"url": "https://bookshelves.p.rapidapi.com/books",
	"method": "GET",
	"headers": {
		"X-RapidAPI-Host": "bookshelves.p.rapidapi.com",
		"X-RapidAPI-Key": "d9530def8dmsh6dcb6776fae04afp146fe2jsn3cf4b9769aba"
	}
	};
		
	$.ajax(settings).done(function (response) {						
		for (i=1; i<=36; i++){	
			console.log(response);
			const img = document.createElement("img");
			img.src = response.Books[i].imgUrl;		
			document.getElementById("BookDiv").appendChild(img);																					
		}
	});});    
	</script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">        
    <br /><br /><br /><br /><br />	

<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="../images/Book-Img.jpg" alt="App" style="width:100%;">
        <div class="carousel-caption">
          <h3>Los Angeles</h3>
          <p>LA is always so much fun!</p>
        </div>
      </div>

      <div class="item">
        <img src="../images/Picture1.jpg" alt="App" style="width:100%;">
        <div class="carousel-caption">
          <h3>Chicago</h3>
          <p>Thank you, Chicago!</p>
        </div>
      </div>
    
      <div class="item">
        <img src="../images/Book-Img.jpg" alt="App" style="width:100%;">
        <div class="carousel-caption">
          <h3>New York</h3>
          <p>We love the Big Apple!</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


	<h3 style="margin-left:60px;">Reccomended</h3><hr />
	<div class="BookDiv" id="BookDiv"></div>
</asp:Content>

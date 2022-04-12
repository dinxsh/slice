<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Slice.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">        
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>	
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>	
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
			img.setAttribute("class", "ImgElems");
			img.setAttribute("href",  response.Books[i].imgUrl);
			img.src = response.Books[i].imgUrl;					
			document.getElementById("BookDiv").appendChild(img);																					
		}
	});});    
	</script>
	<style>
	.ImgElems{
		margin:20px;
	}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		
<div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-ride="carousel">    
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>      
        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>      
    </ol>    
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="../images/Book-Img6.jpg" alt="First slide" style="max-height:100vh;">
            <div class="carousel-caption d-none d-md-block">
                <center>
                <button style="margin-bottom:40px;font-size:20px;" type="button" class="btn btn-info">View Page</button>                
                </center>
            </div>
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="../images/Book-Img2.jpg" alt="Second slide"  style="max-height:100vh;">                        
            <div class="carousel-caption d-none d-md-block">
                <center>
                <button style="margin-bottom:40px;font-size:20px;" type="button" class="btn btn-info">View Page</button>                
                </center>
            </div>
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="../images/Book-Img3.jpg" alt="Third slide" style="max-height:100vh;">
            <div class="carousel-caption d-none d-md-block">
                <center>
                <button style="margin-bottom:40px;font-size:20px;" type="button" class="btn btn-info">View Page</button>                   
                </center>
            </div>
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="../images/Book-Img4.jpg" alt="Third slide" style="max-height:100vh;">
            <div class="carousel-caption d-none d-md-block">
                <center>
                <button style="margin-bottom:40px;font-size:20px;" type="button" class="btn btn-info">View Page</button>                
                </center>
            </div>
        </div>        
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
	<br>
	<h3 style="margin-left:60px;font-size:24px;">Reccomended Books</h3><hr />
	<div class="BookDiv" id="BookDiv"></div>
</asp:Content>

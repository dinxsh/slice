<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Slice.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>	
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
	<h3 style="margin-left:60px;">Reccomended</h3><hr />
	<div class="BookDiv" id="BookDiv"></div>
</asp:Content>

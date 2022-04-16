<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.Master" AutoEventWireup="true" CodeBehind="ISBN.aspx.cs" Inherits="Slice.User.ISBN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    	
	<style>
	.ParaElems{ font-family:Cambria;
				font-size:24px;
				}	
	</style>
	<script>
		function GetData(){
			$.ajax({
				url: "https://api.itbook.store/1.0/books/" + $('#input_txt').val(),
				type: 'GET',
				success: function(res) {					
					const img = document.createElement("img");
					img.setAttribute("class", "ParaElems");
					img.setAttribute("href",  res.image);
					img.src = res.image;					
					document.getElementById("Content").appendChild(img);																					
					
					const title = document.createElement("p");
					title.setAttribute("class", "ParaElems");
					title.innerHTML = "Title: " + res.title + "<hr />"; 	
					document.getElementById("Content").appendChild(title);																					
					
					const subtitle = document.createElement("p");
					subtitle.setAttribute("class", "ParaElems");					
					subtitle.innerHTML = "Subtitle: " + res.subtitle + "<hr />";
					document.getElementById("Content").appendChild(subtitle);																					

					const desc = document.createElement("p");
					desc.setAttribute("class", "ParaElems");					
					desc.innerHTML = "Description: " + res.desc + "<hr />";
					document.getElementById("Content").appendChild(desc);																					

					const author = document.createElement("p");
					author.setAttribute("class", "ParaElems");					
					author.innerHTML = "Author: " + res.authors + "<hr />";
					document.getElementById("Content").appendChild(author);																					
					
					const price = document.createElement("p");
					price.setAttribute("class", "ParaElems");					
					price.innerHTML = "Price: " + res.price + "<hr />";
					document.getElementById("Content").appendChild(price);																					
					
					const pages = document.createElement("p");
					pages.setAttribute("class", "ParaElems");					
					pages.innerHTML = "Price: " + res.pages + "<hr />";
					document.getElementById("Content").appendChild(pages);																					
					
					const button = document.createElement("a");
					button.setAttribute("class", "ParaElems");					
					button.setAttribute("target", "_blank");					
					button.setAttribute("href", res.url);	
					button.innerHTML = "Read More" + "<hr />";
					document.getElementById("Content").appendChild(button);																					
				},
				error:
					function(error){
						alert("Invalid ISBN code");
					}
			});			
		}	
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ISBN_no">
        <center>
        <br /><br /><br /><br />
        <p>Enter ISBN number: </p> 
        <input type="text" id="input_txt" placeholder="ISBN Number"/> <button style="background-color:aquamarine;border:1px solid #1d3296;" onclick="GetData()">Search</button>
        <br /><br />
        <p>ISBN Search Using an ISBN is the most accurate and reliable way to search for a book.<br /> Use our search engine to find book information and the best prices for books.</p>
        <br />
        <img src="https://isbnsearch.org/images/isbn-location.png" alt="ISBN Image with barcode"/>
            <br /><br /><hr />
			<div id="Content">				
			</div>
        </center>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.Master" AutoEventWireup="true" CodeBehind="Dictionary.aspx.cs" Inherits="Slice.User.Dictionary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style>
	#Content {
		width:60%;
		box-shadow: 5px 10px 18px #888888:
	}
	</style>
	
	
	<script>		
		function SearchWord(){	
			//Removing Previous Results before showing new ones
			document.getElementById("Content").innerHTML = "";	
			var Word = document.getElementById("WordInput").value;	
						
			const settings = {
				"async": true,
				"crossDomain": true,
				"url": "https://mashape-community-urban-dictionary.p.rapidapi.com/define?term=" + Word,
				"method": "GET",
				"headers": {
					"X-RapidAPI-Host": "mashape-community-urban-dictionary.p.rapidapi.com",
					"X-RapidAPI-Key": "d9530def8dmsh6dcb6776fae04afp146fe2jsn3cf4b9769aba"
				}
			};

			$.ajax(settings).done(function (res) {				
				console.log(res);																
				const SearchedFor = document.createElement("p");
				SearchedFor.setAttribute("class", "ParaElems");
				SearchedFor.innerHTML = "Searched For: " + res.list[0].word + "<hr />"; 	
				document.getElementById("Content").appendChild(SearchedFor);																					
				
				const def = document.createElement("p");
				def.setAttribute("class", "ParaElems");
				def.innerHTML = "Title: " + res.list[0].definition + "<br />"; 	
				document.getElementById("Content").appendChild(def);																					
				
				const Example = document.createElement("p");
				Example.setAttribute("class", "ParaElems");
				Example.innerHTML = "Example: " + res.list[0].example + "<br />"; 	
				document.getElementById("Content").appendChild(Example);																					

				const author = document.createElement("p");
				author.setAttribute("class", "ParaElems");
				author.innerHTML = "Author: " + res.list[0].author + "<br />"; 	
				document.getElementById("Content").appendChild(author);																					
				
				const ReadMore = document.createElement("a");
				ReadMore.setAttribute("class", "button btn-primary");
				ReadMore.setAttribute("href", res.list[0].permalink);
				ReadMore.innerHTML = "Read More" + "<hr />"; 	
				document.getElementById("Content").appendChild(ReadMore);																					
				
				const WrittenOn = document.createElement("p");
				WrittenOn.setAttribute("class", "Para Elems");				
				WrittenOn.innerHTML = "Written On: " + res.list[0].written_on + "<br />"; 	
				document.getElementById("Content").appendChild(WrittenOn);																					
			});
			}
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div>
		<center>
		<br /><br /><br /><br /><br />
		<p></p>
		<input type="text" id="WordInput" placeholder="Enter Word"/>
		<button onclick="SearchWord()" class="button btn-info">Search</button>
		<br /><hr />
		<br />
		
		<div id="Content">						
		</div>		
		
		</center>
	</div>
</asp:Content>


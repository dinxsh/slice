<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.Master" AutoEventWireup="true" CodeBehind="Dictionary.aspx.cs" Inherits="Slice.User.Dictionary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<script>

		function GetWord(Word){
				const settings = {
			"async": true,
			"crossDomain": true,
			"url": $`https://mashape-community-urban-dictionary.p.rapidapi.com/define?term={Word}`,
			"method": "GET",
			"headers": {
				"X-RapidAPI-Host": "mashape-community-urban-dictionary.p.rapidapi.com",
				"X-RapidAPI-Key": "d9530def8dmsh6dcb6776fae04afp146fe2jsn3cf4b9769aba"
			}
		};

		$.ajax(settings).done(function (response) {
			console.log(response);
		});}
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div>
		<center>
		<br /><br /><br /><br /><br />
		<p></p>
		<input type="text" name="Word" placeholder="Enter Word"/>
		<button >Search</button>
		<br /><hr />
		<br />
		<p id="SearchedFor">Searched For</p>
		<p id="Results"></p>
		<p id="Date"></p>
		</center>
	</div>
</asp:Content>

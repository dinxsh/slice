<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.Master" AutoEventWireup="true" CodeBehind="Trending.aspx.cs" Inherits="Slice.User.Trending" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
		<script>
		$(document).ready(function() {	
			const settings = {
		"async": true,
		"crossDomain": true,
		"url": "https://goodreads-books.p.rapidapi.com/genres/fantasy/best",
		"method": "GET",
		"headers": {
			"X-RapidAPI-Host": "goodreads-books.p.rapidapi.com",
			"X-RapidAPI-Key": "d9530def8dmsh6dcb6776fae04afp146fe2jsn3cf4b9769aba"
		}
	};	
	$.ajax(settings).done(function (response) {
		console.log(response);
	}); });	
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="TopBookDiv" id="BookDiv"></div>
</asp:Content>

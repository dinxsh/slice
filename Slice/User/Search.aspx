<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Slice.User.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<br><br><br><br><br>
	<input type="text" id="BookName" style="margin-left:20px;" placeholder="Enter Book Name"/>
	<button type="button" onclick="SearchBook()" class="btn btn-primary" style="margin-left:10px;">Search</button> 
	<hr>
	
	<script>	
		$.ajax({
			url: "https://www.googleapis.com/books/v1/volumes?q=html&callback=handleResponse",
			type: 'GET',
			success: function(res) {
				console.log(res);	
				console.log(res['handleResponse']['items']);													
			}
		});	
	</script>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.Master" AutoEventWireup="true" CodeBehind="Trending.aspx.cs" Inherits="Slice.User.Trending" %>	
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    		
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">			
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
    <br /><br /><br /><br /><br />
    <div class="container">
      <div id="title" class="center"><br />
        <h1 id="header" class="text-center mt-5"> Book Finder</h1> <br />
        <div class="row">
          <div id="input" class="input-group mx-auto col-lg-6 col-md-8 col-sm-12">
            <input style="width:20px; height:40px;" id="search-box" type=" text" class="form-control" placeholder="Search for a book name">
            <button id="search" class="btn btn-primary" onclick="">Search</button>
        </div>
        </div>
      </div>
      <div class="book-list" >
          <br /><hr />
        <h2 class="text-center">Search Result</h2><hr />
        <div id="list-output" class="">
          <div class="row"> 		  
          </div>

        </div>
      </div>
    </div>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script> -->
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
    <link rel="stylesheet" href="../Content/SearchStyle.css">
    <script src="../Scripts/index.js"></script>  
</asp:Content>
   
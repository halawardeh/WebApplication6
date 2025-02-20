﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllBooks.aspx.cs" Inherits="WebApplication6.AllBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <title></title>
    <style>
           .view-btn {
       padding: 10px 20px;
       background-color: #007bff;
       color: white;
       border: none;
       border-radius: 5px;
       cursor: pointer;
       text-decoration: none;
       display: inline-block;
   }
   .view-btn:hover {
       background-color: #0056b3;
   }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

           <br /><br /> <h2 style="text-align:center">Our Books</h2> <br /><br />
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Book ID</th>
                        <th scope="col">Book Name</th>
                        <th scope="col">Book Type</th>
                        <th scope="col">Book Level</th>
                    </tr>
                </thead>
                <tbody id="bookTable" runat="server" >
                </tbody>
            </table> 
             <br />
            <br />



            <asp:TextBox ID="SearchedBookId" runat="server" CssClass="view-btn" placeholder="Enter Book ID" />
            <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="search-btn" OnClick="search_Click" />

            <h2 style="text-align: center">Searched Book: </h2>
            <br />
            <br />
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Book ID</th>
                        <th scope="col">Book Name</th>
                        <th scope="col">Book Type</th>
                        <th scope="col">Book Level</th>
                    </tr>
                </thead>
                <tbody id="SearchedBook" runat="server">
                </tbody>
            </table>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

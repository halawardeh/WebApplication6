<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCards.aspx.cs" Inherits="WebApplication6.AdminCards" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <style>
         .twoCol{
     display: grid;
     grid-template-columns: auto auto;
     margin: 5% 19%;
 }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="twoCol">
               <br /><br />
   <h2 >Admin Cards</h2>
            
     <div class="card" style="width: 18rem;">
         <img class="card-img-top" src="https://i.pinimg.com/236x/ea/62/87/ea6287544591f5321a299a8519d8b304.jpg" alt="Card image cap"/>
         <div class="card-body">
             <h5 class="card-title">See All Books</h5>
             <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
             <asp:Button runat="server" ID="allBooksAdmin" class="btn btn-primary" Text="All Books" OnClick="allBooksAdmin_Click" />

         </div>
     </div>

     
     <div class="card" style="width: 18rem;">
         <img class="card-img-top" src="https://i.pinimg.com/736x/56/45/2b/56452b73d7b7ce1b4efbfe24d3255644.jpg" alt="Card image cap"/>
         <div class="card-body">
             <h5 class="card-title">Add Book</h5>
             <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
             <asp:Button runat="server" ID="addBook" class="btn btn-primary" Text="Add_Book" OnClick="addBook_Click" />
             <asp:Button runat="server" ID="editBook" class="btn btn-primary" Text="Edit_Book" OnClick="editBook_Click" />
         </div>
     </div>

 </div>
    </form>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />

</body>
</html>

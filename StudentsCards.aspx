<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentsCards.aspx.cs" Inherits="WebApplication6.StudentsCards" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title></title>
    <style>
        .twoCol{
            display: grid;
            grid-template-columns: auto auto;
            margin: 5% 19%;
        }
    </style>
</head>
<body>
    <br /><br />
    <h2 style="text-align : center ">Powers of Students</h2>
    <form id="form1" runat="server">

        <div class="twoCol">


            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="https://i.pinimg.com/236x/ea/62/87/ea6287544591f5321a299a8519d8b304.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">See All Books</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                   <asp:Button runat="server" ID="allBooks" class="btn btn-primary" Text="All Books" OnClick="allBooks_Click" />
                </div>
            </div>

            
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="https://i.pinimg.com/236x/af/29/89/af29897af4cd833d34ee0ac8bd7c2ca8.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">See Meeting Rooms</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <asp:Button runat="server" ID="allRooms" class="btn btn-primary" Text="Meeting Rooms" OnClick="allRooms_Click" />

                </div>
            </div>

        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

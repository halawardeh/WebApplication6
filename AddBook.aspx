<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="WebApplication6.AddBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background: #ddd;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
            width: 300px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button {
            background: #333;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            width: 100%;
        }

            button:hover {
                background: #555;
            }
    </style>


    <title></title>
</head>
<body>
    <form id="form1" runat="server">

         <div class="form-container">
   
                        
        <label for="id">ID</label>
        <asp:TextBox runat="server"  type="text" id="ID" name="id" placeholder="Enter Book ID"></asp:TextBox>

        <label for="name">Name</label>
       <asp:TextBox runat="server"  type="text" id="BookName"  placeholder="Enter Book Name"></asp:TextBox>

        <label for="kind">Kind</label>
        <asp:TextBox runat="server"  type="text" id="bookKind"  placeholder="Enter Book Type"></asp:TextBox>

        <label for="level">Level</label>
        <asp:TextBox runat="server"  type="text" id="bookLevel"  placeholder="Enter Book Level"></asp:TextBox>

        <asp:Button runat="server" ID="AddBook" Text="Add"  OnClick="AddBook_Click" />
        <asp:Label runat="server" ID="lblMessage"  Visible="false"></asp:Label>

    </div>
    </form>
</body>
</html>

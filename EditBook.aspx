<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBook.aspx.cs" Inherits="WebApplication6.EditBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        h2 {
            text-align: center;
        }
        label {
            font-weight: bold;
        }
        input {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            width: 100%;
            padding: 10px;
            background: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background: #0056b3;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <h2>Edit Book</h2>

        <label for="bookId">Enter Book ID:</label>
        <asp:TextBox runat="server" type="text" ID="bookId" name="bookId"></asp:TextBox>

        <label for="bookName">New Book Name:</label>
        <asp:TextBox runat="server" type="text" ID="bookName" name="bookName"></asp:TextBox>

        <label for="bookType">New Book Type:</label>
        <asp:TextBox runat="server" type="text" ID="bookType" name="bookType"></asp:TextBox>

        <label for="bookLevel">New Book Level:</label>
        <asp:TextBox runat="server" type="text" ID="bookLevel" name="bookLevel"></asp:TextBox>

        <asp:Button runat="server" ID="updateBook" Text="Update Book" OnClick="updateBook_Click" />
        <asp:Label runat="server" ID="lblMessage" Visible="false"></asp:Label><br />

    </form>
</body>
</html>

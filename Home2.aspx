<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home2.aspx.cs" Inherits="WebApplication6.Home2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Home Page</title>
  <style>
       body {
          font-family: Arial, sans-serif;
          text-align: center;
          background-color: #f4f4f4;
          padding: 50px;
      }
      .container {
          background: white;
          padding: 20px;
          border-radius: 10px;
          box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
          display: inline-block;
      }
      img {
          width: 100px;
          border-radius: 50%;
          margin-bottom: 10px;
      }
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
        <div class="container">
            <img src="https://i.pinimg.com/736x/a5/23/8d/a5238d62c3ff11529dfe3458754f9d25.jpg" alt="Profile Picture">
            <h2>Welcome to Your Home Page</h2>
            <p>Discover your profile details and explore more features.</p>
            <asp:Button runat="server" ID="ViewProfile" class="view-btn" Text="View Profile" OnClick="EditProfile_Click" />
        </div>
        <div class="container">
            <img src="https://i.pinimg.com/236x/17/11/bb/1711bb6c92e0a4a1fdd1545e0e89e345.jpg" alt="Students Cards">
            <h2>Welcome to Cards</h2>
            <p>Discover your Cards and explore more features.</p>
            <asp:Button runat="server" ID="StudentsCards" class="view-btn" Text="View Cards" OnClick="StudentsCards_Click" />
        </div>
    </form>

    

</body>
</html>

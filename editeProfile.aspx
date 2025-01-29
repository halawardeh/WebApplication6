<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editeProfile.aspx.cs" Inherits="WebApplication6.editeProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Profile Page</title>
 <style>
     body {
         font-family: Arial, sans-serif;
         background-color: #f4f4f4;
         display: flex;
         justify-content: center;
         align-items: center;
         height: 100vh;
     }
     .profile-container {
         background: white;
         padding: 20px;
         border-radius: 10px;
         box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
         width: 300px;
     }
     .profile-container h2 {
         text-align: center;
     }
     .form-group {
         margin-bottom: 15px;
     }
     .form-group label {
         display: block;
         margin-bottom: 5px;
     }
     .form-group input {
         width: 100%;
         padding: 8px;
         border: 1px solid #ccc;
         border-radius: 5px;
     }
     .edit-btn {
         width: 100%;
         padding: 10px;
         background-color: #007bff;
         color: white;
         border: none;
         border-radius: 5px;
         cursor: pointer;
     }
     .edit-btn:hover {
         background-color: #0056b3;
     }
     </style>
</head>
<body>
         <div class="profile-container">
    <h2>Profile</h2>
    <div class="form-group">
        <label for="username">Username</label>
        <asp:TextBox runat="server" type="text" id="username" ></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="email">Email</label>
        <asp:TextBox runat="server" type="email" id="email" ></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <asp:TextBox runat="server" type="password" id="password" ></asp:TextBox>
    </div>
    <asp:Button ID="editProfile" runat="server" class="edit-btn" OnClick="editProfile_Click" Text="Save Changes" />
</div>
</form>

    </form>
</body>
</html>

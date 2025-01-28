<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="UserAuthApp.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .register-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 300px;
        }

            .register-container h2 {
                text-align: center;
            }

        .form-control {
            width: 100%;
            margin-bottom: 10px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
        }
        .btn1 {
            width: 100%;
            padding: 10px;
            background-color: #fff;
            color: black;
            border: none;
            border-radius: 4px;
        }
         .error-message {
             color: red;
             text-align: center;
          
        }
    </style>
</head>
<body>
    <form id="form1" runat="server"> <%-- registration form--%>
        <div class="register-container">

            <h2>Sign Up</h2>

            <label>User Name</label> <%--username label--%>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox> <%--username TextBox--%>

            <label>Email</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>

            <label>password</label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>

            <label>Repeat Password</label>
            <asp:TextBox  ID="txtRepeatPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>

            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn"  OnClick="btnRegister_Click" />
            <asp:Label ID="lblMessage" runat="server" CssClass="error-message"  Visible="false"></asp:Label> 
            <asp:Button runat="server" ID="btnLogin" Text="Login" CssClass="btn1" OnClick="btnLogin_Click" />

        </div>
    </form>


</body>
</html>

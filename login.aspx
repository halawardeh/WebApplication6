<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="UserAuthApp.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card p-4">
                        <h2 class="text-center">Login</h2>
                        <div class="mb-3">
                            <label for="useremail" class="form-label">Email</label>
                            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" placeholder="Enter Email" />
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="form-control" placeholder="Enter password" />
                        </div>

                        <asp:Button runat="server" ID="btnLogin" Text="Login" CssClass="btn btn-primary w-100" OnClick="btnLogin_Click" />
                        <asp:Label runat="server" ID="lblMessage" CssClass="text-center mt-3" Visible="false"></asp:Label><br />
                       <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn"  OnClick="btnRegister_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

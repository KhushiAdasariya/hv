<%@ Page Title="Login - Hidden Valley" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="hv.User.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Login
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f7fb;
            margin: 0;
            padding: 0;
        }

        .login-container {
            max-width: 400px;
            margin: 80px auto;
            padding: 40px 35px;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }

        .login-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.15);
        }

        .login-container h2 {
            text-align: center;
            font-size: 28px;
            font-weight: 600;
            color: #2c3e50;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: 500;
            margin-bottom: 8px;
            color: #2c3e50;
        }

        .form-control {
            width: 100%;
            padding: 12px 14px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            box-sizing: border-box;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #7c8b38;
            box-shadow: 0 0 6px rgba(124, 139, 56, 0.3);
            outline: none;
        }

        /* LOGIN BUTTON */
        .btn-login {
            width: 100%;
            padding: 14px 0;
            background: #7c8b38;
            color: #fff;
            font-size: 16px;
            font-weight: 600;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-login:hover {
            background: #5f6e2b;
            box-shadow: 0 6px 16px rgba(95, 110, 43, 0.3);
            transform: translateY(-2px);
        }

        .validation-error {
            color: #e74c3c;
            font-size: 13px;
            margin-top: 4px;
            display: block;
        }

        #lblMessage {
            text-align: center;
            color: #e74c3c;
            font-weight: 600;
            margin-top: 12px;
        }

        .links {
            text-align: center;
            margin-top: 18px;
        }

        .links a {
            color: #7c8b38;
            text-decoration: none;
            font-weight: 500;
        }

        .links a:hover {
            text-decoration: underline;
        }

        @media (max-width: 480px) {
            .login-container {
                margin: 30px 20px;
                padding: 30px 25px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-container">
        <h2>Login</h2>

        <div class="form-group">
            <label for="txtunm">Email</label>
            <asp:TextBox ID="txtunm" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ControlToValidate="txtunm" ErrorMessage="Email is required" 
                CssClass="validation-error"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                ControlToValidate="txtunm" ErrorMessage="Enter a valid email"
                ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" 
                CssClass="validation-error"></asp:RegularExpressionValidator>
        </div>

        <div class="form-group">
            <label for="txtpwd">Password</label>
            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPwd" runat="server" 
                ControlToValidate="txtpwd" ErrorMessage="Password is required" 
                CssClass="validation-error"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revPwd" runat="server" 
                ControlToValidate="txtpwd" ErrorMessage="Password must be at least 6 characters" 
                ValidationExpression="^.{6,}$" CssClass="validation-error"></asp:RegularExpressionValidator>
        </div>

        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn-login" OnClick="Button1_Click" />

        <asp:Label ID="lblMessage" runat="server"></asp:Label>

        <div class="links">
            <a href="register.aspx">Register</a> | 
            <a href="forgotpassword.aspx">Forgot Password?</a>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="hv.User.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
        <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f4f7fa;
        }

        .form-container {
            width: 400px;
            margin: 60px auto;
            padding: 25px;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0px 4px 15px rgba(0,0,0,0.1);
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .form-group {
            margin-bottom: 18px;
        }

        .form-group label {
            display: block;
            font-weight: 600;
            margin-bottom: 6px;
            color: #444;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        .form-control:focus {
            border-color: #007bff;
            outline: none;
        }

        .btn-submit {
            width: 100%;
            padding: 10px;
            background: #007bff;
            color: white;
            font-weight: bold;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-submit:hover {
            background: #0056b3;
        }

        .validation-error {
            color: red;
            font-size: 13px;
            display: block;
        }

        #lblMessage {
            display: block;
            text-align: center;
            margin-top: 12px;
            font-weight: bold;
            color: red;
        }

        .links {
            text-align: center;
            margin-top: 15px;
        }

        .links a {
            text-decoration: none;
            color: #007bff;
        }

        .links a:hover {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="form-container">
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

        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn-submit" OnClick="Button1_Click" />

        <asp:Label ID="lblMessage" runat="server"></asp:Label>

        <div class="links">
            <a href="register.aspx">Register</a> | 
            <a href="forgotpassword.aspx">Forgot Password?</a>
        </div>
   </div>
</asp:Content>

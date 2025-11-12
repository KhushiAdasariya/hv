<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginadmin.aspx.cs" Inherits="hv.Admin.loginadmin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');

        body {
            font-family: 'Poppins', 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #1e3c72, #2a5298);
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        .login-container {
            width: 400px;
            background: #ffffff;
            border-radius: 20px;
            box-shadow: 0 15px 50px rgba(0, 0, 0, 0.25);
            padding: 50px 35px;
            text-align: center;
            position: relative;
            overflow: hidden;
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .login-container::before,
        .login-container::after {
            content: '';
            position: absolute;
            border-radius: 50%;
            z-index: 0;
        }

        .login-container::before {
            top: -60px;
            right: -60px;
            width: 150px;
            height: 150px;
            background: radial-gradient(circle, rgba(30,144,255,0.3), transparent);
        }

        .login-container::after {
            bottom: -60px;
            left: -60px;
            width: 150px;
            height: 150px;
            background: radial-gradient(circle, rgba(0,198,255,0.3), transparent);
        }

        .login-container * {
            position: relative;
            z-index: 1;
        }

        h2 {
            color: #2c3e50;
            font-weight: 700;
            font-size: 28px;
            margin-bottom: 30px;
        }

        .form-control {
            width: 100%;
            padding: 14px 16px;
            margin-bottom: 20px;
            border: 1.5px solid #ccc;
            border-radius: 12px;
            font-size: 15px;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #1e90ff;
            box-shadow: 0 0 15px rgba(30,144,255,0.4);
            outline: none;
        }

        .btn-submit {
            width: 100%;
            padding: 14px;
            background: linear-gradient(135deg, #1e90ff, #00c6ff);
            border: none;
            border-radius: 12px;
            color: #fff;
            font-size: 17px;
            font-weight: 600;
            cursor: pointer;
            letter-spacing: 0.5px;
            transition: all 0.3s ease;
            box-shadow: 0 8px 20px rgba(30,144,255,0.3);
        }

        .btn-submit:hover {
            background: linear-gradient(135deg, #0c61b7, #00a3d3);
            transform: translateY(-2px);
            box-shadow: 0 12px 25px rgba(30,144,255,0.35);
        }

        #lblMessage {
            display: block;
            margin-bottom: 15px;
            font-weight: 600;
            color: #e74c3c;
            font-size: 14px;
        }

        .footer-text {
            margin-top: 25px;
            color: #777;
            font-size: 14px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Admin Login</h2>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>

            <asp:TextBox ID="txtuse" runat="server" CssClass="form-control" Placeholder="Enter Email"></asp:TextBox>
            <asp:TextBox ID="txtped" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Enter Password"></asp:TextBox>

            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-submit" OnClick="btnLogin_Click" />

            <div class="footer-text">
                &copy; 2025 HV Admin Panel
            </div>
        </div>
    </form>
</body>
</html>

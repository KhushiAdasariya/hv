<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="hv.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Admin Dashboard
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <style>
        body {
            background: linear-gradient(135deg, #f7f9fc, #e8f0ff);
            font-family: 'Segoe UI', sans-serif;
        }
        .dashboard-container {
            max-width: 1100px;
            margin: 60px auto;
            padding: 30px 20px;
        }
        .dashboard-container h1 {
            color: #2c3e50;
            margin-bottom: 40px;
            font-size: 34px;
            text-align: center;
            font-weight: 600;
        }
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
        }
        .stat-card {
            background: #fff;
            padding: 35px 25px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
        }
        .stat-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 12px 25px rgba(0,0,0,0.15);
        }
        .stat-card i {
            font-size: 50px;
            margin-bottom: 15px;
            color: #007bff;
        }
        .stat-card h2 {
            font-size: 38px;
            margin: 10px 0;
            color: #2c3e50;
            font-weight: bold;
        }
        .stat-card p {
            font-size: 18px;
            margin: 0;
            color: #555;
            font-weight: 500;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashboard-container">
        <h1>Admin Dashboard</h1>

        <div class="stats-grid">
            <!-- Total Users -->
            <div class="stat-card">
                <i class="fa-solid fa-users"></i>
                <h2><asp:Label ID="lblTotalUsers" runat="server" Text="0"></asp:Label></h2>
                <p>Total Users</p>
            </div>

            <!-- Total Bookings -->
            <div class="stat-card">
                <i class="fa-solid fa-calendar-check"></i>
                <h2><asp:Label ID="lblTotalBookings" runat="server" Text="0"></asp:Label></h2>
                <p>Total Bookings</p>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="MyBookings.aspx.cs" Inherits="hv.User.MyBookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    My Event Bookings
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .bookings-container {
            width: 90%;
            margin: 40px auto;
            background: #fff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.15);
            font-family: 'Poppins', sans-serif;
        }

        .bookings-container h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 28px;
            color: #2c3e50;
            border-bottom: 2px solid #3498db;
            display: inline-block;
            padding-bottom: 5px;
        }

        .gridview-custom {
            width: 100%;
            border-collapse: collapse;
        }

        .gridview-custom th, .gridview-custom td {
            border: 1px solid #ddd;
            padding: 12px 15px;
            text-align: center;
            font-size: 14px;
        }

        .gridview-custom th {
            background: #2c3e50;
            color: #fff;
            text-transform: uppercase;
            font-size: 15px;
        }

        .gridview-custom tr:nth-child(even) {
            background: #f9f9f9;
        }

        .gridview-custom tr:hover {
            background: #f1f1f1;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bookings-container">
        <h2>📅 My Event Bookings</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" CssClass="gridview-custom" />
    </div>
</asp:Content>

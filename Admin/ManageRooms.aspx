<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageRooms.aspx.cs" Inherits="hv.Admin.ManageRooms" %>



<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Manage Rooms
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .btn-container {
            text-align: center;
            margin-top: 50px;
        }
        .btn {
            background-color: #007bff;
            color: white;
            font-size: 18px;
            padding: 12px 25px;
            margin: 15px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="btn-container">
        <asp:Button ID="btnAddRoomType" runat="server" Text="➕ Add Room Type" CssClass="btn" OnClick="btnAddRoomType_Click" />
        <asp:Button ID="btnAddRoom" runat="server" Text="🏨 Add Room" CssClass="btn" OnClick="btnAddRoom_Click" />
    </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="rooms.aspx.cs" Inherits="hv.User.rooms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Rooms
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        /* 🌿 General Layout */
        body {
            background: #f7f8fa;
            font-family: 'Segoe UI', sans-serif;
        }

        h2 {
            font-weight: 600;
            color: #333;
            margin-bottom: 25px;
        }

        /* 🏠 Room Card Styling */
        .room-box {
            border: none;
            border-radius: 15px;
            overflow: hidden;
            background: #fff;
            margin: 20px;
            width: 300px;
            display: inline-block;
            vertical-align: top;
            transition: all 0.3s ease;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        .room-box:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 18px rgba(0,0,0,0.15);
        }

        .room-box img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-bottom: 3px solid #007bff;
        }

        .room-name {
            font-size: 20px;
            font-weight: 700;
            color: #222;
            margin-top: 12px;
        }

        .room-desc {
            font-size: 15px;
            color: #555;
            margin: 10px 0;
            padding: 0 10px;
            min-height: 60px;
        }

        .room-buttons {
            padding-bottom: 15px;
        }

        /* 🎨 Buttons */
        .btn-custom {
            display: inline-block;
            background: #007bff;
            color: white !important;
            border: none;
            padding: 8px 18px;
            border-radius: 6px;
            text-decoration: none;
            margin: 5px;
            font-size: 14px;
            cursor: pointer;
            transition: 0.3s ease;
        }

        .btn-custom:hover {
            background: #0056b3;
            transform: scale(1.05);
        }

        .btn-outline {
            background: white;
            color: #007bff !important;
            border: 1px solid #007bff;
        }

        .btn-outline:hover {
            background: #007bff;
            color: white !important;
        }

        /* 🔢 Pagination */
        .pagination {
            text-align: center;
            margin-top: 30px;
        }

        .pagination a,
        .pagination asp\:LinkButton {
            display: inline-block;
            margin: 5px;
            background: #007bff;
            color: white !important;
            padding: 8px 15px;
            border-radius: 6px;
            font-size: 14px;
            transition: 0.3s;
            text-decoration: none;
        }

        .pagination a:hover,
        .pagination asp\:LinkButton:hover {
            background: #0056b3;
        }

        /* 📱 Responsive */
        @media (max-width: 768px) {
            .room-box {
                width: 90%;
                margin: 15px auto;
                display: block;
            }

            .room-box img {
                height: 180px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 style="text-align:center; margin-top:20px;">🏨 Available Rooms</h2>

    <div style="text-align:center;">
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <div class="room-box">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("RoomImage") %>' AlternateText="Room Image" />
                    <div class="room-name"><%# Eval("RoomName") %></div>
                    <div class="room-desc"><%# Eval("RoomDesc") %></div>
                    <div class="room-buttons">
                        <asp:LinkButton ID="LinkButton3" runat="server" Text="Book Now" CssClass="btn-custom"></asp:LinkButton>
                        <asp:LinkButton ID="LinkButton4" runat="server" Text="View Details" CssClass="btn-custom btn-outline"
                            CommandArgument='<%# Eval("RoomID") %>' CommandName="cmd_view"></asp:LinkButton>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>

        <div class="pagination">
            <asp:LinkButton ID="lnkprev" runat="server" OnClick="LinkButton1_Click">⬅ Previous</asp:LinkButton>
            <asp:LinkButton ID="lnknxt" runat="server" OnClick="LinkButton2_Click">Next ➡</asp:LinkButton>
        </div>
    </div>

</asp:Content>

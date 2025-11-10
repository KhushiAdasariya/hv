<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="rooms.aspx.cs" Inherits="hv.User.rooms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Rooms
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background: #eef1f5;
            font-family: 'Segoe UI', sans-serif;
        }
        h2 {
            font-weight: 600;
            color: #222;
            margin-bottom: 25px;
        }
        .room-box {
            border: none;
            border-radius: 18px;
            overflow: hidden;
            background: #fff;
            margin: 20px;
            width: 310px;
            display: inline-block;
            vertical-align: top;
            transition: 0.3s ease;
            box-shadow: 0 2px 10px rgba(0,0,0,0.12);
        }
        .room-box:hover {
            transform: translateY(-7px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.18);
        }
        .room-box img {
            width: 100%;
            height: 210px;
            object-fit: cover;
        }
        .room-name {
            font-size: 20px;
            font-weight: 700;
            color: #111;
            padding: 12px 10px 0;
        }
        .room-desc {
            font-size: 15px;
            color: #444;
            margin: 10px 0;
            padding: 0 12px;
            min-height: 65px;
        }

        .btn-custom {
            display: inline-block;
            background: #007bff;
            color: white !important;
            padding: 9px 20px;
            border-radius: 7px;
            text-decoration: none;
            font-size: 14px;
            cursor: pointer;
            margin: 4px;
            border: none;
            transition: 0.25s;
        }
        .btn-custom:hover {
            background: #0056b3;
        }
        .btn-outline {
            background: white !important;
            color: #007bff !important;
            border: 1px solid #007bff;
        }
        .btn-outline:hover {
            background: #007bff !important;
            color: white !important;
        }

        .pagination {
            text-align: center;
            margin: 25px 0;
        }
        .pagination a,
        .pagination asp\:LinkButton {
            display: inline-block;
            margin: 6px;
            padding: 8px 18px;
            font-size: 14px;
            background: #007bff;
            color: white !important;
            border-radius: 6px;
            transition: 0.3s ease;
            text-decoration: none;
        }
        .pagination a:hover,
        .pagination asp\:LinkButton:hover {
            background: #0056b3;
        }

        @media (max-width: 768px) {
            .room-box {
                width: 90%;
                display: block;
                margin: 20px auto;
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

                   <asp:Image ID="Image1" runat="server"
           ImageUrl='<%# ResolveUrl(Eval("Image").ToString()) %>'
           Width="100%" Height="200px" />



                    <!-- Room Name -->
                    <div class="room-name">
                        <%# Eval("RoomType") %> - Room No: <%# Eval("RoomNumber") %>
                    </div>

                    <!-- Description -->
                    <div class="room-desc">
                        <%# Eval("Description") %>
                        <br />
                        <b>Price:</b> ₹ <%# Eval("Price") %>
                    </div>

                    <!-- Buttons -->
                    <div class="room-buttons">

                        <asp:LinkButton ID="btnBook" runat="server" Text="Book Now"
                            CssClass="btn-custom"
                            CommandName="cmd_book"
                            CommandArgument='<%# Eval("Id") %>'>
                        </asp:LinkButton>

                        <asp:LinkButton ID="btnView" runat="server" Text="View Details"
                            CssClass="btn-custom btn-outline"
                            CommandName="cmd_view"
                            CommandArgument='<%# Eval("Id") %>'>
                        </asp:LinkButton>

                    </div>

                </div>

            </ItemTemplate>

        </asp:DataList>

        <!-- Pagination -->
        <div class="pagination">
            <asp:LinkButton ID="lnkprev" runat="server" OnClick="LinkButton1_Click">⬅ Previous</asp:LinkButton>
            <asp:LinkButton ID="lnknxt" runat="server" OnClick="LinkButton2_Click">Next ➡</asp:LinkButton>
        </div>

    </div>

</asp:Content>

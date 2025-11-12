<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageBooking.aspx.cs" Inherits="hv.Admin.ManageBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Manage Event Bookings
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .grid-container {
            width: 95%;
            margin: 40px auto;
            padding: 30px;
            background: #f7f7f7;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            font-family: 'Inter', sans-serif;
            border: 1px solid #e0e0e0;
        }

        .grid-container h2 {
            text-align: center;
            margin-bottom: 35px;
            color: #2c3e50;
            font-size: 32px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
            border-bottom: 3px solid #7c8b38;
            padding-bottom: 10px;
            display: inline-block;
        }

        .table-wrapper {
            overflow-x: auto;
            width: 100%;
        }

        .custom-grid {
            width: 100%;
            border-collapse: collapse;
            min-width: 1200px;
        }

        .custom-grid th, .custom-grid td {
            padding: 14px 10px;
            text-align: left;
            font-size: 14px;
        }

        .custom-grid th {
            background: #34495e;
            color: #fff;
            text-transform: uppercase;
            font-weight: 600;
            letter-spacing: 0.5px;
        }

        .custom-grid tr:nth-child(even) {
            background: #ecf0f1;
        }

        .custom-grid tr:nth-child(odd) {
            background: #ffffff;
        }

        .custom-grid tr:hover {
            background: #d9e6f3;
            transition: background 0.3s ease;
        }

        .custom-grid .delete-btn {
            background-color: #e74c3c;
            color: #fff;
            border-radius: 6px;
            border: none;
            padding: 6px 15px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s;
        }

        .custom-grid .delete-btn:hover {
            background-color: #c0392b;
        }

        @media (max-width: 768px) {
            .grid-container { margin: 20px auto; padding: 15px; }
            .grid-container h2 { font-size: 24px; margin-bottom: 20px; }
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="grid-container">
        <center>
            <h2>📑 Manage Event Bookings</h2>
        </center>
        <div class="table-wrapper">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="custom-grid"
                AllowPaging="true" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging"
                OnRowCommand="GridView1_RowCommand">

                <Columns>
                    <asp:BoundField DataField="BookingID" HeaderText="Booking ID" ItemStyle-Width="80px" />
                    <asp:BoundField DataField="FullName" HeaderText="Full Name" />
                    <asp:BoundField DataField="MobileNo" HeaderText="Mobile No" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="EventType" HeaderText="Event Type" />
                    <asp:BoundField DataField="EventDate" HeaderText="Event Date" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:BoundField DataField="VenueName" HeaderText="Venue" />
                    <asp:BoundField DataField="Guests" HeaderText="Guests" ItemStyle-Width="60px" />
                    <asp:BoundField DataField="City" HeaderText="City" />
                    <asp:BoundField DataField="State" HeaderText="State" />
                    <asp:BoundField DataField="Theme" HeaderText="Theme" />
                    <asp:BoundField DataField="Rooms" HeaderText="Rooms" ItemStyle-Width="50px" />

                    <asp:TemplateField HeaderText="Action" ItemStyle-Width="80px">
                        <ItemTemplate>
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="DeleteBooking"
                                CommandArgument='<%# Eval("BookingID") %>' CssClass="delete-btn" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

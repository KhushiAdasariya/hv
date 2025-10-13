<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageWedding.aspx.cs" Inherits="hv.Admin.ManageWedding" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Manage Event Bookings
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Global Container Enhancements */
        .grid-container {
            width: 95%;
            margin: 40px auto; /* Increased margin for better spacing */
            padding: 30px;
            background: #f7f7f7; /* Lighter background inside the container */
            border-radius: 15px; /* Softer corners */
            box-shadow: 0 10px 30px rgba(0,0,0,0.1); /* Deeper, softer shadow */
            font-family: 'Inter', sans-serif;
            border: 1px solid #e0e0e0;
        }

        .grid-container h2 {
            text-align: center;
            margin-bottom: 35px; /* More space below heading */
            color: #2c3e50; /* Dark, professional color */
            font-size: 32px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
            border-bottom: 3px solid #7c8b38; /* Hidden Valley Accent underline */
            padding-bottom: 10px;
            display: inline-block;
        }
        
        .grid-container center { /* To center the heading */
            display: block;
            text-align: center;
        }
        
        /* Responsive Table Wrapper */
        .table-wrapper {
            overflow-x: auto; /* Enables horizontal scroll on small screens */
            width: 100%;
        }

        /* GridView Styling */
        .custom-grid {
            width: 100%;
            border-collapse: collapse;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
            min-width: 1200px; /* Forces horizontal scroll if screen is smaller */
        }

        .custom-grid th, .custom-grid td {
            border: none; 
            padding: 14px 10px; /* Increased padding */
            text-align: left; /* Aligned text left for better readability */
            font-size: 14px;
        }
        
        .custom-grid td:last-child {
            text-align: center; /* Align the action button center */
        }

        .custom-grid th {
            background: #34495e; /* Deep blue-grey header */
            color: #fff;
            text-transform: uppercase;
            font-weight: 600;
            letter-spacing: 0.5px;
        }

        /* Alternating Row Colors (Zebra Striping) */
        .custom-grid tr:nth-child(even) {
            background: #ecf0f1; /* Light gray */
        }

        .custom-grid tr:nth-child(odd) {
            background: #ffffff; /* White */
        }
        
        /* Row Hover Effect */
        .custom-grid tr:hover {
            background: #d9e6f3; /* Soft blue on hover */
            transition: background 0.3s ease;
        }

        /* Pager Style (For pagination links) */
        /* Note: GridView renders the pager as a complex nested table */
        .custom-grid table > tbody > tr:last-child > td > table > tbody > tr > td {
            background: #eef2f6 !important; /* Pager background */
            font-weight: bold;
            text-align: center;
        }
        
        /* Pager links and span styling */
        .custom-grid table > tbody > tr:last-child > td > table > tbody > tr > td > a, 
        .custom-grid table > tbody > tr:last-child > td > table > tbody > tr > td > span {
            padding: 5px 10px;
            margin: 0 3px;
            border-radius: 5px;
            text-decoration: none;
            color: #2c3e50;
            transition: background 0.2s;
        }

        .custom-grid table > tbody > tr:last-child > td > table > tbody > tr > td > a:hover {
            background: #7c8b38;
            color: white;
        }
        
        .custom-grid table > tbody > tr:last-child > td > table > tbody > tr > td > span {
            background: #7c8b38; /* Active page */
            color: white;
            border: 1px solid #7c8b38;
        }

        /* Command Field (View Button) Styling */
        .custom-grid a[href*='__doPostBack'] {
            display: inline-block;
            padding: 6px 15px;
            background-color: #7c8b38; /* Hidden Valley Green Accent */
            color: white;
            border-radius: 6px;
            text-decoration: none;
            font-weight: 600;
            transition: background-color 0.3s, transform 0.2s;
            border: none;
            cursor: pointer;
            min-width: 60px;
            text-align: center;
            font-size: 13px;
        }
        
        .custom-grid a[href*='__doPostBack']:hover {
            background-color: #6f8f2a;
            transform: translateY(-1px);
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        
        /* Small screen adjustment */
        @media (max-width: 768px) {
            .grid-container {
                margin: 20px auto;
                padding: 15px;
            }
            .grid-container h2 {
                font-size: 24px;
                margin-bottom: 20px;
            }
        }

        /* ------------------------------------------------ */
        /* --- FIXED HEADER/FOOTER CSS (Master Page Fix) --- */
        /* ------------------------------------------------ */

        /* NOTE: Yeh styles aapke Master Page ke elements ko target karte hain. */
        /* Master Page ke Header aur Footer elements ki ID/Class yahaan use karein. */
        
        /* Pura page content area fix karne ke liye body tag par padding lagana zaroori hai. */
        /*
        body {
            padding-top: 70px;  // Header ki height jitni padding
            padding-bottom: 50px; // Footer ki height jitni padding
        }
        */

        /* Header ko fixed karne ke liye (Agar aapke Master Page mein Header ki ID 'MasterHeader' hai) */
        /*
        #MasterHeader { 
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000; // Baaki sab elements se upar rakhega
            background-color: #34495e; // Header ka background color
            height: 60px; // Header ki height
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
        }
        */

        /* Footer ko fixed karne ke liye (Agar aapke Master Page mein Footer ki ID 'MasterFooter' hai) */
        /*
        #MasterFooter {
            position: fixed;
            bottom: 0;
            left: 0;
            right: 0;
            z-index: 1000;
            background-color: #2c3e50; // Footer ka background color
            color: #fff;
            height: 40px; // Footer ki height
        }
        */

        /* Agar aapki Master Page mein Side Menu hai, toh use bhi fixed karna padega */
        /*
        #SideMenu {
            position: fixed;
            top: 60px; // Header ke niche se shuru karein
            bottom: 0;
            left: 0;
            width: 250px;
            overflow-y: auto;
            z-index: 999;
        }
        */
        
        /* Main Content area ko side menu ke saath adjust karein */
        /*
        #MainContentPlaceholder {
            margin-left: 250px; // Side menu ki width jitna margin
        }
        */

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
                OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

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
                    <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" DataFormatString="{0:dd/MM/yyyy}" />

                    <asp:CommandField ShowSelectButton="true" SelectText="View" ItemStyle-Width="80px" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

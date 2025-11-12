<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="eventbook.aspx.cs" Inherits="hv.User.eventbook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Hidden Valley - Wedding & Event Book
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background: url('../img/wedding-bg.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
        }

        .form-container {
            width: 75%;
            max-width: 950px;
            margin: 60px auto;
            padding: 40px 50px;
            background: rgba(255, 255, 255, 0.90);
            border-radius: 20px;
            backdrop-filter: blur(10px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.25);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .form-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 18px 45px rgba(0, 0, 0, 0.35);
        }

        .form-container h2 {
            text-align: center;
            color: #2c3e50;
            font-size: 30px;
            font-weight: 700;
            letter-spacing: 1px;
            margin-bottom: 30px;
            position: relative;
        }

        .form-container h2::after {
            content: "";
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 3px;
            background: linear-gradient(90deg, #b993d6, #8ca6db);
            border-radius: 2px;
        }

        .form-table {
            width: 100%;
            border-spacing: 18px;
        }

        .form-table td {
            padding: 6px;
            color: #2c3e50;
            font-weight: 600;
            font-size: 15px;
            vertical-align: top;
        }

        .form-input,
        .form-table select,
        .form-table input[type="date"],
        .form-table input[type="time"] {
            width: 100%;
            padding: 12px 14px;
            border-radius: 10px;
            border: 1px solid #dcdcdc;
            transition: all 0.3s ease;
            font-size: 14px;
            background: #fff;
            box-shadow: inset 0 2px 6px rgba(0, 0, 0, 0.05);
        }

        .form-input:focus,
        .form-table select:focus,
        .form-table input[type="date"]:focus,
        .form-table input[type="time"]:focus {
            border-color: #a77cf3;
            box-shadow: 0 0 10px rgba(167, 124, 243, 0.4);
            outline: none;
        }

        .btn-submit {
            background: linear-gradient(135deg, #a77cf3, #6f8f2a);
            color: white;
            font-weight: 600;
            padding: 14px 40px;
            border: none;
            border-radius: 12px;
            cursor: pointer;
            font-size: 17px;
            letter-spacing: 0.6px;
            transition: all 0.3s ease;
            box-shadow: 0 8px 20px rgba(111, 143, 42, 0.4);
        }

        .btn-submit:hover {
            background: linear-gradient(135deg, #6f8f2a, #a77cf3);
            transform: translateY(-3px);
            box-shadow: 0 10px 25px rgba(111, 143, 42, 0.6);
        }

        .error {
            color: #e74c3c;
            font-size: 13px;
            display: block;
            margin-top: 5px;
            animation: fadeIn 0.3s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-5px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .form-container {
                width: 90%;
                padding: 25px 20px;
            }

            .form-table td {
                display: block;
                width: 100%;
            }

            .form-table tr td:first-child {
                margin-top: 10px;
                font-weight: 700;
            }

            .btn-submit {
                width: 100%;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <h2>Wedding & Event Booking</h2>
        <table class="form-table">
            <tr>
                <td>Full Name</td>
                <td>
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName"
                        ErrorMessage="Full name is required" CssClass="error" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>Mobile No</td>
                <td>
                    <asp:TextBox ID="txtMobileNo" runat="server" CssClass="form-input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtMobileNo"
                        ErrorMessage="Mobile number is required" CssClass="error" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="txtMobileNo"
                        ValidationExpression="^[0-9]{10}$" ErrorMessage="Enter valid 10-digit mobile"
                        CssClass="error" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="Email is required" CssClass="error" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                        ErrorMessage="Enter valid email" CssClass="error" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>City</td>
                <td><asp:TextBox ID="txtCity" runat="server" CssClass="form-input"></asp:TextBox></td>
            </tr>
            <tr>
                <td>State</td>
                <td>
                    <asp:DropDownList ID="ddlState" runat="server" CssClass="form-input">
                        <asp:ListItem Value="">-- Select State / UT --</asp:ListItem>
                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                        <asp:ListItem>Assam</asp:ListItem>
                        <asp:ListItem>Bihar</asp:ListItem>
                        <asp:ListItem>Chhattisgarh</asp:ListItem>
                        <asp:ListItem>Goa</asp:ListItem>
                        <asp:ListItem>Gujarat</asp:ListItem>
                        <asp:ListItem>Haryana</asp:ListItem>
                        <asp:ListItem>Himachal Pradesh</asp:ListItem>
                        <asp:ListItem>Jharkhand</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                        <asp:ListItem>Maharashtra</asp:ListItem>
                        <asp:ListItem>Punjab</asp:ListItem>
                        <asp:ListItem>Rajasthan</asp:ListItem>
                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                        <asp:ListItem>Telangana</asp:ListItem>
                        <asp:ListItem>Uttar Pradesh</asp:ListItem>
                        <asp:ListItem>Uttarakhand</asp:ListItem>
                        <asp:ListItem>West Bengal</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                        <asp:ListItem>Ladakh</asp:ListItem>
                        <asp:ListItem>Chandigarh</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Event Type</td>
                <td><asp:TextBox ID="txtEventType" runat="server" CssClass="form-input"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Event Date</td>
                <td><asp:TextBox ID="txtEventDate" runat="server" TextMode="Date" CssClass="form-input"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Event Time</td>
                <td><asp:TextBox ID="txtEventTime" runat="server" TextMode="Time" CssClass="form-input"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Venue Name</td>
                <td>
                    <asp:DropDownList ID="ddlVenueName" runat="server" CssClass="form-input">
                        <asp:ListItem Value="">-- Select Venue --</asp:ListItem>
                        <asp:ListItem>Hidden Valley Banquet</asp:ListItem>
                        <asp:ListItem>Vraj Village Lawn</asp:ListItem>
                        <asp:ListItem>Royal Crystal Hall</asp:ListItem>
                        <asp:ListItem>Emerald Celebration Hall</asp:ListItem>
                        <asp:ListItem>Sapphire Conference Hall</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Guests</td>
                <td><asp:TextBox ID="txtGuests" runat="server" CssClass="form-input"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Theme</td>
                <td>
                    <asp:DropDownList ID="ddlTheme" runat="server" CssClass="form-input">
                        <asp:ListItem Value="">-- Select Theme --</asp:ListItem>
                        <asp:ListItem>Traditional</asp:ListItem>
                        <asp:ListItem>Modern</asp:ListItem>
                        <asp:ListItem>Royal</asp:ListItem>
                        <asp:ListItem>Fairy Tale</asp:ListItem>
                        <asp:ListItem>Simple & Elegant</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Rooms Required</td>
                <td>
                    <asp:RadioButtonList ID="rblRoomsRequired" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                        <asp:ListItem Text="No" Value="No"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>Rooms</td>
                <td><asp:TextBox ID="txtRooms" runat="server" CssClass="form-input"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Check-In Date</td>
                <td><asp:TextBox ID="txtCheckIn" runat="server" TextMode="Date" CssClass="form-input"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Check-Out Date</td>
                <td><asp:TextBox ID="txtCheckOut" runat="server" TextMode="Date" CssClass="form-input"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center">
                    <asp:Button ID="btnSubmit" runat="server" Text="Book Event" CssClass="btn-submit" OnClick="btnSubmit_Click" />
                    <asp:Button ID="Button1" runat="server" Text="Report" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

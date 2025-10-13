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
        }

        .form-container {
            width: 70%;
            margin: 40px auto;
            padding: 35px;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(8px);
            border-radius: 18px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.25);
            transition: all 0.3s ease-in-out;
        }

        .form-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 30px rgba(0,0,0,0.3);
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #2c3e50;
            font-size: 28px;
            font-weight: 700;
            letter-spacing: 1px;
            border-bottom: 2px solid #3498db;
            display: inline-block;
            padding-bottom: 5px;
        }

        .form-table {
            width: 100%;
            border-spacing: 18px;
        }

        .form-table td {
            padding: 6px;
            font-weight: 600;
            color: #2c3e50;
            vertical-align: top;
            font-size: 15px;
        }

        .form-input,
        .form-table select,
        .form-table input[type="date"],
        .form-table input[type="time"] {
            width: 100%;
            padding: 12px 14px;
            border-radius: 10px;
            border: 1px solid #ddd;
            transition: all 0.3s ease;
            font-size: 14px;
            background: #fff;
            box-shadow: inset 0 2px 5px rgba(0,0,0,0.05);
        }

        .form-input:focus,
        .form-table select:focus,
        .form-table input[type="date"]:focus,
        .form-table input[type="time"]:focus {
            border-color: #3498db;
            outline: none;
            box-shadow: 0 0 10px rgba(52, 152, 219, 0.4);
        }

        .btn-submit {
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: white;
            font-weight: bold;
            padding: 14px 35px;
            border: none;
            border-radius: 12px;
            cursor: pointer;
            font-size: 16px;
            letter-spacing: 0.5px;
            transition: all 0.3s ease;
        }

        .btn-submit:hover {
            background: linear-gradient(135deg, #2575fc, #6a11cb);
            transform: translateY(-2px) scale(1.03);
            box-shadow: 0 8px 18px rgba(0,0,0,0.25);
        }

        .error {
            color: #e74c3c;
            font-size: 13px;
            display: block;
            margin-top: 4px;
            animation: fadeIn 0.3s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-5px); }
            to { opacity: 1; transform: translateY(0); }
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
                    <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="rblGender"
                        InitialValue="" ErrorMessage="Select gender" CssClass="error" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>City</td>
                <td>
                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity"
                        ErrorMessage="City is required" CssClass="error" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>State</td>
                <td>
                    <asp:DropDownList ID="ddlState" runat="server" CssClass="form-input">
                        <asp:ListItem Text="-- Select State --" Value=""></asp:ListItem>
                        <asp:ListItem>Gujarat</asp:ListItem>
                        <asp:ListItem>Maharashtra</asp:ListItem>
                        <asp:ListItem>Rajasthan</asp:ListItem>
                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="ddlState"
                        InitialValue="" ErrorMessage="Select state" CssClass="error" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>Event Type</td>
                <td>
                    <asp:TextBox ID="txtEventType" runat="server" CssClass="form-input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEventType" runat="server" ControlToValidate="txtEventType"
                        ErrorMessage="Event type is required" CssClass="error" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>Event Date</td>
                <td>
                    <asp:TextBox ID="txtEventDate" runat="server" TextMode="Date" CssClass="form-input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEventDate" runat="server" ControlToValidate="txtEventDate"
                        ErrorMessage="Event date is required" CssClass="error" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>Event Time</td>
                <td>
                    <asp:TextBox ID="txtEventTime" runat="server" TextMode="Time" CssClass="form-input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEventTime" runat="server" ControlToValidate="txtEventTime"
                        ErrorMessage="Event time is required" CssClass="error" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>Venue Name</td>
                <td>
                    <asp:DropDownList ID="ddlVenueName" runat="server" CssClass="form-input">
                        <asp:ListItem Text="-- Select Venue --" Value=""></asp:ListItem>
                        <asp:ListItem>Hidden Valley Banquet</asp:ListItem>
                        <asp:ListItem>Royal Garden</asp:ListItem>
                        <asp:ListItem>Sunrise Lawn</asp:ListItem>
                        <asp:ListItem>Grand Palace</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvVenue" runat="server" ControlToValidate="ddlVenueName"
                        InitialValue="" ErrorMessage="Select venue" CssClass="error" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>Guests</td>
                <td>
                    <asp:TextBox ID="txtGuests" runat="server" CssClass="form-input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvGuests" runat="server" ControlToValidate="txtGuests"
                        ErrorMessage="Guests required" CssClass="error" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="revGuests" runat="server" ControlToValidate="txtGuests"
                        ValidationExpression="^[0-9]+$" ErrorMessage="Enter valid number"
                        CssClass="error" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>Theme</td>
                <td>
                    <asp:DropDownList ID="ddlTheme" runat="server" CssClass="form-input">
                        <asp:ListItem Text="-- Select Theme --" Value=""></asp:ListItem>
                        <asp:ListItem>Traditional</asp:ListItem>
                        <asp:ListItem>Modern</asp:ListItem>
                        <asp:ListItem>Royal</asp:ListItem>
                        <asp:ListItem>Fairy Tale</asp:ListItem>
                        <asp:ListItem>Simple & Elegant</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvTheme" runat="server" ControlToValidate="ddlTheme"
                        InitialValue="" ErrorMessage="Select theme" CssClass="error" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>Rooms Required</td>
                <td>
                    <asp:RadioButtonList ID="rblRoomsRequired" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                        <asp:ListItem Text="No" Value="No"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="rfvRoomsReq" runat="server" ControlToValidate="rblRoomsRequired"
                        InitialValue="" ErrorMessage="Select option" CssClass="error" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>Rooms</td>
                <td>
                    <asp:TextBox ID="txtRooms" runat="server" CssClass="form-input"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revRooms" runat="server" ControlToValidate="txtRooms"
                        ValidationExpression="^[0-9]*$" ErrorMessage="Enter valid number"
                        CssClass="error" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>Check-In Date</td>
                <td>
                    <asp:TextBox ID="txtCheckIn" runat="server" TextMode="Date" CssClass="form-input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCheckIn" runat="server" ControlToValidate="txtCheckIn"
                        ErrorMessage="Check-in required" CssClass="error" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>Check-Out Date</td>
                <td>
                    <asp:TextBox ID="txtCheckOut" runat="server" TextMode="Date" CssClass="form-input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCheckOut" runat="server" ControlToValidate="txtCheckOut"
                        ErrorMessage="Check-out required" CssClass="error" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center">
                    <asp:Button ID="btnSubmit" runat="server" Text="Book Event" CssClass="btn-submit" OnClick="btnSubmit_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

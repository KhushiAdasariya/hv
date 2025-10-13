<%@ Page Title="Complete Your Reservation - Hidden Valley" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="hv.User.booking" %>

<asp:Content ID="HeadTitle" ContentPlaceHolderID="PageTitle" runat="server">
    Complete Reservation
</asp:Content>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <style>
        /* MAIN CONTAINER & TYPOGRAPHY - (Styles from previous answer are reused) */
        .booking-page-container {
            max-width: 1000px;
            margin: 50px auto;
            padding: 40px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }

        .booking-page-container h1 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 5px;
            font-size: 36px;
        }

        .booking-page-container p.subtitle {
            text-align: center;
            color: #666;
            margin-bottom: 30px;
            font-size: 18px;
        }

        /* SECTION HEADINGS */
        h3.section-header {
            color: #7c8b38;
            border-bottom: 2px solid #eee;
            padding-bottom: 8px;
            margin: 35px 0 25px 0;
            font-size: 24px;
        }

        /* FORM LAYOUT */
        .booking-form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 25px;
        }

        /* FORM FIELDS */
        .form-group {
            display: flex;
            flex-direction: column;
        }

        .form-group label {
            font-weight: bold;
            color: #2c3e50;
            margin-bottom: 8px;
        }

        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group input[type="date"],
        .form-group input[type="number"],
        .form-group select,
        .form-group textarea {
            padding: 12px 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            width: 100%;
            box-sizing: border-box;
        }
        
        .form-group textarea {
            resize: vertical;
            min-height: 100px;
        }

        /* FULL WIDTH ELEMENTS */
        .full-width {
            grid-column: 1 / -1;
        }

        /* SUBMIT BUTTON */
        .submit-button-container {
            grid-column: 1 / -1;
            text-align: center;
            margin-top: 35px;
        }
        
        .booking-submit-btn {
            text-decoration: none;
            padding: 15px 50px;
            background: #7c8b38;
            color: #fff;
            border-radius: 6px;
            transition: 0.3s;
            font-size: 20px;
            font-weight: bold;
            border: none;
            cursor: pointer;
        }

        .booking-submit-btn:hover {
            background: #5f6e2b;
        }

        /* RESPONSIVENESS */
        @media (max-width: 768px) {
            .booking-form-grid {
                grid-template-columns: 1fr;
            }
            .booking-page-container {
                margin: 20px;
                padding: 20px;
            }
        }
        /* Confirmation message button style */
        .confirmation-btn {
            display: inline-block;
            text-decoration: none;
            padding: 10px 20px;
            background: #2c3e50; /* Darker color for contrast */
            color: #fff;
            border-radius: 4px;
            transition: 0.3s;
            font-weight: bold;
            margin-top: 20px;
        }
        .confirmation-btn:hover {
            background: #7c8b38;
        }
    </style>
</asp:Content>

<%-- ContentPlaceHolder1 is used for the main page content --%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="booking-page-container">
        <h1>Complete Your Reservation</h1>
        <p class="subtitle">Please provide all necessary details to secure your booking at Hidden Valley Resort.</p>

        <asp:Panel ID="pnlBookingForm" runat="server">
            
            <%-- SECTION 1: ROOM & DATES DETAILS --%>
            <h3 class="section-header">1. Room & Stay Details</h3>
            <div class="booking-form-grid">
                
                <div class="form-group">
                    <label for="ddlRoomType">Select Room Type <span style="color:red">*</span></label>
                    <asp:DropDownList ID="ddlRoomType" runat="server" required="true">
                        <asp:ListItem Text="-- Choose Room Type --" Value="" Disabled="true" Selected="true"></asp:ListItem>
                        <asp:ListItem Text="Deluxe Room (Garden View)" Value="Deluxe"></asp:ListItem>
                        <asp:ListItem Text="Premium Suite (Pool View)" Value="Premium"></asp:ListItem>
                        <asp:ListItem Text="Family Cottage (2 Bedrooms)" Value="Cottage"></asp:ListItem>
                        <asp:ListItem Text="Presidential Villa" Value="Villa"></asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="form-group">
                    <label for="ddlGuests">Number of Adults <span style="color:red">*</span></label>
                    <asp:DropDownList ID="ddlGuests" runat="server" required="true">
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2" Selected="true"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5+" Value="5"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                
                <div class="form-group">
                    <label for="txtCheckIn">Check-in Date <span style="color:red">*</span></label>
                    <asp:TextBox ID="txtCheckIn" runat="server" TextMode="Date" required="true" />
                </div>

                <div class="form-group">
                    <label for="txtCheckOut">Check-out Date <span style="color:red">*</span></label>
                    <asp:TextBox ID="txtCheckOut" runat="server" TextMode="Date" required="true" />
                </div>

                <div class="form-group">
                    <label for="txtChildren">Number of Children (Ages 0-12)</label>
                    <asp:TextBox ID="txtChildren" runat="server" TextMode="Number" Text="0" min="0" Max="5" />
                </div>

                <div class="form-group">
                    <label for="ddlMealPlan">Meal Plan</label>
                    <asp:DropDownList ID="ddlMealPlan" runat="server">
                        <asp:ListItem Text="Room Only" Value="RO"></asp:ListItem>
                        <asp:ListItem Text="Breakfast Included (BB)" Value="BB" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Half Board (Breakfast & Dinner)" Value="HB"></asp:ListItem>
                        <asp:ListItem Text="Full Board (All Meals)" Value="FB"></asp:ListItem>
                    </asp:DropDownList>
                </div>

            </div>
            
            <%-- SECTION 2: PERSONAL & CONTACT DETAILS --%>
            <h3 class="section-header">2. Primary Guest Information</h3>
            <div class="booking-form-grid">
                
                <div class="form-group">
                    <label for="txtName">Full Name (As per ID) <span style="color:red">*</span></label>
                    <asp:TextBox ID="txtName" runat="server" type="text" placeholder="Mr./Ms. First Last Name" required="true" />
                </div>

                <div class="form-group">
                    <label for="txtEmail">Email Address <span style="color:red">*</span></label>
                    <asp:TextBox ID="txtEmail" runat="server" type="email" placeholder="name@example.com" required="true" />
                </div>

                <div class="form-group">
                    <label for="txtPhone">Mobile Number <span style="color:red">*</span></label>
                    <asp:TextBox ID="txtPhone" runat="server" type="text" placeholder="+91 98765 43210" required="true" MaxLength="15" />
                </div>

                <div class="form-group">
                    <label for="txtCity">City / Town</label>
                    <asp:TextBox ID="txtCity" runat="server" type="text" placeholder="Ahmedabad" />
                </div>
                
                <div class="form-group full-width">
                    <label for="txtAddress">Billing Address</label>
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="2" placeholder="Street Address, Area, Pin Code" />
                </div>
            </div>

            <%-- SECTION 3: ADDITIONAL DETAILS & PAYMENT --%>
            <h3 class="section-header">3. Finalize Booking</h3>
            <div class="booking-form-grid">

                <div class="form-group full-width">
                    <label for="txtRequests">Special Requests (e.g., Anniversary, Wheelchair Access, High Floor)</label>
                    <asp:TextBox ID="txtRequests" runat="server" TextMode="MultiLine" Rows="3" placeholder="I would like a quiet room..." />
                </div>

                <div class="form-group">
                    <label for="ddlPayment">Preferred Payment Method</label>
                    <asp:DropDownList ID="ddlPayment" runat="server">
                        <asp:ListItem Text="Pay Online (Full Payment)" Value="Online" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Pay at Property (Deposit Required)" Value="Property"></asp:ListItem>
                        <asp:ListItem Text="Corporate Billing" Value="Corporate"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                
                <div class="form-group">
                    <label for="txtCoupon">Coupon Code (Optional)</label>
                    <asp:TextBox ID="txtCoupon" runat="server" placeholder="Enter coupon code here" />
                </div>

                <div class="submit-button-container full-width">
                    <p style="color:#2c3e50; font-size:15px; margin-bottom:15px;">By clicking 'Confirm & Pay', you agree to our <a href="#" style="color:#7c8b38; text-decoration:none;">Terms & Conditions</a>.</p>
                    <asp:Button ID="btnSubmitBooking" runat="server" Text="Confirm & Reserve Your Stay" CssClass="booking-submit-btn" OnClick="btnSubmitBooking_Click" />
                </div>
            </div>
        </asp:Panel>
        
        <asp:Literal ID="litConfirmation" runat="server" Visible="false"></asp:Literal>

    </div>
</asp:Content>

<asp:Content ID="BookNowContent" ContentPlaceHolderID="BookNowSection" runat="server">
</asp:Content>
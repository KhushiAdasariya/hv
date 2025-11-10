<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="rooms.aspx.cs" Inherits="hv.User.rooms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Rooms
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />

    <style>
        /* ======= HERO SECTION (ROOM PAGE) ======= */
        .hero-banner {
            position: relative;
            min-height: 65vh; /* same as about page */
            background: url('../img/room1.jpg') no-repeat center/cover;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
            margin: 40px;
            border-radius: 15px;
            overflow: hidden;
        }

        .hero-banner .overlay {
            background: rgba(0, 0, 0, 0.55);
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .hero-content {
            max-width: 850px;
            z-index: 10;
            padding: 40px;
            animation: fadeInScale 1.2s ease-out forwards;
        }

        @keyframes fadeInScale {
            from {
                opacity: 0;
                transform: scale(0.95);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        .hero-banner h1 {
            font-size: 50px;
            font-weight: 700;
            letter-spacing: 2px;
            margin-bottom: 15px;
            color: #fff;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.6);
        }

        .hero-banner p {
            font-size: 18px;
            line-height: 1.6;
            max-width: 700px;
            margin: 0 auto;
            color: #f2f2f2;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.4);
        }

        .hero-btn {
            display: inline-block;
            margin-top: 30px;
            padding: 13px 30px;
            background: #7c8b38;
            color: white;
            border-radius: 8px;
            font-weight: 600;
            text-decoration: none;
            transition: 0.3s;
        }

        .hero-btn:hover {
            background: #6f8f2a;
            transform: translateY(-3px);
        }

        @media (max-width: 768px) {
            .hero-banner {
                margin: 20px;
                min-height: 55vh;
            }
            .hero-banner h1 {
                font-size: 36px;
            }
            .hero-banner p {
                font-size: 16px;
                padding: 0 15px;
            }
        }

        /* ======= ROOM CARD SECTION ======= */
        body {
            background: #f4f6f9;
            font-family: 'Segoe UI', sans-serif;
        }

        .room-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 50px auto;
        }

        .room-card {
            display: flex;
            flex-direction: row;
            align-items: stretch;
            background: #fff;
            width: 85%;
            max-width: 1000px;
            border-radius: 15px;
            box-shadow: 0 6px 25px rgba(0, 0, 0, 0.18);
            overflow: hidden;
            transition: all 0.3s ease;
        }

        .room-card:hover {
            transform: scale(1.01);
            box-shadow: 0 10px 35px rgba(0, 0, 0, 0.25);
        }

        .room-img {
            flex: 1.7;
            overflow: hidden;
        }

        .room-img img {
            width: 100%;
            height: 450px;
            object-fit: cover;
        }

        .room-details {
            flex: 1.3;
            padding: 30px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .room-title {
            font-size: 26px;
            font-weight: 700;
            color: #111;
            margin-bottom: 12px;
        }

        .room-desc {
            font-size: 15.5px;
            color: #333;
            line-height: 1.7;
            margin-bottom: 20px;
        }

        .room-desc ul {
            list-style: none;
            padding-left: 0;
            margin: 0;
        }

        .room-desc li {
            position: relative;
            padding-left: 28px;
            margin-bottom: 10px;
        }

        .room-desc li::before {
            content: "•";
            color: #007bff;
            font-weight: bold;
            position: absolute;
            left: 0;
            top: 0;
            font-size: 18px;
        }

        .room-price {
            font-size: 18px;
            font-weight: 600;
            color: #007bff;
            margin-bottom: 18px;
        }

        .btn-custom {
            display: inline-block;
            padding: 10px 24px;
            font-size: 15px;
            border-radius: 6px;
            text-decoration: none;
            margin-right: 10px;
            border: none;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-book {
            background: #007bff;
            color: #fff !important;
        }

        .btn-book:hover {
            background: #0056b3;
        }

        .btn-view {
            background: #fff;
            color: #007bff !important;
            border: 1px solid #007bff;
        }

        .btn-view:hover {
            background: #007bff;
            color: #fff !important;
        }

        /* ======= PAGINATION STYLE ======= */
        /* ======= PAGINATION STYLE (MATCH HERO BUTTON) ======= */
.pagination {
    text-align: center;
    margin: 60px 0 20px 0;
}

.page-btn {
    display: inline-block;
    margin: 8px;
    padding: 14px 35px;
    background: #7c8b38; /* same as hero button */
    color: white !important;
    border-radius: 8px;
    font-size: 16px;
    font-weight: 600;
    text-decoration: none;
    border: none;
    cursor: pointer;
    box-shadow: 0 4px 10px rgba(124, 139, 56, 0.4);
    transition: all 0.3s ease;
}

.page-btn:hover {
    background: #6f8f2a; /* hover color same as hero-btn hover */
    transform: translateY(-3px);
    box-shadow: 0 6px 15px rgba(111, 143, 42, 0.5);
}

.page-btn i {
    margin: 0 6px;
}


        /* ======= WHY CHOOSE SECTION ======= */
        .why-choose {
            margin: 60px auto;
            text-align: center;
            background: linear-gradient(135deg, #ffffff, #f1f7ff);
            border-radius: 20px;
            padding: 60px 40px;
            width: 85%;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        }

        .why-choose h2 {
            font-size: 36px;
            color: #222;
            margin-bottom: 10px;
        }

        .why-choose .subtitle {
            color: #555;
            font-size: 18px;
            margin-bottom: 40px;
        }

        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 30px;
            margin-top: 20px;
        }

        .feature-box {
            background: #f9fafc;
            border-radius: 15px;
            padding: 25px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.08);
            transition: all 0.3s ease;
        }

        .feature-box:hover {
            background: #ffffff;
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }

        .feature-box i {
            font-size: 38px;
            color: #007bff;
            margin-bottom: 15px;
        }

        .feature-box h4 {
            font-size: 20px;
            color: #111;
            margin-bottom: 10px;
        }

        .feature-box p {
            font-size: 15px;
            color: #555;
            line-height: 1.6;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ======= HERO SECTION ======= -->
    <section class="hero-banner">
        <div class="overlay">
            <div class="hero-content">
                <h1>Our Luxury Rooms</h1>
                <p>Stay in style and comfort — experience our premium rooms designed for pure relaxation and peaceful escape.</p>
                <a href="booking.aspx" class="hero-btn">Book Your Stay</a>
            </div>
        </div>
    </section>

    <!-- ======= ROOM LIST ======= -->
    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Vertical" RepeatColumns="1" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <div class="room-container">
                <div class="room-card">
                    <div class="room-img">
                        <asp:Image ID="Image1" runat="server"
                            ImageUrl='<%# ResolveUrl("~/" + Eval("Image").ToString()) %>' />
                    </div>

                    <div class="room-details">
                        <div class="room-title">
                            <%# Eval("RoomType") %> - Room No: <%# Eval("RoomNumber") %>
                        </div>

                        <div class="room-desc">
                            <ul>
                                <%# string.Join("", Eval("Description").ToString().Split(new[] { '\n', ',' }, StringSplitOptions.RemoveEmptyEntries)
                                    .Select(point => "<li>" + point.Trim() + "</li>")) %>
                            </ul>
                        </div>

                        <div class="room-price">
                            💰 Price: ₹ <%# Eval("Price") %>
                        </div>

                        <div>
                            <asp:LinkButton ID="btnBook" runat="server" Text="Book Now"
                                CssClass="btn-custom btn-book"
                                CommandName="cmd_book"
                                CommandArgument='<%# Eval("Id") %>'>
                            </asp:LinkButton>

                            <asp:LinkButton ID="btnView" runat="server" Text="View Details"
                                CssClass="btn-custom btn-view"
                                CommandName="cmd_view"
                                CommandArgument='<%# Eval("Id") %>'>
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>

    <!-- ======= PAGINATION ======= -->
    <div class="pagination">
        <asp:LinkButton ID="lnkprev" runat="server" OnClick="LinkButton1_Click" CssClass="page-btn prev">
            <i class="fa fa-arrow-left"></i> Previous
        </asp:LinkButton>
        <asp:LinkButton ID="lnknxt" runat="server" OnClick="LinkButton2_Click" CssClass="page-btn next">
            Next <i class="fa fa-arrow-right"></i>
        </asp:LinkButton>
    </div>

    <!-- ======= WHY CHOOSE OUR ROOMS ======= -->
    <section class="why-choose">
        <h2>Why Choose Our Rooms?</h2>
        <p class="subtitle">Luxury, comfort, and thoughtful design for a perfect getaway.</p>
        <div class="features">
            <div class="feature-box">
                <i class="fa fa-bed"></i>
                <h4>Elegant Interiors</h4>
                <p>Beautifully designed rooms with modern amenities and cozy ambiance.</p>
            </div>
            <div class="feature-box">
                <i class="fa fa-bath"></i>
                <h4>Modern Bathrooms</h4>
                <p>Relax and refresh in our stylish bathrooms equipped with premium fittings.</p>
            </div>
            <div class="feature-box">
                <i class="fa fa-wifi"></i>
                <h4>High-Speed WiFi</h4>
                <p>Seamless internet connectivity to keep you connected during your stay.</p>
            </div>
            <div class="feature-box">
                <i class="fa fa-concierge-bell"></i>
                <h4>24/7 Service</h4>
                <p>Our staff is always ready to make your experience comfortable and memorable.</p>
            </div>
        </div>
    </section>

    <div style="height: 60px;"></div>

</asp:Content>

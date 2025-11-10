<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="amenities.aspx.cs" Inherits="hv.User.amenities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Hidden Valley - Amenities
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />

    <style>
        /* ======= HERO SECTION (SAME AS ROOM PAGE) ======= */
        .hero-banner {
            position: relative;
            min-height: 65vh;
            background: url('../img/garden.jpg') no-repeat center/cover;
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

        /* ======= AMENITIES SECTION ======= */
        .amenities-section {
            padding: 90px 60px;
            margin: 50px 40px;
            background: linear-gradient(180deg, #ffffff, #f5f7f3);
            text-align: center;
            border-radius: 20px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.08);
            font-family: 'Poppins', sans-serif;
        }

        .amenities-section h2 {
            font-size: 46px;
            font-weight: 700;
            color: #2c3e50;
            margin-bottom: 12px;
        }

        .amenities-section .sub-text {
            font-size: 18px;
            color: #555;
            margin-bottom: 60px;
            max-width: 700px;
            margin-left: auto;
            margin-right: auto;
            line-height: 1.7;
        }

        .amenities-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 35px;
        }

        .amenity {
            background: #fff;
            padding: 35px 25px;
            border-radius: 16px;
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.08);
            transition: all 0.3s ease;
            cursor: pointer;
            border-top: 5px solid #7c8b38;
        }

        .amenity:hover {
            transform: translateY(-8px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
        }

        .amenity i {
            font-size: 42px;
            color: #7c8b38;
            margin-bottom: 20px;
            transition: transform 0.3s ease, color 0.3s ease;
        }

        .amenity:hover i {
            transform: scale(1.2);
            color: #6f8f2a;
        }

        .amenity h4 {
            font-size: 20px;
            color: #1f3b5c;
            font-weight: 600;
            margin-bottom: 12px;
        }

        .amenity p {
            font-size: 15px;
            color: #666;
            line-height: 1.6;
        }

        @media (max-width: 768px) {
            .amenities-section {
                padding: 60px 20px;
                margin: 20px;
            }

            .amenities-section h2 {
                font-size: 34px;
            }

            .amenities-section .sub-text {
                font-size: 16px;
                margin-bottom: 40px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ======= HERO SECTION ======= -->
    <section class="hero-banner">
        <div class="overlay">
            <div class="hero-content">
                <h1>Our Amenities</h1>
                <p>Indulge in the perfect blend of nature and luxury — crafted for your comfort and relaxation.</p>
                <a href="rooms.aspx" class="hero-btn">Explore Rooms</a>
            </div>
        </div>
    </section>

    <!-- ======= AMENITIES SECTION ======= -->
    <section class="amenities-section">
        <h2>Luxury Facilities</h2>
        <p class="sub-text">Discover our exclusive amenities designed to make every moment special and memorable.</p>

        <div class="amenities-grid">
            <div class="amenity">
                <i class="fa-solid fa-water-ladder"></i>
                <h4>Infinity Pool</h4>
                <p>Swim and relax in our infinity pool overlooking lush greenery.</p>
            </div>

            <div class="amenity">
                <i class="fa-solid fa-spa"></i>
                <h4>Luxury Spa</h4>
                <p>Rejuvenate your mind and body with our signature spa treatments.</p>
            </div>

            <div class="amenity">
                <i class="fa-solid fa-utensils"></i>
                <h4>Fine Dining</h4>
                <p>Savor delicious dishes prepared by top chefs in our elegant restaurant.</p>
            </div>

            <div class="amenity">
                <i class="fa-solid fa-wifi"></i>
                <h4>High-Speed Wi-Fi</h4>
                <p>Stay connected seamlessly with complimentary high-speed internet.</p>
            </div>

            <div class="amenity">
                <i class="fa-solid fa-fire"></i>
                <h4>Bonfire Nights</h4>
                <p>Enjoy cozy evenings under the stars with music and warm bonfires.</p>
            </div>

            <div class="amenity">
                <i class="fa-solid fa-dumbbell"></i>
                <h4>Fitness Center</h4>
                <p>Keep up with your fitness routine using our fully equipped gym.</p>
            </div>

            <div class="amenity">
                <i class="fa-solid fa-car"></i>
                <h4>Free Parking</h4>
                <p>Ample secured parking space available for all guests at no extra cost.</p>
            </div>

            <div class="amenity">
                <i class="fa-solid fa-champagne-glasses"></i>
                <h4>Event Lounge</h4>
                <p>Host your celebrations in a luxurious and elegant setting.</p>
            </div>
        </div>
    </section>
</asp:Content>

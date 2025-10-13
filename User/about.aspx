<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="hv.User.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Hidden Valley - About
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Hero Banner - Margin Restored */
        .hero-banner {
            position: relative;
            min-height: 70vh; /* Original height */
            background: url('../img/gallery1.jpg') no-repeat center/cover;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
            /* **Margin Restored as requested** */
            margin: 40px; 
            padding: 0;
            border-radius: 12px; /* Added border-radius for margin effect */
            overflow: hidden; 
        }

        .hero-banner .overlay {
            /* Full overlay inside the margin box */
            background: rgba(0, 0, 0, 0.65); /* Thoda dark overlay */
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

        .hero-banner .hero-content {
            max-width: 900px;
            z-index: 10;
            padding: 40px;
            /* background: rgba(255, 255, 255, 0.1); /* Removed light background for cleaner look */
            border-radius: 12px;
            animation: fadeInScale 1s ease-out forwards;
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
            font-size: 52px; /* Original size maintained */
            margin-bottom: 20px;
            letter-spacing: 3px;
            text-transform: uppercase;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.7);
            color: #ffffff;
            font-weight: bold;
        }

        .hero-banner p {
            font-size: 20px;
            line-height: 1.6;
            margin-bottom: 0;
            max-width: 700px;
            margin-left: auto;
            margin-right: auto;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.5);
            font-weight: 300;
        }
        
        /* About Us Section (No changes needed here based on request) */
        .about-section {
            padding: 80px 20px;
            background: #fff;
        }

        .about-container {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            max-width: 1200px;
            margin: auto;
            gap: 60px;
        }

        .about-image {
            flex: 1.2;
            min-width: 450px;
        }

        .about-image img {
            width: 100%;
            height: 480px;
            object-fit: cover;
            border-radius: 18px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.25);
            transition: transform 0.4s ease-in-out;
        }
        .about-image img:hover {
             transform: scale(1.02);
        }

        .about-text {
            flex: 1;
            min-width: 350px;
            background: #f9f9f9;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.08);
        }

        .about-text h2 {
            font-size: 32px;
            color: #7c8b38;
            margin-bottom: 25px;
            text-align: center;
            position: relative;
        }
        .about-text h2::after {
            content: '';
            position: absolute;
            left: 50%;
            bottom: -10px;
            transform: translateX(-50%);
            width: 70px;
            height: 3px;
            background-color: #7c8b38;
            border-radius: 2px;
        }

        .about-text p {
            font-size: 17px;
            line-height: 1.8;
            color: #333;
            margin-bottom: 18px;
            text-align: justify;
        }

        .about-text .signature {
            font-size: 24px; /* Slightly larger signature */
            font-style: italic;
            color: #7c8b38;
            margin-top: 30px;
            text-align: right;
            font-weight: 500;
        }
        
        /* Responsive - About Section */
        @media (max-width: 992px) {
            .about-container {
                flex-direction: column;
                text-align: center;
                gap: 30px;
            }
            .about-image, .about-text {
                min-width: unset;
                width: 100%;
            }
            .about-image img {
                height: 350px;
            }
        }


        /* Highlights Section - 2x2 Grid Restored */
        .highlights {
            padding: 80px 20px;
            background: #eef2e6;
            text-align: center;
        }

        .highlights h2 {
            font-size: 44px;
            font-weight: bold;
            color: #2c3e50;
            margin-bottom: 70px;
            letter-spacing: 2px;
            position: relative;
            text-transform: uppercase;
        }
        .highlights h2::after {
            content: '';
            position: absolute;
            left: 50%;
            bottom: -15px;
            transform: translateX(-50%);
            width: 100px;
            height: 4px;
            background-color: #7c8b38;
            border-radius: 2px;
        }
        .highlights h2::before {
            content: '';
            position: absolute;
            left: 50%;
            bottom: -25px;
            transform: translateX(-50%);
            width: 60px;
            height: 2px;
            background-color: #7c8b38;
            border-radius: 1px;
        }


        .highlights-grid {
            /* **2x2 Grid Restored as requested** */
            display: grid;
            grid-template-columns: repeat(2, 1fr); 
            gap: 35px;
            max-width: 1000px; /* Max-width updated to look good with 2 columns */
            margin: auto;
        }

        .highlight-box {
            background: #fff;
            padding: 45px 35px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            transition: all 0.4s ease-in-out;
            text-align: left;
            border: 1px solid #eee;
            position: relative;
            overflow: hidden;
        }

        .highlight-box::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(124, 139, 56, 0.1), transparent);
            transition: all 0.5s ease-in-out;
        }

        .highlight-box:hover::before {
            left: 100%;
        }

        .highlight-box:hover {
            transform: translateY(-10px) scale(1.02);
            box-shadow: 0 18px 40px rgba(0, 0, 0, 0.2);
            border-color: #7c8b38;
        }

        .highlight-box h3 {
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 20px;
            color: #7c8b38;
            text-transform: capitalize;
            position: relative;
            padding-left: 45px;
        }
        .highlight-box h3::before {
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
            font-size: 30px;
            line-height: 1;
        }
        /* Specific icons for each highlight box */
        #luxury-stay h3::before { content: '✨'; }
        #weddings-events h3::before { content: '🥂'; }
        #fine-dining h3::before { content: '🍽️'; }
        #nature-closer h3::before { content: '🌳'; }


        .highlight-box p {
            font-size: 17px;
            color: #444;
            line-height: 1.7;
        }

        /* Responsive - Highlights Section */
        @media (max-width: 768px) {
            .hero-banner {
                margin: 20px; /* Mobile par thoda kam margin */
                min-height: 50vh;
            }
            .highlights-grid {
                grid-template-columns: 1fr; /* Mobile par single column */
            }
            .highlights h2 {
                font-size: 36px;
                margin-bottom: 50px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="hero-banner">
        <div class="overlay">
            <div class="hero-content">
                <h1>Discover Hidden Valley</h1>
                <p>
                    Nestled amidst tranquil landscapes, Hidden Valley Resort is where unforgettable memories are crafted.
                    Experience unparalleled luxury, exceptional service, and breathtaking natural beauty.
                </p>
                </div>
        </div>
    </section>

    <section class="about-section">
        <div class="about-container">

            <div class="about-image">
                <img src="../img/aboutmain.jpg" alt="Hidden Valley Resort" />
            </div>

            <div class="about-text">
                <h2>Our Story, Your Experience</h2>
                <p>
                    Hidden Valley Resort, Gujarat's most sought-after destination, offers the perfect
                    blend of luxury, comfort, and elegance — designed to turn your moments into
                    lifelong memories.
                </p>

                <p>
                    Ideally located on Ahmedabad-Mehmadabad Highway, Hidden Valley is a convenient
                    and luxurious venue for family celebrations, weddings, or corporate events.
                </p>

                <p>
                    From lush lawns and well-equipped rooms to lavish banquet halls, fine dining
                    restaurants, exciting games, and a sparkling swimming pool — we have it all
                    under one roof.
                </p>

                <p>
                    Redefining the meaning of comfort, convenience, and luxury —
                    discover the new definition of opulence at Hidden Valley Resort.
                </p>

                <p class="signature">– The Hidden Valley Team</p>
            </div>
        </div>
    </section>

    <section class="highlights">
        <h2>Why Choose Hidden Valley</h2>
        <div class="highlights-grid">
            <div class="highlight-box" id="luxury-stay">
                <h3>Luxury Stay</h3>
                <p>Experience spacious modern rooms, serene views, and unmatched comfort for your perfect getaway. Each room is designed for ultimate relaxation.</p>
            </div>
            <div class="highlight-box" id="weddings-events">
                <h3>Weddings & Events</h3>
                <p>Celebrate your dream wedding or grand event with elegance in our lavish banquet halls and picturesque outdoor gardens. Our team ensures every detail is perfect.</p>
            </div>
            <div class="highlight-box" id="fine-dining">
                <h3>Fine Dining</h3>
                <p>Relish gourmet cuisine with multiple dining options, from extensive buffets to exquisite à la carte international and local delicacies prepared by top chefs.</p>
            </div>
            <div class="highlight-box" id="nature-closer">
                <h3>Closer to Nature</h3>
                <p>Escape the city's hustle and bustle. Enjoy lush greenery, peaceful surroundings, and invigorating fresh air, making your stay a truly refreshing experience.</p>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BookNowSection" runat="server">
</asp:Content>
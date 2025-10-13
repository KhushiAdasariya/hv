<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="amenities.aspx.cs" Inherits="hv.User.amenities" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Hidden Valley - Amenities 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Google Fonts */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&family=Playfair+Display:wght@600&display=swap');

body {
    font-family: 'Poppins', sans-serif;
}

/* Banner Section */
.banner {
    position: relative;
    min-height: 70vh;
    background: url('../img/garden.jpg') no-repeat center/cover;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    color: white;
    margin: 40px;
    padding: 0;
}

.banner .overlay {
    background: rgba(0, 0, 0, 0.5);
    padding: 50px;
    max-width: 800px;
    width: 100%;
}

.banner h1 {
    font-size: 52px;
    margin-bottom: 15px;
    letter-spacing: 3px;
    text-transform: uppercase;
}

.banner p {
    font-size: 20px;
    line-height: 1.6;
}

/* Section Base */
section {
    padding: 70px 30px;
    text-align: center;
}

.section-heading {
    font-family: 'Playfair Display', serif;
    font-size: 34px;
    font-weight: 600;
    color: #2c3e50;
    margin-bottom: 20px;
}

.section-subtext {
    max-width: 850px;
    margin: 0 auto 50px;
    font-size: 18px;
    line-height: 1.8;
    color: #444;
}

/* Grid */
.grid-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 25px;
    max-width: 1100px;
    margin: auto;
}

/* Amenity Card */
.amenity-card {
    background: linear-gradient(135deg, #d4a373, #b28c63);
    border-radius: 14px;
    padding: 40px 25px;
    color: #fff;
    font-size: 20px;
    font-weight: 600;
    letter-spacing: 1px;
    box-shadow: 0 8px 18px rgba(0, 0, 0, 0.15);
    transition: transform .3s ease, box-shadow .3s ease;
}

.amenity-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 12px 28px rgba(0, 0, 0, 0.2);
}

/* Backgrounds */
.indoor {
    background: #f9f9f9;
}

.outdoor {
    background: #eef7f3;
}

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Amenities Banner -->
    <section class="banner">
        <div class="overlay">
            <h1>Our Amenities</h1>
            <p>
                From a luxurious spa and infinity pool to fine dining and modern fitness facilities – 
                enjoy everything crafted for your comfort.
            </p>
        </div>
    </section>

    <!-- Intro -->
    <section>
        <h2 class="section-heading">Wholesome Fun for Everyone</h2>
        <p class="section-subtext">
            To give you a wholesome experience, we’ve curated an exciting blend of indoor and outdoor activities. 
            Compete, relax, or simply have fun with your loved ones – we make sure every moment is worth it.
        </p>
    </section>

    <!-- Indoor Games -->
    <section class="indoor">
        <h2 class="section-heading">Indoor Amenities</h2>
        <p class="section-subtext">
            From chilled-out games to brain teasers, our indoor amenities ensure you never run out of things to do. 
            Whether it’s strategy, speed or fun – we’ve got it all for you.
        </p>

        <div class="grid-container">
            <div class="amenity-card">Swimming Pool</div>
            <div class="amenity-card">Pool Table</div>
            <div class="amenity-card">Table Tennis</div>
            <div class="amenity-card">Carrom Board</div>
            <div class="amenity-card">Chess Board</div>
        </div>
    </section>

    <!-- Outdoor Games -->
    <section class="outdoor">
        <h2 class="section-heading">Outdoor Amenities</h2>
        <p class="section-subtext">
            Step outside and breathe in the fresh air as you enjoy our outdoor facilities. 
            Be it an energetic match or a casual game – the choice is all yours.
        </p>

        <div class="grid-container">
            <div class="amenity-card">Volleyball</div>
            <div class="amenity-card">Badminton</div>
            <div class="amenity-card">Cricket</div>
        </div>
    </section>

    <!-- External CSS -->
    <link rel="stylesheet" href="css/amenities.css" />
</asp:Content>

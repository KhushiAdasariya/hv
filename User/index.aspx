<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="hv.User.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>

    .hero-banner {
        position: relative;
        min-height: 80vh;
        background: url('../img/hero.jpg') no-repeat center/cover;
        display: flex;
        align-items: center;
        justify-content: center;
        text-align: center;
        color: white;
        margin: 40px; /* margin 4 baju */
        border-radius: 15px;
        overflow: hidden;
    }

    .hero-banner .overlay {
        background: rgba(0, 0, 0, 0.6);
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
        font-size: 52px;
        font-weight: bold;
        text-transform: uppercase;
        letter-spacing: 3px;
        margin-bottom: 20px;
        color: #fff;
        text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.7);
    }

    .hero-banner p {
        font-size: 20px;
        line-height: 1.7;
        max-width: 700px;
        margin: 0 auto;
        color: #f5f5f5;
        text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.4);
    }

    .hero-btn {
        display: inline-block;
        margin-top: 35px;
        padding: 14px 35px;
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
            min-height: 60vh;
        }
        .hero-banner h1 {
            font-size: 38px;
        }
        .hero-banner p {
            font-size: 17px;
            padding: 0 15px;
        }
    }





/* ABOUT */
.about-section {
    position: relative; padding: 80px 20px;
    background: url('../img/about us.jpg') no-repeat center/cover;
    min-height: 70vh; display: flex; align-items: center; justify-content: flex-end;
}
.about-box {
    background: rgba(255,255,255,0.5);
    backdrop-filter: blur(18px);
    padding: 50px; border-radius: 15px;
    max-width: 500px; text-align: center; margin-right: 60px;
}
.about-box h2 {
    font-size: 34px; font-weight: bold; margin-bottom: 25px;
    color: #2c3e50; letter-spacing: 2px; text-transform: uppercase;
}
.about-box a {
    display: inline-block; margin-top: 10px;
    padding: 12px 30px; background: #7c8b38;
    color: white; text-decoration: none;
    font-weight: bold; border-radius: 5px;
    transition: 0.3s;
}

/* Amenities Section */
.amenities-section {
    text-align: center;
    padding: 80px 20px;   /* ज्यादा padding ऊपर-नीचे */
    background: #2c3e50; /* Dark Blue background */
    color: white;
    margin-top: 60px;     /* Hero section और amenities के बीच gap */
}

.amenities-section h2 {
    font-size: 2.5rem;
    margin-bottom: 40px;
    font-weight: bold;
    letter-spacing: 2px;
}

/* Grid - 3 columns fix */
.amenities-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr); /* Always 3 per row */
    gap: 30px;
    max-width: 1100px;
    margin: auto;
}

/* Boxes */
.amenity-box {
    background: #ffffff;
    border-radius: 15px;
    padding: 30px 20px;
    transition: all 0.3s ease;
    cursor: pointer;
    box-shadow: 0 5px 15px rgba(0,0,0,0.15);
}

.amenity-box img {
    width: 80px;
    height: 80px;
    object-fit: contain;
    margin-bottom: 20px;
    transition: transform 0.3s ease, filter 0.3s ease;
}

.amenity-box h3 {
    font-size: 1.2rem;
    font-weight: 600;
    color: #2c3e50;
    margin-top: 10px;
}

/* Hover Effects */
.amenity-box:hover {
    transform: translateY(-8px);
    box-shadow: 0 12px 25px rgba(0,0,0,0.25);
    background: #f8f9fa;
}

.amenity-box:hover img {
    transform: scale(1.1);
    filter: hue-rotate(20deg);
}

/* View Button */
.view-btn {
    display: inline-block;
    margin: 50px auto 0 auto;  
    padding: 14px 35px;
    background: #7c8b38;   /* वही greenish जैसा आपके image में दिख रहा था */
    color: white;
    border-radius: 8px;
    text-decoration: none;
    font-size: 1rem;
    font-weight: 600;
    transition: background 0.3s ease;
}

.view-btn:hover {
    background: #6f8f2a;   /* hover पर थोड़ा dark */
}

/* FOOD */
.food-section {
    position:relative; padding:100px 20px;
    background:url('../img/restaurant.jpg') no-repeat center/cover;
    margin:60px 40px; text-align:center; color:white;
}
.food-box {
    background:rgba(0,0,0,0.6); padding:50px; border-radius:12px; max-width:800px; margin:auto;
}
.food-box h2 { font-size:36px; font-weight:bold; margin-bottom:20px; letter-spacing:2px; }
.food-box a {
    display:inline-block; padding:14px 35px; background:#7c8b38; color:#fff;
    text-decoration:none; font-size:18px; font-weight:bold; border-radius:8px; transition:0.3s;
}

/* GALLERY */
.gallery-section { padding:80px 20px; text-align:center; background:#fff; }
.gallery-section h2 { font-size:36px; font-weight:bold; color:#2c3e50; margin-bottom:10px; letter-spacing:2px; }
.gallery-section p { font-size:18px; font-style:italic; color:#555; margin-bottom:50px; }
.gallery-grid {
    display:grid; grid-template-columns:repeat(auto-fit, minmax(280px, 1fr));
    gap:15px; max-width:1200px; margin:auto;
}
.gallery-item { position: relative; overflow: hidden; border-radius: 8px; }
.gallery-item img { width: 100%; height: 200px; object-fit: cover; transition: 0.4s; }
.gallery-item:hover img { transform: scale(1.1); }

/* WEDDING */
.wedding-section {
    padding: 80px 40px; background: #fff;
    display: flex; flex-wrap: wrap; align-items: center; gap: 40px;
}
.wedding-images {
    flex: 1; min-width: 350px; display: grid;
    grid-template-columns: repeat(2, 1fr); gap: 15px;
}
.wedding-images .big-img { grid-column: 1/3; width: 100%; height: 280px; object-fit: cover; border-radius: 8px; }
.wedding-images .small-img { width: 100%; height: 180px; object-fit: cover; border-radius: 8px; }
.wedding-content { flex: 1; min-width: 350px; }
.wedding-content h2 { font-size: 34px; font-weight: bold; color: #2c3e50; margin-bottom: 15px; letter-spacing: 1px; }
.wedding-content h3 { font-size: 18px; font-style: italic; color: #555; margin-bottom: 25px; }
.wedding-content p { font-size: 16px; line-height: 1.8; color: #444; margin-bottom: 20px; }
.read-btn { display: inline-block; margin-top: 20px; padding: 14px 35px; background: #2c3e50; color: #fff;
    text-decoration: none; font-size: 16px; font-weight: bold; border-radius: 6px; transition: 0.3s; }
.read-btn:hover { background: #7c8b38; }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="hero-banner">
    <div class="overlay">
        <div class="hero-content">
            <h1>Welcome to Hidden Valley Resort</h1>
            <p>Luxury, comfort, and tranquility — experience nature's beauty and premium hospitality at Hidden Valley.</p>
            <a href="about.aspx" class="hero-btn">Discover More</a>
        </div>
    </div>
</section>
   
    <!-- About Section -->
    <section class="about-section">
        <div class="about-box">
            <h2>ABOUT US</h2>
            <p>
                Life is what you celebrate and we give you ample reasons for it! <br /><br />
                Hidden Valley Resort, Gujarat's one of the largest clubs and resorts, 
                offers you numerous reasons to turn your events into memorable ones. <br /><br />
                Ideally located on Ahmedabad-Mehmadabad Highway, near Hathijan, 
                Hidden Valley serves as the most convenient and luxurious venue 
                for grand celebrations.
            </p>
            <a href="about.aspx">Read More</a>
        </div>
    </section>

    <!-- Amenities Section -->
    <section class="amenities-section">
        <h2>OUR AMENITIES</h2>
        <div id="amenitiesGrid" class="amenities-grid">
            <div class="amenity-box"><img src="../img/swimming pool.png" /><h3>Swimming Pool</h3></div>
            <div class="amenity-box"><img src="../img/pool table.png" /><h3>Pool Table</h3></div>
            <div class="amenity-box"><img src="../img/table tenis.png" /><h3>Table Tennis</h3></div>
            <div class="amenity-box"><img src="../img/volleyball.png" /><h3>Volleyball</h3></div>
            <div class="amenity-box"><img src="../img/badminton.png" /><h3>Badminton</h3></div>
            <div class="amenity-box"><img src="../img/cricket.png" /><h3>Cricket</h3></div>
        </div>
        <a href="amenities.aspx" class="view-btn">View All Amenities</a>
    </section>

    <!-- Delicious Food Section -->
    <section class="food-section">
        <div class="food-box">
            <h2>DELICIOUS FOOD</h2>
            <p>
                To make your stay more pleasurable Hidden Valley Resort offers you multiple dining options. 
                Enjoy a lavish buffet spread or Pizza's from a Wood-Fired oven at <b>24Seven</b>. 
                Also savor International Cuisine at <b>The Multi Cuisine Restaurant</b>.
            </p>
            <a href="dinning.aspx">Read More</a>
        </div>
    </section>

    <!-- Gallery Section -->
    <section class="gallery-section">
        <h2>GALLERY</h2>
        <p>From rooftops views to exquisite interiors</p>
        <div class="gallery-grid">
            <div class="gallery-item"><img src="../img/gallery1.jpg" /></div>
            <div class="gallery-item"><img src="../img/gallery2.jpg" /></div>
            <div class="gallery-item"><img src="../img/gallery3.jpg" /></div>
            <div class="gallery-item"><img src="../img/gallery4.jpg" /></div>
            <div class="gallery-item"><img src="../img/gallery5.jpg" /></div>
            <div class="gallery-item"><img src="../img/gallery6.jpg" /></div>
            <div class="gallery-item"><img src="../img/gallery7.jpg" /></div>
            <div class="gallery-item"><img src="../img/gallery8.jpg" /></div>
        </div>
        <a href="gallery.aspx" class="view-btn">Go to Gallery</a>
    </section>

    <!-- Wedding & Events Section -->
    <section class="wedding-section">
        <div class="wedding-images">
            <img src="../img/corporate.jpg" class="big-img" />
            <img src="../img/Celebration.jpg" class="small-img" />
            <img src="../img/Wedding.jpg" class="small-img" />
        </div>
        <div class="wedding-content">
            <h2>WEDDING & EVENTS</h2>
            <h3>Wedding & Events in the area, stuff to do and experience around our resort</h3>
            <p>
                Professional wedding and event planners at Hidden Valley Resort are experienced to manage all aspects 
                of weddings and events, be it an out of this world theme wedding or a simple but elegant personal event. 
                <b>If Love is in the Air...</b>
            </p>
            <p>
                Take the opportunity of a lifetime. For those with business to conduct, Hidden Valley Resort provides 
                a unique opportunity to transcend the boardroom and gain inspiration from extraordinary surroundings 
                and service.
            </p>
            <a href="wedding.aspx" class="read-btn">READ MORE</a>
        </div>
    </section>

    <script src="js/site.js"></script>
</asp:Content>

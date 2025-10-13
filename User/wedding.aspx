<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="wedding.aspx.cs" Inherits="hv.User.wedding" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Hidden Valley - Wedding & Event
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Banner */
.wedding-banner {
    position: relative;
    min-height: 70vh;
    background: url('../img/wedding3.jpg') no-repeat center/cover;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    color: white;
    margin: 40px;
}

.banner-content {
    background: rgba(0, 0, 0, 0.5);
    padding: 50px;
    max-width: 800px;
    width: 100%;
}

.banner-content h1 {
    font-size: 52px;
    margin-bottom: 15px;
    letter-spacing: 3px;
    text-transform: uppercase;
}

.banner-content p {
    font-size: 20px;
    line-height: 1.6;
}

/* Services Section */
.services-section {
    padding: 80px 40px;
    background: #fff;
}

.services-container {
    display: flex;
    flex-wrap: wrap;
    align-items: flex-start;
    gap: 40px;
    max-width: 1200px;
    margin: auto;
}

.services-left {
    flex: 1;
    min-width: 350px;
}

.services-left h2 {
    font-size: 34px;
    font-weight: bold;
    color: #2c3e50;
    margin-bottom: 30px;
}

.services-left ul {
    list-style: none;
    padding: 0;
    font-size: 18px;
    line-height: 1.8;
    color: #444;
}

.services-right {
    flex: 1;
    min-width: 350px;
    text-align: center;
}

.services-right img {
    width: 100%;
    max-width: 500px;
    border-radius: 12px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.2);
}

/* Vraj Section */
.vraj-section {
    padding: 80px 40px;
    background: #f9f9f9;
}

.vraj-container {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 40px;
    max-width: 1200px;
    margin: auto;
}

.vraj-left {
    flex: 1;
    min-width: 350px;
}

.vraj-left h2 {
    font-size: 32px;
    font-weight: bold;
    color: #2c3e50;
    margin-bottom: 20px;
}

.vraj-left p {
    font-size: 18px;
    line-height: 1.8;
    color: #444;
}

.vraj-right img {
    width: 100%;
    max-width: 500px;
    border-radius: 12px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.15);
}

/* Halls Section */
.halls-section {
    padding: 80px 20px;
    background: #f9f9f9;
    text-align: center;
}

.halls-section h2 {
    font-size: 36px;
    font-weight: bold;
    color: #2c3e50;
    margin-bottom: 50px;
}

.halls-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit,minmax(300px,1fr));
    gap: 30px;
    max-width: 1100px;
    margin: auto;
}

.hall-card {
    background: #fff;
    border-radius: 12px;
    box-shadow: 0 6px 16px rgba(0,0,0,0.1);
    overflow: hidden;
}

.hall-card img {
    width: 100%;
    height: 220px;
    object-fit: cover;
}

.hall-info {
    padding: 20px;
}

.hall-info h3 {
    font-size: 24px;
    font-weight: bold;
    color: #2c3e50;
}

.hall-info p {
    color: #555;
}
/* Call to Action Section */
.cta-section {
    background: linear-gradient(135deg, #ff758c, #ff7eb3);
    padding: 80px 20px;
    text-align: center;
    color: white;
    border-radius: 16px;
    max-width: 1000px;
    margin: 60px auto;
    box-shadow: 0 10px 25px rgba(0,0,0,0.3);
}

.cta-content h2 {
    font-size: 36px;
    margin-bottom: 20px;
    font-weight: 700;
    letter-spacing: 1px;
}

.cta-content p {
    font-size: 18px;
    margin-bottom: 35px;
    line-height: 1.6;
}

/* Call to Action Section */
.cta-section {
    background: linear-gradient(135deg, #7c8b38ee, #a0b859);
    padding: 80px 20px;
    text-align: center;
    color: white;
    border-radius: 16px;
    max-width: 1000px;
    margin: 60px auto;
    box-shadow: 0 10px 25px rgba(0,0,0,0.3);
}

.cta-content h2 {
    font-size: 34px;
    margin-bottom: 20px;
    font-weight: 700;
    letter-spacing: 1px;
}

.cta-content p {
    font-size: 18px;
    margin-bottom: 35px;
    line-height: 1.6;
}

/* Premium Book Now Button */
/* Premium Book Now Button */
.book-now-btn {
    background: linear-gradient(135deg, #2c3e50, #34495e);
    color: white;
    font-size: 20px;
    font-weight: 700;
    padding: 16px 45px;
    border: none;
    border-radius: 50px;
    cursor: pointer;
    letter-spacing: 1px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.25);
    transition: all 0.4s ease-in-out;
    position: relative;
    overflow: hidden;
}

.book-now-btn::before {
    content: "";
    position: absolute;
    top: -50%;
    left: -50%;
    width: 200%;
    height: 200%;
    background: rgba(255, 255, 255, 0.15);
    transform: rotate(25deg);
    transition: all 0.6s ease-in-out;
}

.book-now-btn:hover::before {
    left: 100%;
}

.book-now-btn:hover {
    transform: translateY(-4px) scale(1.05);
    box-shadow: 0 12px 30px rgba(0,0,0,0.35);
    background: linear-gradient(135deg, #34495e, #2c3e50);
}

</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Wedding Banner -->
    <section class="wedding-banner">
        <div class="banner-content">
            <h1>Weddings at Hidden Valley</h1>
            <p>Celebrate love in a dreamy setting – where stunning views, elegant venues, and personalized touches make your big day unforgettable.</p>
        </div>
    </section>

    <!-- Wedding Services -->
    <section class="services-section">
        <div class="services-container">
            <!-- Left -->
            <div class="services-left">
                <h2>Our Wedding & Event Services</h2>
                <ul>
                    <li>✅ Conceptualizing the Event</li>
                    <li>✅ Planning and Execution</li>
                    <li>✅ Preliminary Preparation</li>
                    <li>✅ Bridal Make-up, Hair & Beauty Treatments</li>
                    <li>✅ Professional Photography & Video Recording</li>
                    <li>✅ Theme Set-ups</li>
                    <li>✅ Planning a Menu</li>
                    <li>✅ Organizing Cultural Activities</li>
                    <li>✅ Party Plot</li>
                    <ul>
                        <li>➡ Vraj Village (1,00,000 Sq.ft.)</li>
                    </ul>
                    <li>✅ Banquet Halls (200 To 500 People Capacity)</li>
                </ul>
            </div>
            <!-- Right -->
            <div class="services-right">
                <img src="../img/wedding.jpg" />
            </div>
        </div>
    </section>

    <!-- Vraj Village Lawn -->
    <section class="vraj-section">
        <div class="vraj-container">
            <div class="vraj-left">
                <h2>Vraj Village Lawn</h2>
                <p>
                    The lush green expansive village theme type venue of <b>1,00,000 Sq. feet</b> for large functions 
                    can accommodate more than <b>1500 guests</b>.
                </p>
                <p>
                    The lawn includes <b>water fountains</b>, <b>air-conditioned washroom</b> and complimentary village-theme rooms.
                </p>
            </div>
            <div class="vraj-right">
                <img src="img/vraj-village.jpg" />
            </div>
        </div>
    </section>

    <!-- Multipurpose Halls -->
    <section class="halls-section">
        <h2>Our Multipurpose Halls</h2>
        <div class="halls-grid">
            <div class="hall-card">
                <img src="img/hall1.jpg" />
                <div class="hall-info">
                    <h3>Royal Crystal Hall</h3>
                    <p>Capacity: 800 Guests</p>
                </div>
            </div>
            <div class="hall-card">
                <img src="img/hall2.jpg" />
                <div class="hall-info">
                    <h3>Emerald Celebration Hall</h3>
                    <p>Capacity: 500 Guests</p>
                </div>
            </div>
            <div class="hall-card">
                <img src="img/hall3.jpg" />
                <div class="hall-info">
                    <h3>Sapphire Conference Hall</h3>
                    <p>Capacity: 300 Guests</p>
                </div>
            </div>
        </div>
    </section>

   <!-- Call to Action Section -->
<section class="cta-section">
    <div class="cta-content">
        <h2>✨ Plan Your Social, Wedding & Corporate Events ✨</h2>
        <p>
            From elegant <b>weddings</b> to grand <b>corporate gatherings</b> and vibrant <b>social celebrations</b> –  
            Hidden Valley offers premium venues, seamless planning, and unforgettable experiences.  
        </p>
<asp:Button ID="btnBookNow" runat="server" Text="Book Now" CssClass="book-now-btn" PostBackUrl="~/User/eventbook.aspx" />
    </div>
</section>


</asp:Content>

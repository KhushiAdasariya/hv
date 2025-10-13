<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="hv.User.gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Hidden Valley - Gallery
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Banner */
.gallery-banner {
    position: relative;
    min-height: 70vh;
    background: url('../img/gallerymain.jpg') no-repeat center/cover;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    color: white;
    margin: 40px;
    padding: 0;
}

.gallery-banner .banner-overlay {
    background: rgba(0, 0, 0, 0.5);
    padding: 50px;
    max-width: 800px;
    width: 100%;
}

.gallery-banner h1 {
    font-size: 52px;
    margin-bottom: 15px;
    letter-spacing: 3px;
    text-transform: uppercase;
}

.gallery-banner p {
    font-size: 20px;
    line-height: 1.6;
}

/* Gallery Section */
.gallery-section {
    padding: 80px 20px;
    background: #f9f9f9;
}

.gallery-container {
    max-width: 1300px;
    margin: auto;
}

.gallery-container h2 {
    text-align: center;
    font-size: 38px;
    color: #2c3e50;
    margin-bottom: 60px;
    letter-spacing: 1px;
}

/* Grid */
.gallery-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
    gap: 25px;
}

.gallery-grid img {
    width: 100%;
    height: 250px;
    object-fit: cover;
    border-radius: 12px;
    box-shadow: 0 6px 16px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.gallery-grid img:hover {
    transform: scale(1.05);
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
}

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Link CSS File -->
    <link rel="stylesheet" type="text/css" href="css/gallery.css" />

    <!-- Gallery Banner -->
    <section class="gallery-banner">
        <div class="banner-overlay">
            <h1>Our Gallery</h1>
            <p>
                Discover breathtaking views, unforgettable moments, and the beauty of Hidden Valley through our curated gallery.
            </p>
        </div>
    </section>

    <!-- Gallery Section -->
    <section class="gallery-section">
        <div class="gallery-container">
            <h2>Gallery</h2>

            <!-- Grid -->
            <div class="gallery-grid">
                <div><img src="../img/gallery1.jpg" alt="Gallery Image 1"></div>
                <div><img src="../img/gallery2.jpg" alt="Gallery Image 2"></div>
                <div><img src="../img/gallery3.jpg" alt="Gallery Image 3"></div>
                <div><img src="../img/gallery4.jpg" alt="Gallery Image 4"></div>
                <div><img src="../img/gallery5.jpg" alt="Gallery Image 5"></div>
                <div><img src="../img/gallery6.jpg" alt="Gallery Image 6"></div>
                <div><img src="../img/gallery7.jpg" alt="Gallery Image 7"></div>
                <div><img src="../img/gallery8.jpg" alt="Gallery Image 8"></div>
                <div><img src="../img/gallery9.png" alt="Gallery Image 9"></div>
                <div><img src="../img/gallery10.png" alt="Gallery Image 10"></div>
                <div><img src="../img/gallery11.png" alt="Gallery Image 11"></div>
                <div><img src="../img/gallery12.png" alt="Gallery Image 12"></div>
                <div><img src="../img/gallery13.png" alt="Gallery Image 13"></div>
                <div><img src="../img/gallery14.png" alt="Gallery Image 14"></div>
                <div><img src="../img/gallery15.png" alt="Gallery Image 15"></div>
                <div><img src="../img/gallery16.jpg" alt="Gallery Image 16"></div>
                <div><img src="../img/gallery17.jpg" alt="Gallery Image 17"></div>
                <div><img src="../img/gallery18.jpg" alt="Gallery Image 18"></div>
                <div><img src="../img/gallery19.jpg" alt="Gallery Image 19"></div>
                <div><img src="../img/gallery20.jpg" alt="Gallery Image 20"></div>
                <div><img src="../img/gallery21.jpg" alt="Gallery Image 21"></div>
                <div><img src="../img/gallery22.jpg" alt="Gallery Image 22"></div>
                <div><img src="../img/gallery23.jpg" alt="Gallery Image 23"></div>
                <div><img src="../img/gallery24.jpg" alt="Gallery Image 24"></div>
                <div><img src="../img/gallery25.jpg" alt="Gallery Image 25"></div>
                <div><img src="../img/gallery26.jpg" alt="Gallery Image 26"></div>
                <div><img src="../img/gallery27.jpg" alt="Gallery Image 27"></div>
                <div><img src="../img/gallery28.jpg" alt="Gallery Image 28"></div>
                <div><img src="../img/gallery29.jpg" alt="Gallery Image 29"></div>
                <div><img src="../img/gallery30.jpg" alt="Gallery Image 30"></div>
            </div>
        </div>
    </section>
</asp:Content>

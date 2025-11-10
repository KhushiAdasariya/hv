<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="hv.User.gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Hidden Valley - Gallery
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />

    <style>
        /* ======= HERO SECTION (MATCH ROOM PAGE) ======= */
        .gallery-hero {
            position: relative;
            min-height: 65vh;
            background: url('../img/gallerymain.jpg') no-repeat center/cover;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
            margin: 40px;
            border-radius: 15px;
            overflow: hidden;
        }

        .gallery-hero::after {
            content: "";
            position: absolute;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background: rgba(0, 0, 0, 0.55);
        }

        .gallery-hero .content {
            position: relative;
            z-index: 2;
            max-width: 850px;
            padding: 40px;
            animation: fadeInScale 1.2s ease-out forwards;
        }

        @keyframes fadeInScale {
            from { opacity: 0; transform: scale(0.95); }
            to { opacity: 1; transform: scale(1); }
        }

        .gallery-hero h1 {
            font-size: 50px;
            font-weight: 700;
            letter-spacing: 2px;
            margin-bottom: 15px;
            color: #fff;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.6);
        }

        .gallery-hero p {
            font-size: 18px;
            line-height: 1.6;
            color: #f2f2f2;
            max-width: 700px;
            margin: 0 auto;
        }

        @media (max-width: 768px) {
            .gallery-hero {
                margin: 20px;
                min-height: 55vh;
            }
            .gallery-hero h1 { font-size: 36px; }
            .gallery-hero p { font-size: 16px; }
        }

        /* ======= GALLERY SECTION ======= */
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

        .gallery-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 25px;
        }

        .gallery-grid img {
            width: 100%;
            height: 250px;
            object-fit: cover;
            border-radius: 14px;
            box-shadow: 0 5px 16px rgba(0, 0, 0, 0.15);
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .gallery-grid img:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.25);
        }

        /* ===== LIGHTBOX STYLE ===== */
        .lightbox {
            position: fixed;
            display: none;
            align-items: center;
            justify-content: center;
            top: 0; left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.9);
            z-index: 9999;
            transition: all 0.3s ease;
        }

        .lightbox.active {
            display: flex;
        }

        .lightbox img {
            max-width: 95%;
            max-height: 90vh;
            border-radius: 12px;
            box-shadow: 0 0 25px rgba(255,255,255,0.3);
            object-fit: contain;
            animation: fadeIn 0.4s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.95); }
            to { opacity: 1; transform: scale(1); }
        }

        .lightbox-close {
            position: absolute;
            top: 30px;
            right: 50px;
            font-size: 35px;
            color: #fff;
            cursor: pointer;
            transition: color 0.3s;
        }

        .lightbox-close:hover {
            color: #7c8b38;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- HERO SECTION -->
    <section class="gallery-hero">
        <div class="content">
            <h1>Our Gallery</h1>
            <p>Discover breathtaking views and serene beauty of Hidden Valley through our curated gallery.</p>
        </div>
    </section>

    <!-- GALLERY SECTION -->
    <section class="gallery-section">
        <div class="gallery-container">
            <h2>Explore Our Gallery</h2>

            <div class="gallery-grid">
                <img src="../img/gallery1.jpg" alt="">
                <img src="../img/gallery2.jpg" alt="">
                <img src="../img/gallery3.jpg" alt="">
                <img src="../img/gallery4.jpg" alt="">
                <img src="../img/gallery5.jpg" alt="">
                <img src="../img/gallery6.jpg" alt="">
                <img src="../img/gallery7.jpg" alt="">
                <img src="../img/gallery8.jpg" alt="">
                <img src="../img/gallery9.png" alt="">
                <img src="../img/gallery10.png" alt="">
                <img src="../img/gallery11.png" alt="">
                <img src="../img/gallery12.png" alt="">
                <img src="../img/gallery13.png" alt="">
                <img src="../img/gallery14.png" alt="">
                <img src="../img/gallery15.png" alt="">
                <img src="../img/gallery16.jpg" alt="">
                <img src="../img/gallery17.jpg" alt="">
                <img src="../img/gallery18.jpg" alt="">
                <img src="../img/gallery19.jpg" alt="">
                <img src="../img/gallery20.jpg" alt="">
                <img src="../img/gallery21.jpg" alt="">
                <img src="../img/gallery22.jpg" alt="">
                <img src="../img/gallery23.jpg" alt="">
                <img src="../img/gallery24.jpg" alt="">
                <img src="../img/gallery25.jpg" alt="">
                <img src="../img/gallery26.jpg" alt="">
                <img src="../img/gallery27.jpg" alt="">
                <img src="../img/gallery28.jpg" alt="">
                <img src="../img/gallery29.jpg" alt="">
                <img src="../img/gallery30.jpg" alt="">
            </div>
        </div>
    </section>

    <!-- LIGHTBOX CONTAINER -->
    <div class="lightbox" id="lightbox">
        <span class="lightbox-close">&times;</span>
        <img src="" alt="Full Image" id="lightbox-img">
    </div>

    <!-- SCRIPT FOR LIGHTBOX -->
    <script>
        const galleryImages = document.querySelectorAll('.gallery-grid img');
        const lightbox = document.getElementById('lightbox');
        const lightboxImg = document.getElementById('lightbox-img');
        const closeBtn = document.querySelector('.lightbox-close');

        galleryImages.forEach(img => {
            img.addEventListener('click', () => {
                lightboxImg.src = img.src;
                lightbox.classList.add('active');
            });
        });

        closeBtn.addEventListener('click', () => {
            lightbox.classList.remove('active');
        });

        lightbox.addEventListener('click', (e) => {
            if (e.target === lightbox) lightbox.classList.remove('active');
        });
    </script>
</asp:Content>

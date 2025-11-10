<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="hv.User.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Hidden Valley - Contact
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet" />

    <style>
        /* ====== HERO / CONTACT BANNER ====== */
        .contact-banner {
            position: relative;
            min-height: 65vh;
            background: url('../img/rese.jpg') no-repeat center/cover;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
            margin: 40px;
            border-radius: 16px;
            overflow: hidden;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.25);
        }

        .contact-banner::after {
            content: "";
            position: absolute;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background: rgba(0, 0, 0, 0.55);
        }

        .contact-content {
            position: relative;
            z-index: 2;
            max-width: 850px;
            padding: 50px;
            animation: fadeInScale 1.2s ease-out forwards;
        }

        @keyframes fadeInScale {
            from { opacity: 0; transform: scale(0.9); }
            to { opacity: 1; transform: scale(1); }
        }

        .contact-content h1 {
            font-size: 52px;
            margin-bottom: 20px;
            font-weight: 700;
            letter-spacing: 2px;
            text-transform: uppercase;
            text-shadow: 2px 2px 10px rgba(0,0,0,0.5);
        }

        .contact-content p {
            font-size: 18px;
            line-height: 1.8;
            color: #f2f2f2;
            max-width: 700px;
            margin: 0 auto;
        }

        @media (max-width: 768px) {
            .contact-banner {
                margin: 20px;
                min-height: 55vh;
            }
            .contact-content h1 { font-size: 36px; }
            .contact-content p { font-size: 16px; }
        }

        /* ====== CONTACT SECTION ====== */
        .contact-section {
            padding: 90px 40px;
            background: #fff;
        }

        .contact-container {
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
            max-width: 1200px;
            margin: auto;
        }

        /* Info Card */
        .contact-info {
            flex: 1;
            min-width: 350px;
            background: #fff;
            padding: 40px;
            border-radius: 18px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.08);
            transition: 0.3s ease;
        }

        .contact-info:hover {
            transform: translateY(-6px);
            box-shadow: 0 12px 30px rgba(0,0,0,0.12);
        }

        .contact-info h2 {
            font-size: 30px;
            margin-bottom: 25px;
            color: #2c3e50;
            font-weight: 600;
        }

        .info-item {
            display: flex;
            align-items: center;
            margin-bottom: 22px;
        }

        .info-icon {
            width: 60px;
            height: 60px;
            background: #7c8b38;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            font-size: 26px;
            margin-right: 18px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
            transition: 0.3s ease;
        }

        .info-item:hover .info-icon {
            background: #a0b859;
            transform: scale(1.1);
        }

        /* Form */
        .contact-form {
            flex: 1;
            min-width: 350px;
            background: #fff;
            padding: 45px;
            border-radius: 18px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.08);
        }

        .contact-form h2 {
            margin-bottom: 25px;
            font-size: 30px;
            color: #2c3e50;
            font-weight: 600;
        }

        .form-group {
            position: relative;
            margin-bottom: 22px;
        }

        .form-input, .form-textarea {
            width: 100%;
            padding: 14px;
            border: 1px solid #ddd;
            border-radius: 10px;
            font-size: 16px;
            background: transparent;
            outline: none;
            transition: 0.3s;
        }

        .form-input:focus, .form-textarea:focus {
            border-color: #7c8b38;
            box-shadow: 0 0 8px rgba(124,139,56,0.3);
        }

        .form-label {
            position: absolute;
            top: 14px;
            left: 14px;
            color: #888;
            font-size: 15px;
            transition: 0.3s;
            pointer-events: none;
        }

        .form-input:focus + .form-label,
        .form-input:not(:placeholder-shown) + .form-label,
        .form-textarea:focus + .form-label,
        .form-textarea:not(:placeholder-shown) + .form-label {
            top: -8px;
            left: 12px;
            font-size: 13px;
            background: #fff;
            padding: 0 5px;
            color: #7c8b38;
        }

        .form-textarea {
            height: 140px;
            resize: none;
        }

        /* Submit Button */
        .submit-btn {
            background: linear-gradient(135deg, #7c8b38, #a0b859);
            color: #fff;
            border: none;
            padding: 16px 30px;
            font-size: 18px;
            border-radius: 12px;
            cursor: pointer;
            transition: 0.3s ease;
            width: 100%;
            font-weight: 600;
            letter-spacing: 0.5px;
        }

        .submit-btn:hover {
            background: linear-gradient(135deg, #6b7a32, #8ea84d);
            transform: scale(1.02);
        }

        /* ===== MAP ===== */
        .map-section {
            margin-top: 70px;
            text-align: center;
        }

        .map-section h2 {
            font-size: 28px;
            margin-bottom: 15px;
            color: #2c3e50;
        }

        .map-section p {
            font-size: 16px;
            color: #555;
            margin-bottom: 25px;
        }

        .map-section iframe {
            border-radius: 15px;
            width: 100%;
            height: 450px;
            box-shadow: 0 12px 30px rgba(0,0,0,0.15);
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- HERO SECTION -->
    <section class="contact-banner">
        <div class="contact-content">
            <h1>Contact Us</h1>
            <p>Have questions or want to plan your event? <br />We’d love to hear from you – connect with us today!</p>
        </div>
    </section>

    <!-- CONTACT SECTION -->
    <section class="contact-section">
        <div class="contact-container">
            
            <div class="contact-info">
                <h2>Get in Touch</h2>
                <div class="info-item">
                    <div class="info-icon"><i class="fa-solid fa-location-dot"></i></div>
                    Hidden Valley Resort, Ahmedabad-Mehmadabad Highway, Gujarat
                </div>
                <div class="info-item">
                    <div class="info-icon"><i class="fa-solid fa-phone"></i></div>
                    +91 98765 43210
                </div>
                <div class="info-item">
                    <div class="info-icon"><i class="fa-solid fa-envelope"></i></div>
                    info@hiddenvalley.com
                </div>
                <div class="info-item">
                    <div class="info-icon"><i class="fa-solid fa-clock"></i></div>
                    Mon – Sun, 9:00 AM – 10:00 PM
                </div>
            </div>

            <div class="contact-form">
                <h2>Send a Message</h2>
                <div class="form-group">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-input" placeholder=" "></asp:TextBox>
                    <label class="form-label">Your Name</label>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-input" placeholder=" "></asp:TextBox>
                    <label class="form-label">Your Email</label>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-input" placeholder=" "></asp:TextBox>
                    <label class="form-label">Your Phone</label>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtMessage" runat="server" CssClass="form-textarea" TextMode="MultiLine" placeholder=" "></asp:TextBox>
                    <label class="form-label">Your Message</label>
                </div>
                <asp:Button ID="btnSubmit" runat="server" CssClass="submit-btn" Text="Send Message" OnClick="btnSubmit_Click" />
            </div>
        </div>

        <div class="map-section">
            <h2>Find Us Here</h2>
            <p>We’re located in the heart of Gujarat, easy to reach from Ahmedabad.</p>
            <iframe 
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3682935.302384662!2d68.094!3d22.2587!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3959cb2dfb08f5ad%3A0x9e8d84b7f9cce0c4!2sGujarat!5e0!3m2!1sen!2sin!4v1694953000000!5m2!1sen!2sin"
              allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
            </iframe>
        </div>
    </section>
</asp:Content>

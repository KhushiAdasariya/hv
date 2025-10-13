<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="dinning.aspx.cs" Inherits="hv.User.dinning" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Hidden Valley - Dinning
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
    /* Hero Section */
.hero-section {
    position: relative;
    height: 70vh;
    background: url('../img/restaurant6.jpg') no-repeat center/cover;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    color: white;
    margin: 40px;
}

.hero-section .overlay {
    background: rgba(0, 0, 0, 0.5);
    padding: 50px;
    max-width: 800px;
}

.hero-section h1 {
    font-size: 52px;
    margin-bottom: 15px;
    letter-spacing: 3px;
    text-transform: uppercase;
}

.hero-section p {
    font-size: 20px;
    line-height: 1.6;
}

/* About Dining Section */
.dining-about {
    position: relative;
    min-height: 70vh;
    background: url('../img/restaurant.jpg') no-repeat center center/cover;
    display: flex;
    align-items: flex-start;
    padding: 60px 40px;
    color: #222;
    font-family: Arial, sans-serif;
}

.dining-about .content {
    background: rgba(255, 255, 255, 0.9);
    padding: 40px;
    max-width: 600px;
    text-align: left;
    box-sizing: border-box;
}

.dining-about h2 {
    font-weight: 700;
    font-size: 38px;
    margin-bottom: 20px;
}

.dining-about p {
    font-size: 16px;
    line-height: 1.7;
    margin-bottom: 20px;
}

/* Menu Section */
.menu-section {
    padding: 60px 20px;
    max-width: 900px;
    margin: auto;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    color: #333;
}

.menu-section h2 {
    text-align: center;
    font-size: 36px;
    margin-bottom: 40px;
    letter-spacing: 2px;
    font-weight: 700;
}

.menu-section h3 {
    font-size: 28px;
    border-bottom: 2px solid #888;
    padding-bottom: 8px;
    margin-bottom: 20px;
}

.menu-item {
    display: flex;
    justify-content: space-between;
    margin-bottom: 15px;
}

.menu-item strong {
    font-size: 18px;
}

.menu-item p {
    margin: 5px 0 0;
    font-size: 14px;
    color: #666;
}

.menu-item .price {
    font-weight: 600;
    font-size: 16px;
}

/* Restaurant Gallery */
.restaurant-gallery {
    max-width: 1000px;
    margin: 60px auto;
    padding: 0 20px;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.restaurant-gallery h2 {
    text-align: center;
    font-size: 42px;
    margin-bottom: 50px;
    color: #2c3e50;
    font-weight: 700;
}

.restaurant-gallery .grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 25px;
}

.restaurant-gallery img {
    width: 100%;
    height: 300px;
    object-fit: cover;
    transition: transform 0.4s ease;
    cursor: pointer;
}

.restaurant-gallery div:hover img {
    transform: scale(1.1);
}

/* Food Strip Section */
.food-strip {
    width: 100vw;
    margin: 60px 0;
    font-family: Arial, sans-serif;
}

.food-strip h2 {
    text-align: center;
    font-size: 42px;
    margin-bottom: 40px;
    color: #333;
    font-weight: 700;
}

.food-strip .row {
    display: flex;
    width: 100%;
}

.food-strip img {
    width: 100%;
    height: 160px;
    object-fit: cover;
}
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero Section -->
    <section class="hero-section">
        <div class="overlay">
            <h1>Fine Dining</h1>
            <p>Experience gourmet cuisine with multiple dining options, from buffets to international delicacies.</p>
        </div>
    </section>

    <!-- Dining About -->
    <section class="dining-about">
        <div class="content">
            <h2>DINNING</h2>
            <p>Discover a dining experience like no other at The Peacock, where flavors from around the world come together in perfect harmony...</p>
            <p>Whether you're craving a gourmet buffet, wood-fired pizzas straight from the oven, or authentic international cuisine...</p>
            <p>Perfect for romantic dinners, family gatherings, or casual lunches, The Peacock offers an unforgettable atmosphere...</p>
        </div>
    </section>

    <!-- Menu Section -->
    <section class="menu-section">
        <h2>Our Menu</h2>
        <div>
            <h3>Starters</h3>
            <div class="menu-item">
                <div>
                    <strong>Tomato Basil Soup</strong>
                    <p>Fresh tomatoes blended with basil and cream.</p>
                </div>
                <div class="price">₹150</div>
            </div>
            <div class="menu-item">
                <div>
                    <strong>Garlic Bread</strong>
                    <p>Toasted bread with garlic butter and herbs.</p>
                </div>
                <div class="price">₹120</div>
            </div>
        </div>

        <div>
            <h3>Main Course</h3>
            <div class="menu-item">
                <div>
                    <strong>Wood-Fired Margherita Pizza</strong>
                    <p>Classic pizza topped with fresh mozzarella and basil.</p>
                </div>
                <div class="price">₹450</div>
            </div>
            <div class="menu-item">
                <div>
                    <strong>Grilled Chicken with Herbs</strong>
                    <p>Tender chicken marinated and grilled to perfection.</p>
                </div>
                <div class="price">₹550</div>
            </div>
        </div>

        <div>
            <h3>Desserts</h3>
            <div class="menu-item">
                <div>
                    <strong>Chocolate Lava Cake</strong>
                    <p>Warm chocolate cake with molten center.</p>
                </div>
                <div class="price">₹250</div>
            </div>
        </div>
    </section>

    <!-- Restaurant Gallery -->
    <section class="restaurant-gallery">
        <h2>The Restaurant</h2>
        <div class="grid">
            <div><img src="../img/restaurant2.jpg" alt="Photo 1"></div>
            <div><img src="../img/restaurant3.jpg" alt="Photo 2"></div>
            <div><img src="../img/restaurant4.jpg" alt="Photo 3"></div>
            <div><img src="../img/restaurant5.jpg" alt="Photo 4"></div>
        </div>
    </section>

    <!-- Food Strip -->
    <section class="food-strip">
        <h2>Food</h2>
        <div class="row">
            <div><img src="../img/food1.jpg" alt="Food 1"></div>
            <div><img src="../img/food2.jpg" alt="Food 2"></div>
            <div><img src="../img/food3.jpg" alt="Food 3"></div>
            <div><img src="../img/food4.jpg" alt="Food 4"></div>
            <div><img src="../img/food5.jpg" alt="Food 5"></div>
            <div><img src="../img/food6.jpg" alt="Food 6"></div>
            <div><img src="../img/food7.jpg" alt="Food 7"></div>
        </div>
    </section>

    <!-- External CSS -->
    <link rel="stylesheet" href="css/dining.css" />
</asp:Content>

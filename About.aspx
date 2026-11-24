<%@ Page Title="About Us - Hlangalezwe Dental Clinic" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Hlangalezwe_Dental_Clinic.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- ABOUT US PAGE -->
    <section class="about-page py-5" style="background-color: #f4f7f9;">
        <div class="container">
            <h1 class="text-center mb-4" style="color: #0097a7; font-weight: 700;">About Hlangalezwe Dental Clinic</h1>

            <div class="row align-items-center mb-5">
                <div class="col-md-6">
                    <img src="Content/Images/dental-team.jpg" alt="Dental Team" class="img-fluid rounded shadow-sm">
                </div>
                <div class="col-md-6">
                    <p style="font-size: 1.1rem; line-height: 1.7;">
                        Hlangalezwe Dental Clinic was established with the mission of making quality dental care 
                        accessible and affordable to everyone. With years of experience and a passion for oral health, 
                        our team ensures that every patient feels comfortable and confident during their visit.
                    </p>
                    <p style="font-size: 1.1rem; line-height: 1.7;">
                        Our clinic is equipped with modern dental technology, ensuring safe and effective treatments. 
                        From routine cleanings to advanced procedures, we provide a full range of services tailored to your needs.
                    </p>
                </div>
            </div>

            <!-- Our Values -->
            <h2 class="text-center mb-4" style="color: #0097a7; font-weight: 600;">Our Core Values</h2>
            <div class="row text-center g-4">
                <div class="col-md-4">
                    <div class="value-card p-4 shadow-sm rounded bg-white">
                        <div style="font-size: 50px; color: #00bcd4;">❤️</div>
                        <h5 class="mt-3 mb-2" style="color: #0097a7; font-weight: 600;">Compassionate Care</h5>
                        <p>We treat every patient like family, ensuring comfort and trust at every visit.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="value-card p-4 shadow-sm rounded bg-white">
                        <div style="font-size: 50px; color: #00bcd4;">🏆</div>
                        <h5 class="mt-3 mb-2" style="color: #0097a7; font-weight: 600;">Excellence</h5>
                        <p>Delivering high-quality dental services with professionalism and dedication.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="value-card p-4 shadow-sm rounded bg-white">
                        <div style="font-size: 50px; color: #00bcd4;">💡</div>
                        <h5 class="mt-3 mb-2" style="color: #0097a7; font-weight: 600;">Innovation</h5>
                        <p>Using modern technology for safe, efficient, and effective treatments.</p>
                    </div>
                </div>
            </div>

            <div class="text-center mt-5">
                <p style="font-size: 1.1rem; line-height: 1.7;">
                    Whether you need preventive care, cosmetic improvements, or emergency treatment, 
                    Hlangalezwe Dental Clinic is here to serve you with dedication and expertise.
                </p>
                <a href="/Contact" class="btn btn-lg btn-primary mt-3">Book an Appointment</a>
            </div>
        </div>
    </section>

    <style>
        .value-card {
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .value-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
        }
    </style>
</asp:Content>

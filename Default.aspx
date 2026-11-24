<%@ Page Title="Home - Hlangalezwe Dental Clinic" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Hlangalezwe_Dental_Clinic._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- HERO SECTION -->
    <section class="hero position-relative d-flex align-items-center justify-content-center" style="height: 90vh; background: url('Content/Images/120dd1e9-e523-44ae-ae57-f0bd5c8c494c.png') center/cover no-repeat;">
        <!-- Overlay -->
        <div class="overlay position-absolute w-100 h-100" style="background: rgba(0,0,0,0.4); top:0; left:0;"></div>

        <!-- Hero Text -->
        <div class="text-center text-white position-relative" style="z-index: 2;">
            <h1 class="display-4 fw-bold mb-3" style="color: #ffffff;">Welcome to Hlangalezwe Dental Care</h1>
            <p class="lead mb-4" style="color: #e0f7fa;">Bright Smiles. Healthy Lives.</p>
            <a href="/Contact" class="btn btn-primary btn-lg me-3">Book Now</a>
            <a href="/About" class="btn btn-outline-light btn-lg">Learn More</a>
        </div>
    </section>

    <!-- SERVICES SUMMARY -->
    <section class="services-summary py-5" style="background-color: #f4f7f9;">
        <div class="container">
            <h2 class="text-center mb-5" style="color: #0097a7; font-weight: 700;">Our Services</h2>
            <div class="row g-4">

                <!-- Teeth Cleaning -->
                <div class="col-md-4">
                    <div class="card h-100 text-center shadow-sm border-0 service-card">
                        <div class="card-body">
                            <div class="service-icon mb-3" style="font-size: 50px; color: #00bcd4;">🪥</div>
                            <h5 class="card-title mb-3">Teeth Cleaning</h5>
                            <p class="card-text">Standard dental cleaning to keep your smile healthy and bright.</p>
                        </div>
                    </div>
                </div>

                <!-- Whitening & Veneers -->
                <div class="col-md-4">
                    <div class="card h-100 text-center shadow-sm border-0 service-card">
                        <div class="card-body">
                            <div class="service-icon mb-3" style="font-size: 50px; color: #00bcd4;">😁</div>
                            <h5 class="card-title mb-3">Whitening & Veneers</h5>
                            <p class="card-text">In-office and take-home whitening, plus porcelain and composite veneers for a perfect smile.</p>
                        </div>
                    </div>
                </div>

                <!-- Restorative Treatments -->
                <div class="col-md-4">
                    <div class="card h-100 text-center shadow-sm border-0 service-card">
                        <div class="card-body">
                            <div class="service-icon mb-3" style="font-size: 50px; color: #00bcd4;">🦷</div>
                            <h5 class="card-title mb-3">Restorative Treatments</h5>
                            <p class="card-text">Root canals, crowns, and implants to restore function and appearance of your teeth.</p>
                        </div>
                    </div>
                </div>

            </div>

            <!-- CTA Button -->
            <div class="text-center mt-4">
                <a href="/Services" class="btn btn-primary btn-lg">View All Services</a>
            </div>
        </div>
    </section>

    <!-- WHY CHOOSE US -->
    <section class="why-choose py-5" style="background-color: #ffffff;">
        <div class="container text-center">
            <h2 class="mb-4" style="color: #0097a7; font-weight: 700;">Why Choose Hlangalezwe Dental Clinic?</h2>
            <p class="lead mb-3" style="max-width: 700px; margin: 0 auto; font-size: 1.2rem; color: #333;">
                We believe that every smile deserves care that’s compassionate, professional, and affordable.  
                Our clinic combines modern technology with a warm, patient-focused approach.  
                Whether it’s routine cleaning or advanced dental work — we treat you like family.
            </p>
        </div>
    </section>

    <style>
        /* HERO TEXT */
        .hero h1 {
            text-shadow: 2px 2px 8px rgba(0,0,0,0.6);
        }
        .hero p {
            text-shadow: 1px 1px 6px rgba(0,0,0,0.5);
        }

        /* SERVICE CARDS */
        .service-card {
            transition: transform 0.3s, box-shadow 0.3s;
            border-radius: 12px;
        }
        .service-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
        }
        .service-icon {
            transition: transform 0.3s;
        }
        .service-card:hover .service-icon {
            transform: scale(1.2);
        }
        .card-title {
            color: #0097a7;
            font-weight: 600;
        }

        /* BUTTONS */
        .btn-primary {
            background-color: #00bcd4;
            border: none;
            transition: 0.3s;
        }
        .btn-primary:hover {
            background-color: #0097a7;
        }
        .btn-outline-light {
            color: #ffffff;
            border-color: #ffffff;
            transition: 0.3s;
        }
        .btn-outline-light:hover {
            color: #00bcd4;
            background-color: #ffffff;
        }

        @media (max-width: 768px) {
            .hero {
                height: 70vh;
            }
            .hero h1 {
                font-size: 2rem;
            }
            .hero p {
                font-size: 1rem;
            }
        }
    </style>

</asp:Content>

<%@ Page Title="Contact Us - Hlangalezwe Dental Clinic" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Hlangalezwe_Dental_Clinic.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- CONTACT PAGE -->
    <section class="contact-page py-5" style="background-color: #f4f7f9;">
        <div class="container">
            <h1 class="text-center mb-5" style="color: #0097a7; font-weight: 700;">Contact Us</h1>

            <div class="row g-4">
                <!-- Contact Details -->
                <div class="col-md-5">
                    <div class="contact-card p-4 shadow-sm rounded bg-white mb-4">
                        <h5 style="color: #0097a7; font-weight: 600;">Address</h5>
                        <p>Umzinyathi 071845, Kwaseme Bridge, Inanda 4310</p>
                    </div>
                    <div class="contact-card p-4 shadow-sm rounded bg-white mb-4">
                        <h5 style="color: #0097a7; font-weight: 600;">Phone</h5>
                        <p>+27 83 579 2367 (Calls Only)<br />+27 82 418 9205 (WhatsApp & Calls)</p>
                    </div>
                    <div class="contact-card p-4 shadow-sm rounded bg-white mb-4">
                        <h5 style="color: #0097a7; font-weight: 600;">Email</h5>
                        <p>mthethwafanele02@gmail.com</p>
                    </div>
                    <div class="contact-card p-4 shadow-sm rounded bg-white mb-4">
                        <h5 style="color: #0097a7; font-weight: 600;">Social Media</h5>
                        <p>Facebook: Hlangalezwe Dental Care</p>
                    </div>
                </div>

                <!-- Contact Form -->
                <div class="col-md-7">
                    <div class="card shadow-sm rounded bg-white p-4">
                        <h5 style="color: #0097a7; font-weight: 600; margin-bottom: 20px;">Send us a message</h5>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control mb-3" Placeholder="Your Name"></asp:TextBox>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-3" Placeholder="Your Email"></asp:TextBox>
                        <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control mb-3" TextMode="MultiLine" Rows="5" Placeholder="Your Message"></asp:TextBox>
                        <asp:Button ID="btnSend" runat="server" CssClass="btn btn-primary" Text="Send Message" OnClick="btnSend_Click" />
                    </div>
                </div>
            </div>

            <!-- Optional Map -->
            <div class="mt-5">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3309.676123456789!2d31.037123!3d-29.647123!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1ef7a1b2c4abcd%3A0x1234567890abcdef!2sHlangalezwe%20Dental%20Clinic!5e0!3m2!1sen!2sza!4v1690000000000" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </section>

    <style>
        .contact-card {
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .contact-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
        }
        .form-control {
            border-radius: 8px;
        }
        .btn-primary {
            background-color: #0097a7;
            border: none;
            padding: 10px 25px;
            border-radius: 25px;
            font-weight: 500;
            transition: 0.3s;
        }
        .btn-primary:hover {
            background-color: #007d85;
        }
    </style>
</asp:Content>

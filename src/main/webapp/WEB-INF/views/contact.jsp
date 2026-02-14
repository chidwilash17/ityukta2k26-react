<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Contact ITYUKTA 2K26 team for any queries or support">
        <title>Contact Us - ITYUKTA 2K26</title>

        <!-- Google Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;500;600;700;800;900&family=Outfit:wght@300;400;500;600;700;800&display=swap"
            rel="stylesheet">

        <!-- Stylesheets -->
        <link rel="stylesheet" href="css/style.css">

        <style>
            .contact-page {
                padding: 140px 0 80px;
            }

            .success-message {
                background: rgba(48, 209, 88, 0.15);
                border: 1px solid var(--neon-green);
                color: var(--neon-green);
                padding: 24px;
                border-radius: 16px;
                margin-bottom: 32px;
                text-align: center;
            }

            .success-message h3 {
                margin-bottom: 8px;
                font-size: 1.25rem;
            }

            .success-message p {
                opacity: 0.9;
            }

            .success-message .ticket-id {
                font-family: var(--font-display);
                font-size: 1.5rem;
                margin-top: 12px;
            }

            .error-alert {
                background: rgba(255, 107, 157, 0.15);
                border: 1px solid var(--neon-pink);
                color: var(--neon-pink);
                padding: 16px 20px;
                border-radius: 12px;
                margin-bottom: 24px;
                display: flex;
                align-items: center;
                gap: 12px;
            }

            .map-container {
                margin-top: 64px;
                border-radius: 24px;
                overflow: hidden;
                height: 400px;
                background: var(--bg-glass);
                border: 1px solid var(--border-glass);
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .map-placeholder {
                text-align: center;
                color: var(--text-muted);
            }

            .map-placeholder span {
                font-size: 4rem;
                display: block;
                margin-bottom: 16px;
            }

            .faq-section {
                margin-top: 80px;
            }

            .faq-grid {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(400px, 1fr));
                gap: 24px;
            }

            .faq-item {
                background: var(--bg-glass);
                border: 1px solid var(--border-glass);
                border-radius: 16px;
                padding: 24px;
                backdrop-filter: blur(10px);
            }

            .faq-item h4 {
                font-size: 1.1rem;
                margin-bottom: 12px;
                display: flex;
                align-items: center;
                gap: 12px;
            }

            .faq-item h4 span {
                color: var(--neon-purple);
            }

            .faq-item p {
                color: var(--text-secondary);
                font-size: 0.95rem;
                line-height: 1.7;
            }
        </style>
    </head>

    <body>
        <!-- Background Animation -->
        <div class="bg-animation"></div>
        <div class="floating-orb orb-1"></div>
        <div class="floating-orb orb-2"></div>

        <!-- Navigation -->
        <nav class="navbar scrolled" id="navbar">
            <div class="nav-container">
                <a href="index.jsp" class="nav-logo">
                    <div class="nav-logo-icon">IT</div>
                    <span class="nav-logo-text">ITYUKTA 2K26</span>
                </a>

                <ul class="nav-menu" id="navMenu">
                    <li><a href="index.jsp#home" class="nav-link">Home</a></li>
                    <li><a href="index.jsp#about" class="nav-link">About</a></li>
                    <li><a href="events" class="nav-link">Events</a></li>
                    <li><a href="index.jsp#schedule" class="nav-link">Schedule</a></li>
                    <li><a href="register" class="nav-link">Register</a></li>
                    <li><a href="contact" class="nav-link active">Contact</a></li>
                    <li><a href="register" class="nav-link nav-cta">Register Now</a></li>
                </ul>

                <button class="nav-toggle" id="navToggle" aria-label="Toggle navigation">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
            </div>
        </nav>

        <!-- Contact Section -->
        <section class="contact-page">
            <div class="container">
                <div class="section-header">
                    <div class="section-badge">📞 Get in Touch</div>
                    <h1 class="section-title">Contact <span class="gradient-text">Us</span></h1>
                    <p class="section-description">
                        Have questions? We're here to help. Reach out to us anytime!
                    </p>
                </div>

                <div class="contact-grid">
                    <div class="contact-info">
                        <div class="contact-card">
                            <div class="contact-card-icon">📍</div>
                            <div class="contact-card-content">
                                <h4>Venue</h4>
                                <p>JNTU-GV College of Engineering<br>Vizianagaram, Andhra Pradesh<br>PIN: 535003</p>
                            </div>
                        </div>

                        <div class="contact-card">
                            <div class="contact-card-icon">📧</div>
                            <div class="contact-card-content">
                                <h4>Email Us</h4>
                                <p><a href="mailto:ityukta2k26@jntugvcev.in">ityukta2k26@jntugvcev.in</a><br>
                                    <a href="mailto:hod.it@jntugvcev.in">hod.it@jntugvcev.in</a>
                                </p>
                            </div>
                        </div>

                        <div class="contact-card">
                            <div class="contact-card-icon">📱</div>
                            <div class="contact-card-content">
                                <h4>Call Us</h4>
                                <p>+91 98765 43210 (Student Coordinator)<br>+91 87654 32109 (Faculty Coordinator)</p>
                            </div>
                        </div>

                        <div class="contact-social">
                            <a href="https://instagram.com/ityukta_2k26" class="social-link" title="Instagram">📸</a>
                            <a href="#" class="social-link" title="Twitter">🐦</a>
                            <a href="#" class="social-link" title="LinkedIn">💼</a>
                            <a href="#" class="social-link" title="YouTube">▶️</a>
                        </div>
                    </div>

                    <div class="contact-form-wrapper">
                        <h3>Send us a Message</h3>

                        <% if (request.getAttribute("success") !=null && (Boolean) request.getAttribute("success")) { %>
                            <div class="success-message">
                                <h3>✓ Message Sent Successfully!</h3>
                                <p>Thank you, <%= request.getAttribute("submittedName") %>! We'll get back to you within
                                        24 hours.</p>
                                <div class="ticket-id">Ticket ID: <%= request.getAttribute("ticketId") %>
                                </div>
                            </div>
                            <% } %>

                                <% if (request.getAttribute("error") !=null) { %>
                                    <div class="error-alert">
                                        <span>⚠</span>
                                        <span>
                                            <%= request.getAttribute("error") %>
                                        </span>
                                    </div>
                                    <% } %>

                                        <form action="contact" method="POST" id="contactForm">
                                            <div class="form-row">
                                                <div class="form-group">
                                                    <label for="name">Your Name</label>
                                                    <input type="text" id="name" name="name" class="form-control"
                                                        placeholder="John Doe" value="<%= request.getAttribute(" name")
                                                        !=null ? request.getAttribute("name") : "" %>"
                                                    required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="email">Email Address</label>
                                                    <input type="email" id="email" name="email" class="form-control"
                                                        placeholder="john@example.com" value="<%= request.getAttribute("
                                                        email") !=null ? request.getAttribute("email") : "" %>"
                                                    required>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="subject">Subject</label>
                                                <input type="text" id="subject" name="subject" class="form-control"
                                                    placeholder="How can we help?" value="<%= request.getAttribute("
                                                    subject") !=null ? request.getAttribute("subject") : "" %>"
                                                required>
                                            </div>
                                            <div class="form-group">
                                                <label for="message">Message</label>
                                                <textarea id="message" name="message" class="form-control"
                                                    placeholder="Write your message here..."
                                                    required><%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %></textarea>
                                            </div>
                                            <button type="submit" class="btn btn-primary">
                                                Send Message
                                                <span class="btn-icon">→</span>
                                            </button>
                                        </form>
                    </div>
                </div>

                <!-- Map Placeholder -->
                <div class="map-container">
                    <div class="map-placeholder">
                        <span>🗺️</span>
                        <p>JNTU-GV College of Engineering, Vizianagaram</p>
                        <p style="font-size: 0.9rem;">Interactive map coming soon</p>
                    </div>
                </div>

                <!-- FAQ Section -->
                <div class="faq-section">
                    <div class="section-header">
                        <h2 class="section-title">Frequently Asked <span class="gradient-text">Questions</span></h2>
                    </div>

                    <div class="faq-grid">
                        <div class="faq-item">
                            <h4><span>❓</span> How do I register for ITYUKTA 2K26?</h4>
                            <p>Click on the "Register Now" button, select your pass type, fill in your details, and
                                complete the payment. You'll receive a confirmation email with your registration ID.</p>
                        </div>

                        <div class="faq-item">
                            <h4><span>❓</span> Can I register for individual events later?</h4>
                            <p>Yes! After completing your general registration, you can register for individual events.
                                However, we recommend registering early as seats are limited.</p>
                        </div>

                        <div class="faq-item">
                            <h4><span>❓</span> Is accommodation provided?</h4>
                            <p>Accommodation is included only with the Premium Pass. For Day Pass and Full Pass holders,
                                accommodation can be arranged at an additional cost.</p>
                        </div>

                        <div class="faq-item">
                            <h4><span>❓</span> What should I bring to the event?</h4>
                            <p>Carry a valid college ID, your registration confirmation (digital or printed), and a
                                laptop if you're participating in coding events or workshops.</p>
                        </div>

                        <div class="faq-item">
                            <h4><span>❓</span> Is there a refund policy?</h4>
                            <p>Full refunds are available up to 7 days before the event. After that, 50% refund is
                                applicable. No refunds within 48 hours of the event.</p>
                        </div>

                        <div class="faq-item">
                            <h4><span>❓</span> How can I become a sponsor?</h4>
                            <p>We welcome sponsors! Please email us at ityukta2k26@jntugvcev.in with subject
                                "Sponsorship Inquiry" for our sponsorship packages.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="footer">
            <div class="container">
                <div class="footer-bottom">
                    <p class="footer-copyright">
                        © 2026 ITYUKTA. Made with ❤️ by <a href="#">IT Department, JNTU-GV</a>
                    </p>
                    <div class="footer-social">
                        <a href="#" class="social-link" title="Instagram">📸</a>
                        <a href="#" class="social-link" title="Twitter">🐦</a>
                        <a href="#" class="social-link" title="LinkedIn">💼</a>
                    </div>
                </div>
            </div>
        </footer>

        <script>
            // Mobile menu
            document.getElementById('navToggle').addEventListener('click', function () {
                document.getElementById('navMenu').classList.toggle('active');
            });
        </script>
    </body>

    </html>
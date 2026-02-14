<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Register for ITYUKTA 2K26 - National Level Technical Symposium at JNTU-GV">
        <title>Register - ITYUKTA 2K26</title>

        <!-- Google Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;500;600;700;800;900&family=Outfit:wght@300;400;500;600;700;800&display=swap"
            rel="stylesheet">

        <!-- Stylesheets -->
        <link rel="stylesheet" href="css/style.css">

        <style>
            .register-page {
                min-height: 100vh;
                padding: 120px 0 80px;
            }

            .register-container {
                max-width: 800px;
                margin: 0 auto;
            }

            .register-header {
                text-align: center;
                margin-bottom: 48px;
            }

            .register-card {
                background: var(--bg-glass);
                border: 1px solid var(--border-glass);
                border-radius: 24px;
                padding: 48px;
                backdrop-filter: blur(10px);
            }

            .pass-info {
                display: flex;
                align-items: center;
                gap: 24px;
                padding: 24px;
                background: var(--bg-secondary);
                border-radius: 16px;
                margin-bottom: 32px;
            }

            .pass-icon {
                width: 72px;
                height: 72px;
                background: var(--primary-gradient);
                border-radius: 16px;
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 2rem;
            }

            .pass-details h3 {
                font-size: 1.5rem;
                font-weight: 700;
                margin-bottom: 8px;
            }

            .pass-details p {
                color: var(--text-secondary);
                margin-bottom: 8px;
            }

            .pass-price {
                font-family: var(--font-display);
                font-size: 2rem;
                font-weight: 700;
                background: var(--primary-gradient);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                background-clip: text;
            }

            .form-section-title {
                font-size: 1.1rem;
                font-weight: 600;
                color: var(--neon-purple);
                margin: 32px 0 20px;
                padding-bottom: 12px;
                border-bottom: 1px solid var(--border-glass);
            }

            .form-section-title:first-of-type {
                margin-top: 0;
            }

            .error-message {
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

            .events-checkbox-group {
                display: grid;
                grid-template-columns: repeat(auto-fill, minminmax(200px, 1fr));
                gap: 12px;
            }

            .checkbox-item {
                display: flex;
                align-items: center;
                gap: 12px;
                padding: 14px 18px;
                background: var(--bg-secondary);
                border: 1px solid var(--border-glass);
                border-radius: 10px;
                cursor: pointer;
                transition: var(--transition-fast);
            }

            .checkbox-item:hover {
                border-color: var(--neon-purple);
            }

            .checkbox-item input[type="checkbox"] {
                width: 20px;
                height: 20px;
                accent-color: var(--neon-purple);
            }

            .checkbox-item label {
                cursor: pointer;
                flex: 1;
            }

            .checkbox-item .event-fee {
                color: var(--neon-green);
                font-weight: 600;
                font-size: 0.9rem;
            }

            .form-actions {
                display: flex;
                gap: 16px;
                margin-top: 32px;
            }

            .form-actions .btn {
                flex: 1;
            }

            .terms-checkbox {
                display: flex;
                align-items: flex-start;
                gap: 12px;
                margin-top: 24px;
                font-size: 0.9rem;
                color: var(--text-secondary);
            }

            .terms-checkbox input {
                margin-top: 4px;
                width: 18px;
                height: 18px;
                accent-color: var(--neon-purple);
            }

            .terms-checkbox a {
                color: var(--neon-purple);
                text-decoration: none;
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
                    <li><a href="index.jsp#events" class="nav-link">Events</a></li>
                    <li><a href="index.jsp#schedule" class="nav-link">Schedule</a></li>
                    <li><a href="register" class="nav-link active">Register</a></li>
                    <li><a href="index.jsp#contact" class="nav-link">Contact</a></li>
                </ul>

                <button class="nav-toggle" id="navToggle" aria-label="Toggle navigation">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
            </div>
        </nav>

        <!-- Registration Form -->
        <section class="register-page">
            <div class="container">
                <div class="register-container">
                    <div class="register-header">
                        <div class="section-badge">🎫 Registration</div>
                        <h1 class="section-title">Complete Your <span class="gradient-text">Registration</span></h1>
                        <p class="section-description">Fill in your details to secure your spot at ITYUKTA 2K26</p>
                    </div>

                    <div class="register-card">
                        <!-- Selected Pass Info -->
                        <div class="pass-info">
                            <div class="pass-icon">
                                <% String passType=(String) request.getAttribute("passType"); if
                                    ("premium".equals(passType)) { %>👑
                                    <% } else if ("day".equals(passType)) { %>⚡
                                        <% } else { %>🚀<% } %>
                            </div>
                            <div class="pass-details">
                                <h3>
                                    <%= request.getAttribute("passName") %>
                                </h3>
                                <p>
                                    <%= request.getAttribute("passDescription") %>
                                </p>
                                <div class="pass-price">₹<%= request.getAttribute("passFee") %>
                                </div>
                            </div>
                        </div>

                        <!-- Error Message -->
                        <% if (request.getAttribute("error") !=null) { %>
                            <div class="error-message">
                                <span>⚠</span>
                                <span>
                                    <%= request.getAttribute("error") %>
                                </span>
                            </div>
                            <% } %>

                                <form action="register" method="POST" id="registrationForm">
                                    <input type="hidden" name="passType" value="<%= passType %>">

                                    <h4 class="form-section-title">Personal Information</h4>

                                    <div class="form-row">
                                        <div class="form-group">
                                            <label for="name">Full Name *</label>
                                            <input type="text" id="name" name="name" class="form-control"
                                                placeholder="Enter your full name" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="email">Email Address *</label>
                                            <input type="email" id="email" name="email" class="form-control"
                                                placeholder="your.email@example.com" required>
                                        </div>
                                    </div>

                                    <div class="form-row">
                                        <div class="form-group">
                                            <label for="phone">Phone Number *</label>
                                            <input type="tel" id="phone" name="phone" class="form-control"
                                                placeholder="10-digit mobile number" maxlength="10" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="gender">Gender</label>
                                            <select id="gender" name="gender" class="form-control">
                                                <option value="">Select Gender</option>
                                                <option value="male">Male</option>
                                                <option value="female">Female</option>
                                                <option value="other">Other</option>
                                            </select>
                                        </div>
                                    </div>

                                    <h4 class="form-section-title">Academic Information</h4>

                                    <div class="form-group">
                                        <label for="college">College/University *</label>
                                        <input type="text" id="college" name="college" class="form-control"
                                            placeholder="Enter your college name" required>
                                    </div>

                                    <div class="form-row">
                                        <div class="form-group">
                                            <label for="branch">Branch/Department *</label>
                                            <select id="branch" name="branch" class="form-control" required>
                                                <option value="">Select Branch</option>
                                                <option value="CSE">Computer Science Engineering</option>
                                                <option value="IT">Information Technology</option>
                                                <option value="ECE">Electronics & Communication</option>
                                                <option value="EEE">Electrical & Electronics</option>
                                                <option value="MECH">Mechanical Engineering</option>
                                                <option value="CIVIL">Civil Engineering</option>
                                                <option value="AI-ML">AI & Machine Learning</option>
                                                <option value="DS">Data Science</option>
                                                <option value="OTHER">Other</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="year">Year of Study *</label>
                                            <select id="year" name="year" class="form-control" required>
                                                <option value="">Select Year</option>
                                                <option value="1">1st Year</option>
                                                <option value="2">2nd Year</option>
                                                <option value="3">3rd Year</option>
                                                <option value="4">4th Year</option>
                                            </select>
                                        </div>
                                    </div>

                                    <h4 class="form-section-title">Events of Interest (Optional)</h4>

                                    <div class="events-checkbox-group">
                                        <div class="checkbox-item">
                                            <input type="checkbox" id="event-hackathon" name="events" value="hackathon">
                                            <label for="event-hackathon">24hr Hackathon</label>
                                            <span class="event-fee">₹400</span>
                                        </div>
                                        <div class="checkbox-item">
                                            <input type="checkbox" id="event-project" name="events"
                                                value="project-expo">
                                            <label for="event-project">Project Expo</label>
                                            <span class="event-fee">₹120</span>
                                        </div>
                                        <div class="checkbox-item">
                                            <input type="checkbox" id="event-code" name="events"
                                                value="code-crackathon">
                                            <label for="event-code">Code Crackathon</label>
                                            <span class="event-fee">₹80</span>
                                        </div>
                                        <div class="checkbox-item">
                                            <input type="checkbox" id="event-quiz" name="events"
                                                value="knowledge-knockout">
                                            <label for="event-quiz">Knowledge Knockout</label>
                                            <span class="event-fee">₹70</span>
                                        </div>
                                        <div class="checkbox-item">
                                            <input type="checkbox" id="event-ai" name="events" value="ai-workshop">
                                            <label for="event-ai">AI Workshop</label>
                                            <span class="event-fee">₹200</span>
                                        </div>
                                        <div class="checkbox-item">
                                            <input type="checkbox" id="event-fullstack" name="events"
                                                value="fullstack-workshop">
                                            <label for="event-fullstack">Full Stack Workshop</label>
                                            <span class="event-fee">₹250</span>
                                        </div>
                                    </div>

                                    <div class="terms-checkbox">
                                        <input type="checkbox" id="terms" name="terms" required>
                                        <label for="terms">
                                            I agree to the <a href="terms">Terms & Conditions</a> and
                                            <a href="privacy">Privacy Policy</a>. I confirm that all information
                                            provided is accurate.
                                        </label>
                                    </div>

                                    <div class="form-actions">
                                        <a href="index.jsp#register" class="btn btn-secondary">
                                            ← Change Pass
                                        </a>
                                        <button type="submit" class="btn btn-primary">
                                            Proceed to Payment
                                            <span class="btn-icon">→</span>
                                        </button>
                                    </div>
                                </form>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="footer" style="padding: 32px 0;">
            <div class="container">
                <div class="footer-bottom" style="border-top: none; padding-top: 0;">
                    <p class="footer-copyright">
                        © 2026 ITYUKTA. Made with ❤️ by <a href="#">IT Department, JNTU-GV</a>
                    </p>
                </div>
            </div>
        </footer>

        <script>
            // Phone number validation - only digits
            document.getElementById('phone').addEventListener('input', function (e) {
                this.value = this.value.replace(/[^0-9]/g, '');
            });

            // Mobile menu
            document.getElementById('navToggle').addEventListener('click', function () {
                document.getElementById('navMenu').classList.toggle('active');
            });
        </script>
    </body>

    </html>
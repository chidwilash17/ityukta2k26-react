<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration Successful - ITYUKTA 2K26</title>

        <!-- Google Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;500;600;700;800;900&family=Outfit:wght@300;400;500;600;700;800&display=swap"
            rel="stylesheet">

        <!-- Stylesheets -->
        <link rel="stylesheet" href="css/style.css">

        <style>
            .success-page {
                min-height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 40px 20px;
            }

            .success-card {
                background: var(--bg-glass);
                border: 1px solid var(--border-glass);
                border-radius: 32px;
                padding: 64px;
                text-align: center;
                max-width: 600px;
                backdrop-filter: blur(20px);
                animation: fadeInUp 0.6s ease;
            }

            .success-icon {
                width: 120px;
                height: 120px;
                background: linear-gradient(135deg, #30d158 0%, #34c759 100%);
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 4rem;
                margin: 0 auto 32px;
                animation: bounceIn 0.6s ease 0.2s both;
                box-shadow: 0 20px 40px rgba(48, 209, 88, 0.3);
            }

            @keyframes bounceIn {
                0% {
                    transform: scale(0);
                }

                50% {
                    transform: scale(1.1);
                }

                100% {
                    transform: scale(1);
                }
            }

            .success-card h1 {
                font-family: var(--font-display);
                font-size: 2.5rem;
                font-weight: 700;
                margin-bottom: 16px;
                background: var(--primary-gradient);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                background-clip: text;
            }

            .success-card>p {
                color: var(--text-secondary);
                font-size: 1.1rem;
                margin-bottom: 40px;
            }

            .registration-details {
                background: var(--bg-secondary);
                border-radius: 20px;
                padding: 32px;
                margin-bottom: 40px;
                text-align: left;
            }

            .detail-row {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 16px 0;
                border-bottom: 1px solid var(--border-glass);
            }

            .detail-row:last-child {
                border-bottom: none;
            }

            .detail-label {
                color: var(--text-muted);
                font-size: 0.9rem;
            }

            .detail-value {
                font-weight: 600;
                color: var(--text-primary);
            }

            .detail-value.highlight {
                font-family: var(--font-display);
                font-size: 1.25rem;
                color: var(--neon-purple);
            }

            .qr-section {
                background: white;
                border-radius: 16px;
                padding: 20px;
                display: inline-block;
                margin-bottom: 32px;
            }

            .qr-code {
                width: 150px;
                height: 150px;
                background: #f0f0f0;
                display: flex;
                align-items: center;
                justify-content: center;
                color: #333;
                font-size: 0.8rem;
            }

            .next-steps {
                text-align: left;
                margin-bottom: 40px;
            }

            .next-steps h3 {
                font-size: 1.25rem;
                margin-bottom: 20px;
                color: var(--text-primary);
            }

            .step-item {
                display: flex;
                align-items: flex-start;
                gap: 16px;
                margin-bottom: 16px;
            }

            .step-number {
                width: 32px;
                height: 32px;
                background: var(--primary-gradient);
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                font-weight: 700;
                font-size: 0.9rem;
                flex-shrink: 0;
            }

            .step-text {
                color: var(--text-secondary);
                font-size: 0.95rem;
                padding-top: 4px;
            }

            .action-buttons {
                display: flex;
                gap: 16px;
                justify-content: center;
                flex-wrap: wrap;
            }

            .confetti {
                position: fixed;
                width: 10px;
                height: 10px;
                background: var(--neon-purple);
                animation: confetti-fall 3s ease-in-out forwards;
                z-index: -1;
            }

            @keyframes confetti-fall {
                0% {
                    transform: translateY(-100vh) rotate(0deg);
                    opacity: 1;
                }

                100% {
                    transform: translateY(100vh) rotate(720deg);
                    opacity: 0;
                }
            }
        </style>
    </head>

    <body>
        <!-- Background Animation -->
        <div class="bg-animation"></div>
        <div class="floating-orb orb-1"></div>
        <div class="floating-orb orb-2"></div>

        <% String registrationId=(String) request.getAttribute("registrationId"); if (registrationId==null) {
            registrationId=(String) request.getSession().getAttribute("registrationId"); } String name=(String)
            request.getAttribute("name"); if (name==null) { name=(String)
            request.getSession().getAttribute("registrantName"); } String email=(String) request.getAttribute("email");
            if (email==null) { email=(String) request.getSession().getAttribute("registrantEmail"); } String
            passType=(String) request.getAttribute("passType"); if (passType==null) { passType=(String)
            request.getSession().getAttribute("passType"); } String passName="Full Pass" ; int passFee=250; if
            ("day".equals(passType)) { passName="Day Pass" ; passFee=150; } else if ("premium".equals(passType)) {
            passName="Premium Pass" ; passFee=600; } %>

            <!-- Success Content -->
            <section class="success-page">
                <div class="success-card">
                    <div class="success-icon">✓</div>

                    <h1>Registration Successful!</h1>
                    <p>Welcome aboard, <%= name !=null ? name : "Participant" %>! You're now registered for ITYUKTA
                            2K26.</p>

                    <div class="registration-details">
                        <div class="detail-row">
                            <span class="detail-label">Registration ID</span>
                            <span class="detail-value highlight">
                                <%= registrationId !=null ? registrationId : "ITY26-DEMO001" %>
                            </span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">Pass Type</span>
                            <span class="detail-value">
                                <%= passName %>
                            </span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">Amount</span>
                            <span class="detail-value">₹<%= passFee %></span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">Email</span>
                            <span class="detail-value">
                                <%= email !=null ? email : "your.email@example.com" %>
                            </span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">Event Date</span>
                            <span class="detail-value">Feb 23-24, 2026</span>
                        </div>
                    </div>

                    <div class="next-steps">
                        <h3>📋 Next Steps</h3>
                        <div class="step-item">
                            <div class="step-number">1</div>
                            <div class="step-text">Check your email for confirmation with QR code</div>
                        </div>
                        <div class="step-item">
                            <div class="step-number">2</div>
                            <div class="step-text">Register for individual events before the deadline</div>
                        </div>
                        <div class="step-item">
                            <div class="step-number">3</div>
                            <div class="step-text">Carry your ID proof and registration confirmation on event day</div>
                        </div>
                        <div class="step-item">
                            <div class="step-number">4</div>
                            <div class="step-text">Follow @ityukta_2k26 on Instagram for updates</div>
                        </div>
                    </div>

                    <div class="action-buttons">
                        <a href="index.jsp" class="btn btn-secondary">
                            ← Back to Home
                        </a>
                        <a href="events" class="btn btn-primary">
                            Explore Events
                            <span class="btn-icon">→</span>
                        </a>
                    </div>
                </div>
            </section>

            <script>
                // Create confetti effect
                function createConfetti() {
                    const colors = ['#667eea', '#764ba2', '#f093fb', '#00d4ff', '#30d158', '#ff6b9d'];

                    for (let i = 0; i < 50; i++) {
                        setTimeout(() => {
                            const confetti = document.createElement('div');
                            confetti.className = 'confetti';
                            confetti.style.left = Math.random() * 100 + 'vw';
                            confetti.style.background = colors[Math.floor(Math.random() * colors.length)];
                            confetti.style.width = (Math.random() * 10 + 5) + 'px';
                            confetti.style.height = confetti.style.width;
                            confetti.style.animationDuration = (Math.random() * 2 + 2) + 's';
                            confetti.style.animationDelay = Math.random() * 0.5 + 's';
                            document.body.appendChild(confetti);

                            setTimeout(() => confetti.remove(), 4000);
                        }, i * 50);
                    }
                }

                // Trigger confetti on load
                window.addEventListener('load', createConfetti);
            </script>
    </body>

    </html>
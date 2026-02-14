<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Vibe Coding Workshop - ITYUKTA 2K26</title>
        <meta name="description"
            content="Join the Vibe Coding Workshop at ITYUKTA 2K26. Experience coding with creativity, music, and collaborative challenges.">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Space+Grotesk:wght@400;500;600;700&display=swap"
            rel="stylesheet">
        <link rel="stylesheet" href="css/style.css?v=5">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <style>
            .workshop-hero {
                min-height: 50vh;
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 8rem 2rem 4rem;
                text-align: center;
                position: relative;
                overflow: hidden;
            }

            .workshop-hero::before {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background: radial-gradient(ellipse at 50% 0%, rgba(99, 102, 241, 0.15) 0%, transparent 60%),
                    radial-gradient(ellipse at 80% 50%, rgba(139, 92, 246, 0.1) 0%, transparent 50%);
                pointer-events: none;
            }

            .workshop-hero-icon {
                font-size: 5rem;
                margin-bottom: 1.5rem;
            }

            .workshop-hero-badge {
                display: inline-block;
                padding: 0.4rem 1.2rem;
                border-radius: 20px;
                background: rgba(99, 102, 241, 0.15);
                color: #818cf8;
                font-size: 0.75rem;
                font-weight: 600;
                text-transform: uppercase;
                letter-spacing: 2px;
                margin-bottom: 1.5rem;
            }

            .workshop-hero h1 {
                font-family: 'Space Grotesk', sans-serif;
                font-size: 3.5rem;
                font-weight: 800;
                color: #f1f5f9;
                background: linear-gradient(135deg, #6366f1, #a855f7, #f1f5f9);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                margin-bottom: 1rem;
            }

            .workshop-hero p {
                color: rgba(148, 163, 184, 0.9);
                font-size: 1.15rem;
                max-width: 600px;
                margin: 0 auto 2rem;
                line-height: 1.8;
            }

            .workshop-detail-section {
                padding: 4rem 2rem;
                max-width: 900px;
                margin: 0 auto;
            }

            .workshop-detail-section h2 {
                font-family: 'Space Grotesk', sans-serif;
                font-size: 2rem;
                font-weight: 700;
                color: #f1f5f9;
                margin-bottom: 1.5rem;
                position: relative;
                padding-left: 1rem;
            }

            .workshop-detail-section h2::before {
                content: '';
                position: absolute;
                left: 0;
                top: 0;
                bottom: 0;
                width: 4px;
                border-radius: 2px;
                background: linear-gradient(180deg, #6366f1, #a855f7);
            }

            .workshop-detail-section p,
            .workshop-detail-section li {
                color: rgba(148, 163, 184, 0.9);
                font-size: 1rem;
                line-height: 1.8;
            }

            .workshop-detail-section ul {
                list-style: none;
                padding: 0;
            }

            .workshop-detail-section li {
                padding: 0.6rem 0;
                padding-left: 1.5rem;
                position: relative;
            }

            .workshop-detail-section li::before {
                content: '✦';
                position: absolute;
                left: 0;
                color: #818cf8;
            }

            .info-cards {
                display: grid;
                grid-template-columns: repeat(3, 1fr);
                gap: 1.5rem;
                margin: 2rem 0;
            }

            .info-card {
                padding: 1.5rem;
                border-radius: 16px;
                background: rgba(15, 20, 45, 0.6);
                border: 1px solid rgba(99, 102, 241, 0.15);
                text-align: center;
            }

            .info-card-icon {
                font-size: 2rem;
                margin-bottom: 0.75rem;
            }

            .info-card h4 {
                color: #f1f5f9;
                font-size: 1rem;
                font-weight: 600;
                margin-bottom: 0.4rem;
            }

            .info-card p {
                color: rgba(148, 163, 184, 0.7);
                font-size: 0.85rem;
            }

            .register-cta {
                text-align: center;
                padding: 4rem 2rem;
                margin: 2rem auto;
                max-width: 700px;
                border-radius: 24px;
                background: linear-gradient(145deg, rgba(15, 20, 45, 0.8), rgba(10, 12, 30, 0.95));
                border: 1px solid rgba(99, 102, 241, 0.2);
            }

            .register-cta h2 {
                font-family: 'Space Grotesk', sans-serif;
                font-size: 2rem;
                color: #f1f5f9;
                margin-bottom: 1rem;
            }

            .register-cta p {
                color: rgba(148, 163, 184, 0.8);
                margin-bottom: 2rem;
                font-size: 1rem;
            }

            .register-cta .btn-register {
                display: inline-flex;
                align-items: center;
                gap: 0.5rem;
                padding: 0.9rem 2.5rem;
                border-radius: 12px;
                background: linear-gradient(135deg, #6366f1, #8b5cf6);
                color: white;
                font-size: 1rem;
                font-weight: 600;
                border: none;
                cursor: pointer;
                text-decoration: none;
                transition: all 0.3s ease;
            }

            .register-cta .btn-register:hover {
                transform: translateY(-3px);
                box-shadow: 0 8px 30px rgba(99, 102, 241, 0.4);
            }

            .back-link {
                display: inline-flex;
                align-items: center;
                gap: 0.5rem;
                color: #818cf8;
                text-decoration: none;
                font-weight: 500;
                padding: 1rem 0;
                transition: color 0.3s;
            }

            .back-link:hover {
                color: #a5b4fc;
            }

            @media (max-width: 768px) {
                .workshop-hero h1 {
                    font-size: 2.25rem;
                }

                .info-cards {
                    grid-template-columns: 1fr;
                }
            }
        </style>
    </head>

    <body>
        <main style="padding-top: 0;">
            <!-- Hero -->
            <div class="workshop-hero">
                <div>
                    <a href="index.jsp#workshops" class="back-link">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                            stroke-width="2.5">
                            <path d="M19 12H5M12 19l-7-7 7-7" />
                        </svg>
                        Back to Home
                    </a>
                    <div class="workshop-hero-icon">🎵</div>
                    <div class="workshop-hero-badge">Workshop</div>
                    <h1>Vibe Coding</h1>
                    <p>
                        Experience a revolutionary way of coding where creativity meets rhythm.
                        Build amazing projects in a fun, high-energy environment.
                    </p>
                </div>
            </div>

            <!-- Info Cards -->
            <div class="workshop-detail-section">
                <div class="info-cards">
                    <div class="info-card">
                        <div class="info-card-icon">📅</div>
                        <h4>Date</h4>
                        <p>March 11, 2026</p>
                    </div>
                    <div class="info-card">
                        <div class="info-card-icon">⏱️</div>
                        <h4>Duration</h4>
                        <p>3 Hours</p>
                    </div>
                    <div class="info-card">
                        <div class="info-card-icon">👥</div>
                        <h4>Mode</h4>
                        <p>In-Person</p>
                    </div>
                </div>
            </div>

            <!-- Overview -->
            <div class="workshop-detail-section">
                <h2>About the Workshop</h2>
                <p>
                    Vibe Coding is an immersive workshop where participants code along to curated beats and
                    collaborative
                    challenges. It's not just about writing code — it's about experiencing the creative flow that comes
                    when music, community, and technology collide. Whether you're a beginner or an experienced
                    developer,
                    this workshop will reshape how you think about coding.
                </p>
            </div>

            <!-- What You'll Learn -->
            <div class="workshop-detail-section">
                <h2>What You'll Learn</h2>
                <ul>
                    <li>Building creative projects under time-pressure with live coding techniques</li>
                    <li>Collaborative coding and pair programming best practices</li>
                    <li>Using AI assistants to accelerate your development workflow</li>
                    <li>Deploying projects rapidly with modern tools and frameworks</li>
                    <li>Presenting and pitching your projects effectively</li>
                </ul>
            </div>

            <!-- Who Should Attend -->
            <div class="workshop-detail-section">
                <h2>Who Should Attend</h2>
                <ul>
                    <li>Students passionate about coding and technology</li>
                    <li>Developers looking for creative and fun coding experiences</li>
                    <li>Anyone interested in collaborative project building</li>
                    <li>Beginners who want to start their coding journey in an exciting way</li>
                </ul>
            </div>

            <!-- Register CTA -->
            <div class="workshop-detail-section" id="register">
                <div class="register-cta">
                    <h2>Ready to Vibe?</h2>
                    <p>Secure your spot now and be part of the most exciting coding workshop!</p>
                    <a href="register.jsp?workshop=vibe-coding" class="btn-register">
                        Register Now
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                            stroke-width="2.5">
                            <path d="M5 12h14M12 5l7 7-7 7" />
                        </svg>
                    </a>
                </div>
            </div>
        </main>
    </body>

    </html>
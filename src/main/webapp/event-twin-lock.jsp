<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Twin Lock - ITYUKTA 2K26</title>
        <meta name="description" content="Twin Lock - A pair programming challenge at ITYUKTA 2K26.">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Space+Grotesk:wght@400;500;600;700&display=swap"
            rel="stylesheet">
        <link rel="stylesheet" href="css/style.css?v=6">
        <style>
            .event-page-hero {
                min-height: 50vh;
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 8rem 2rem 4rem;
                text-align: center;
                position: relative;
                overflow: hidden;
            }

            .event-page-hero::before {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background: radial-gradient(ellipse at 50% 0%, rgba(99, 102, 241, 0.15) 0%, transparent 60%);
                pointer-events: none;
            }

            .event-page-icon {
                font-size: 5rem;
                margin-bottom: 1.5rem;
            }

            .event-page-badge {
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

            .event-page-hero h1 {
                font-family: 'Space Grotesk', sans-serif;
                font-size: 3.5rem;
                font-weight: 800;
                background: linear-gradient(135deg, #6366f1, #a855f7, #f1f5f9);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                margin-bottom: 1rem;
            }

            .event-page-hero p {
                color: rgba(148, 163, 184, 0.9);
                font-size: 1.15rem;
                max-width: 600px;
                margin: 0 auto 2rem;
                line-height: 1.8;
            }

            .event-detail-section {
                padding: 3rem 2rem;
                max-width: 900px;
                margin: 0 auto;
            }

            .event-detail-section h2 {
                font-family: 'Space Grotesk', sans-serif;
                font-size: 1.75rem;
                font-weight: 700;
                color: #f1f5f9;
                margin-bottom: 1.5rem;
                padding-left: 1rem;
                position: relative;
            }

            .event-detail-section h2::before {
                content: '';
                position: absolute;
                left: 0;
                top: 0;
                bottom: 0;
                width: 4px;
                border-radius: 2px;
                background: linear-gradient(180deg, #6366f1, #a855f7);
            }

            .event-detail-section p,
            .event-detail-section li {
                color: rgba(148, 163, 184, 0.9);
                font-size: 1rem;
                line-height: 1.8;
            }

            .event-detail-section ul {
                list-style: none;
                padding: 0;
            }

            .event-detail-section li {
                padding: 0.5rem 0 0.5rem 1.5rem;
                position: relative;
            }

            .event-detail-section li::before {
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
                .event-page-hero h1 {
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
            <div class="event-page-hero">
                <div>
                    <a href="index.jsp#events" class="back-link"><svg width="16" height="16" viewBox="0 0 24 24"
                            fill="none" stroke="currentColor" stroke-width="2.5">
                            <path d="M19 12H5M12 19l-7-7 7-7" />
                        </svg> Back to Events</a>
                    <div class="event-page-icon">🔐</div>
                    <div class="event-page-badge">Technical Event</div>
                    <h1>Twin Lock</h1>
                    <p>A pair programming challenge where two minds must sync perfectly to unlock complex coding
                        puzzles.</p>
                </div>
            </div>
            <div class="event-detail-section">
                <div class="info-cards">
                    <div class="info-card">
                        <div class="info-card-icon">📅</div>
                        <h4>Date</h4>
                        <p>March 11, 2026</p>
                    </div>
                    <div class="info-card">
                        <div class="info-card-icon">👥</div>
                        <h4>Team Size</h4>
                        <p>Team of 2</p>
                    </div>
                    <div class="info-card">
                        <div class="info-card-icon">🏷️</div>
                        <h4>Category</h4>
                        <p>Technical</p>
                    </div>
                </div>
            </div>
            <div class="event-detail-section">
                <h2>About the Event</h2>
                <p>Twin Lock is the ultimate pair programming showdown. Two programmers share one system — one codes
                    while the other navigates. Communication, trust, and technical skill are your keys to unlocking each
                    challenge.</p>
            </div>
            <div class="event-detail-section">
                <h2>Rules & Format</h2>
                <ul>
                    <li>Teams of 2 — one driver, one navigator</li>
                    <li>Roles swap after each round</li>
                    <li>Solve coding challenges within the time limit</li>
                    <li>No external resources allowed</li>
                    <li>Fastest correct solution wins</li>
                </ul>
            </div>
            <div class="event-detail-section" id="register">
                <div class="register-cta">
                    <h2>Find Your Coding Partner!</h2>
                    <p>Register now and conquer Twin Lock together!</p>
                    <a href="register.jsp?event=twin-lock" class="btn-register">Register Now <svg width="16" height="16"
                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
                            <path d="M5 12h14M12 5l7 7-7 7" />
                        </svg></a>
                </div>
            </div>
        </main>
    </body>

    </html>
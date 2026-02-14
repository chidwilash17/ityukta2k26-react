<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Server Error - ITYUKTA 2K26</title>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;500;600;700;800;900&family=Outfit:wght@300;400;500;600;700;800&display=swap"
            rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    </head>

    <body>
        <div class="bg-animation"></div>
        <div class="floating-orb orb-1"></div>
        <div class="floating-orb orb-2"></div>

        <section
            style="min-height: 100vh; display: flex; align-items: center; justify-content: center; text-align: center; padding: 40px;">
            <div>
                <div style="font-size: 8rem; margin-bottom: 24px; animation: shake 0.5s ease-in-out infinite;">⚠️</div>
                <h1 style="font-family: var(--font-display); font-size: 6rem; font-weight: 800; margin-bottom: 16px;">
                    <span class="gradient-text">500</span>
                </h1>
                <h2 style="font-size: 1.75rem; margin-bottom: 16px;">Server Error</h2>
                <p style="color: var(--text-secondary); font-size: 1.1rem; max-width: 400px; margin: 0 auto 40px;">
                    Something went wrong on our end. Our tech team has been notified. Please try again in a moment.
                </p>
                <div style="display: flex; gap: 16px; justify-content: center; flex-wrap: wrap;">
                    <a href="${pageContext.request.contextPath}/" class="btn btn-primary">
                        ← Back to Home
                    </a>
                    <a href="${pageContext.request.contextPath}/contact" class="btn btn-secondary">
                        Contact Support
                    </a>
                </div>
            </div>
        </section>

        <style>
            @keyframes shake {

                0%,
                100% {
                    transform: translateX(0);
                }

                25% {
                    transform: translateX(-5px);
                }

                75% {
                    transform: translateX(5px);
                }
            }
        </style>
    </body>

    </html>
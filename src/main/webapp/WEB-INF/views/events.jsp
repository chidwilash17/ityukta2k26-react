<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="java.util.Map" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta name="description"
                content="Explore all technical events, workshops, and fun activities at ITYUKTA 2K26">
            <title>Events - ITYUKTA 2K26</title>

            <!-- Google Fonts -->
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link
                href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;500;600;700;800;900&family=Outfit:wght@300;400;500;600;700;800&display=swap"
                rel="stylesheet">

            <!-- Stylesheets -->
            <link rel="stylesheet" href="css/style.css">
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
                        <li><a href="events" class="nav-link active">Events</a></li>
                        <li><a href="index.jsp#schedule" class="nav-link">Schedule</a></li>
                        <li><a href="register" class="nav-link">Register</a></li>
                        <li><a href="index.jsp#contact" class="nav-link">Contact</a></li>
                        <li><a href="register" class="nav-link nav-cta">Register Now</a></li>
                    </ul>

                    <button class="nav-toggle" id="navToggle" aria-label="Toggle navigation">
                        <span></span>
                        <span></span>
                        <span></span>
                    </button>
                </div>
            </nav>

            <!-- Events Hero -->
            <section style="padding: 150px 0 80px;">
                <div class="container">
                    <div class="section-header">
                        <div class="section-badge">🎯 All Events</div>
                        <h1 class="section-title">Explore <span class="gradient-text">ITYUKTA 2K26 Events</span></h1>
                        <p class="section-description">
                            Discover a wide range of technical and non-technical events designed to challenge, inspire,
                            and entertain.
                        </p>
                    </div>

                    <div class="events-tabs">
                        <button class="event-tab active" data-filter="all">All Events</button>
                        <button class="event-tab" data-filter="technical">Technical</button>
                        <button class="event-tab" data-filter="workshop">Workshops</button>
                        <button class="event-tab" data-filter="cultural">Cultural</button>
                        <button class="event-tab" data-filter="fun">Fun Zone</button>
                    </div>

                    <% @SuppressWarnings("unchecked") Map<String, Map<String, Object>> allEvents = (Map<String,
                            Map<String, Object>>) request.getAttribute("allEvents");
                            %>

                            <div class="events-grid" id="eventsGrid">
                                <% if (allEvents !=null) { for (Map.Entry<String, Map<String, Object>> entry :
                                    allEvents.entrySet()) {
                                    String eventId = entry.getKey();
                                    Map<String, Object> event = entry.getValue();
                                        String category = (String) event.get("category");
                                        String badgeClass = "technical";

                                        if ("workshop".equals(category)) badgeClass = "workshop";
                                        else if ("cultural".equals(category)) badgeClass = "cultural";
                                        else if ("fun".equals(category)) badgeClass = "fun";
                                        %>
                                        <div class="event-card" data-category="<%= category %>">
                                            <div class="event-card-header">
                                                <div class="event-icon">
                                                    <%= event.get("icon") %>
                                                </div>
                                                <span class="event-badge <%= badgeClass %>">
                                                    <%= category.substring(0, 1).toUpperCase() + category.substring(1)
                                                        %>
                                                </span>
                                            </div>
                                            <h3>
                                                <%= event.get("name") %>
                                            </h3>
                                            <p>
                                                <%= event.get("description") %>
                                            </p>
                                            <div class="event-meta">
                                                <div class="event-meta-item">
                                                    <span class="event-meta-icon">📅</span>
                                                    <span>
                                                        <%= event.get("date") %>
                                                    </span>
                                                </div>
                                                <div class="event-meta-item">
                                                    <span class="event-meta-icon">⏱️</span>
                                                    <span>
                                                        <%= event.get("duration") %>
                                                    </span>
                                                </div>
                                                <% if (event.get("venue") !=null) { %>
                                                    <div class="event-meta-item">
                                                        <span class="event-meta-icon">📍</span>
                                                        <span>
                                                            <%= event.get("venue") %>
                                                        </span>
                                                    </div>
                                                    <% } %>
                                            </div>
                                            <div class="event-card-footer">
                                                <div class="event-price">
                                                    <% Integer fee=(Integer) event.get("fee"); if (fee !=null && fee> 0)
                                                        { %>
                                                        ₹<%= fee %> <span>/<%= event.get("teamSize") !=null ?
                                                                    event.get("teamSize").toString().contains("member")
                                                                    ? "team" : "person" : "person" %></span>
                                                            <% } else { %>
                                                                Free <span>with pass</span>
                                                                <% } %>
                                                </div>
                                                <a href="events?id=<%= eventId %>" class="event-link">
                                                    Learn More <span>→</span>
                                                </a>
                                            </div>
                                        </div>
                                        <% }} else { %>
                                            <!-- Fallback static events if servlet data not available -->
                                            <div class="event-card" data-category="technical">
                                                <div class="event-card-header">
                                                    <div class="event-icon">💻</div>
                                                    <span class="event-badge technical">Technical</span>
                                                </div>
                                                <h3>Code Crackathon</h3>
                                                <p>Test your coding skills with challenging problem sets. Crack the
                                                    code, win the crown!</p>
                                                <div class="event-meta">
                                                    <div class="event-meta-item">
                                                        <span class="event-meta-icon">📅</span>
                                                        <span>Feb 24, 2026</span>
                                                    </div>
                                                    <div class="event-meta-item">
                                                        <span class="event-meta-icon">⏱️</span>
                                                        <span>2 Hours</span>
                                                    </div>
                                                </div>
                                                <div class="event-card-footer">
                                                    <div class="event-price">₹80 <span>/person</span></div>
                                                    <a href="events?id=code-crackathon" class="event-link">
                                                        Learn More <span>→</span>
                                                    </a>
                                                </div>
                                            </div>
                                            <% } %>
                            </div>
                </div>
            </section>

            <!-- CTA Section -->
            <section style="padding: 80px 0;">
                <div class="container">
                    <div
                        style="background: var(--primary-gradient); border-radius: 24px; padding: 64px; text-align: center;">
                        <h2 style="font-family: var(--font-display); font-size: 2.5rem; margin-bottom: 16px;">Ready to
                            Participate?</h2>
                        <p
                            style="font-size: 1.1rem; opacity: 0.9; margin-bottom: 32px; max-width: 500px; margin-left: auto; margin-right: auto;">
                            Register now and secure your spot at ITYUKTA 2K26. Don't miss out on the biggest tech fest
                            of the year!
                        </p>
                        <a href="register" class="btn" style="background: white; color: #667eea;">
                            Register Now
                            <span class="btn-icon">→</span>
                        </a>
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

            <script src="js/main.js"></script>
        </body>

        </html>